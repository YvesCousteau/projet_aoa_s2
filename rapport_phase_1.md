# Introduction

## Présentation du sujet

Nous avons travaillé sur le sujet 13. 

Celui ci consiste à  

## Fonction à optimiser :

```c
  void s13 (unsigned n , const float a[n] ,const float b[n] , float c[n][n] ,int offset , double radius) {
     int i, j;

     for ( i = 0; i < n ; i ++) {
       for ( j = 0; j < n ; j ++) {
           if ( offset + j < 0 || offset + j >= n )
              continue;

           c [ i ][ offset + j ] = 0.0;

           if ( a[offset + j] < radius ) {
              c [ i ][ offset + j ] = a [ offset + j ] / b [ i ];
           }
        }
     }
  }
```

## I Méthodologie

### I.1) Justification des 5 points clés du driver (warmups, repets etc.)

De nombreux obstacles rentrent en compte quant à la précision des mesures : 

- Précision du timer
- RDTSC : précis à quelques cycles près mais biais de 20-30 cycles (amorti à partir de ~500 cycles)
- Compteurs matériels : plusieurs secondes nécessaires
- Etat initial de la machine
- Régime transitoire : C-states/DVFS, caches et prefetchers “froids”, pipeline non rempli
- Stabilité (variation d'une mesure à l'autre)
- Pollution par système et autres applis

#### Les solutions suivantes permettent de palier à ces obstacles et d'obtenir des mesures fiables et exploitables :

##### <u>Répétitions du noyau</u>

Communnément appelés "warmup" ces répétitions viennent en amont des mesures afin de préparer le système aux mesures.

Elles permettent d'exclure le régime transitoire. Elles sont d'autant plus importantes lorsque la machine est froide. 

Lors des mesures ces répétitions amortissent l'erreur du timer.

##### <u>Méta-répétitions pour mesurer la stabilité</u>

- Répétitions du corps du driver
- Via un script ou une boucle dans le driver
- En toute rigueur, 31 méta-répétitions nécessaires
- Souhaité : (médiane - minimum) / minimum < 5 % = 31

##### <u>Environnement d'exécution le plus léger possible</u>

En ayant un environnement d'exécution sain, meilleures seront les mesures. Il n'y aura pas/moins de bruit dû à d'autres processus. Il est donc préférable d'exécuter son OS en mode console ou de suspendre un maximum de processus en tache de fond.

Une autre des solutions est de choisir un coeur sur lequel exécuter les mesures (process pinning). De ce fait aucun autre processus ne pourra venir interragir avec celui-ci. (taskset -c / Appel POSIX)

#### Optimisation du code

Il existe de nombreuses méthodes afin d'optimiser le code. 

- If hoisting
- loop tilling / unrolling
- loop pilling
- loop fusion / fission
- loop interchange

### I.2) Stratégies utilisées en commun pour améliorer la stabilité

#### Optimisation code

- If hoisting
- loop tilling / unrolling

### I.3) Méthodologie de détermination du nb de répétitions de warmup et demesure

On cherche 

(médiane - minimum) / minimum < 5 % = 31

## II Analyse statique MAQAO"

 - (ce qui va donc décaler la numérotation des sections suivantes)  

- Cette section contiendra l'analyse *statique*, c'est à dire qui ne dépends pas du niveau mémoire et ne fait pas intervenir de temps/speedups => juste explication de ce qui a changé au niveau du code généré par le compilateur entre les diverses combinaisons (O2 vs O3 etc.) en terme de vecto, déroulage etc.

## III Cache L1

### III.1) Environnement expérimental

Toutes les mesures ont été effectuées sur la machine suivante.

| Type                                | Informations                              |
| ----------------------------------- | ----------------------------------------- |
| processeur                          | Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz |
| Génération du processeur            | Comet Lake                                |
| DVFS : driver, governor et réglages |                                           |
| Linux                               | Pop!_OS 20.10 x86_64                      |
| Virtualisation                      | Simple-boot                               |
| Version noyau                       |                                           |
| Version GCC                         | gcc 10.2.0                                |
| Version oneAPI                      |                                           |
| Version MAQAO                       | 2.13.0                                    |
| Techno RAM                          | 2x8 Go DDR4 3200MHz                       |

Voici les informations des différents caches de la machine.

![Drag Racing](lstopo.png)

### III.2) Justification de la taille des tableaux pour que ça tienne dans le cache

### III.3) Détermination du nombre de répétitions de warmup et de mesure

=> mesures (courbes) et valeurs retenues pour ces deux paramètres clé
Warmups: médianes de cycles/itération
Répétitions: courbes de médianes de cycles [non normalisés par
itération] ou pourcentage d'erreur (par rapport aux 20-30 cycles) ou à
la limite nous indiquer combien de cycles RDTSC a duré le nombre de
répétitions choisi (et pourquoi c'est suffisant selon eux)

### III.4) Mesures des diverses variantes et analyse

gcc O2, O3 etc.
Cette partie devrait être assez grosse (car contient des captures écran
MAQAO ainsi que leur analyse)...
Explicité dans les consignes : on attend des médianes (sur 31 métas) de
cycles/itération

La section II.4 "Mesures des diverses variantes et analyse" (qui deviendra donc III.4 pour le L1 etc.) sera alors déchargée de ce qui sera désormais dans la nouvelle section et ne gardera, en plus des mesures, que l'analyse *dynamique*, c'est à dire discussion quant aux gains ou aux pertes de perf d'une combinaison à l'autre (avec évidemment mise en perspective avec l'analyse statique).

## IV Cache L2

(CF II)

## V Cache L3

(CF II)

## VI RAM

(CF II)

Conclusion
----------

Au moins une demi-page. Discutant notamment de points
convergents/divergents entre niveaux mémoire.

Rappels :

1) vous devez justifier vos choix. Vous devez notamment expliquer
   pourquoi vous avez fait ainsi et pas autrement, et comment vous l'avez
   fait. *Egalement discuter, après gain (ou non gain) de performance, la
   différence au niveau du code généré par le compilateur*. Ex : si le code
   généré est identique (ou au préfixe AVX près s'agissant d'instructions
   scalaires : VADDSS au lieu de ADDSS), ça explique que la perf soit
   identique ou presque. Au contraire si les instructions sont désormais
   sous forme vectorielle (ou que le taux de vectorisation passe de 0 à
   plus de 90%) alors pas étonnant que la performance s'envole.

2) au sujet de la recherche des flags supplémentaires, ceux déjà inclus
   dans O2 ou O3 ne nous intéressent pas. Ex dans gcc : la vectorisation
   est activée par défaut avec O3 (en tous cas pour les versions de gcc
   auxquelles nous sommes habitués)...
