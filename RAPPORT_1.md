# Introduction

## Présentation du sujet
Comme dit précédemment, il ne peut y avoir que des équipes de 4 (L1, L2,
L3 et RAM) sauf si l'effectif d'un groupe de TD (G1/G2) n'est pas
multiple de 4 auquel cas il y aura soit 1 soit 2 trinômes dans ce
groupe. En d'autres termes, *le nombre d'équipes doit être minimal*.

Veuillez communiquer rapidement vos choix (de membres et de sujet) à
votre délégué(e) qui centralisera les demandes pour chacun des deux
groupes (par avance, merci à eux) dans l'ordre premier arrivé premier
servi. Opportun donc de lui communiquer un second voeu si le premier
s'avérait déjà pris.

Les sujets seront ensuite répartis entre moi (7 sujets) et mon collègue
(5 sujets). J'ai estimé qu'il n'y aurait pas plus de 11-12 équipes mais
j'ai donné 13 sujets histoire de vous laisser plus de choix. En effet,
j'ai déjà du le dire : un sujet ne peut être pris que par une et une
seule équipe.


## Fonction à optimiser :
```
  void s13 (unsigned n , const float a[n] ,const float b[n] , float c[n][n] ,int offset , double radius) {
     int i, j;

     for ( i =0; i < n ; i ++) {
       for ( j =0; j < n ; j ++) {
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

#### Répétitions du noyau
Avant la mesure :
– Pour exclure le régime transitoire
– Appelé « warmup »
– Surtout utile machine froide
Pendant la mesure :
– Pour amortir l'erreur du timer

#### Méta-répétitions pour mesurer la stabilité
– Répétitions du corps du driver
– Via un script ou une boucle dans le driver
– En toute rigueur, 31 méta-répétitions nécessaires
– Souhaité : (médiane - minimum) / minimum < 5 % = 31

#### Environnement d'exécution le plus léger possible
– Le plus simple et efficace : redémarrer en mode
failsafe, rescue... (console uniquement, pas de
réseau, mono-utilisateur)
Fixer processus sur 1 coeur (process pinning)
– taskset -c
– Appel POSIX

#### Optimisation code
- If hoisting
- loop tilling / unrolling

...


### I.2) Stratégies utilisées en commun pour améliorer la stabilité

#### Optimisation code
- If hoisting
- loop tilling / unrolling

### I.3) Méthodologie de détermination du nb de répétitions de warmup et demesure

31

## II Cache L1
### II.1) Environnement expérimental

Tableau avec lignes suivantes (ci-dessous je donne des exemples pour
vous donner une idée de ce qui est attendu => remplacez pour votre
environnement) :
   - Processeur : "Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz"
   - Génération processeur / micro-architecture : Zen 2, Ivy Bridge...
   - DVFS : driver, governor et réglages => driver=intel_pstate,
governor=performance, freq. min 3.4 GHz
   - Linux : Ubuntu 18.04
   - Virtualisation : dual-boot, live USB, WSL2 ou Virtualbox
   - Version noyau : 5.4 (au moins 2 premiers chiffres)
   - Version GCC : 7.5 (au moins 2 premiers chiffres)
   - Version AOCC ou oneAPI : oneAPI 2021.1
   - Version MAQAO : 2.12.0
   - Techno RAM (surtout utile si étude en RAM) : 2x4 Go DDR3-800
dual-channel
   - Autre : toute autre info susceptible d'impacter ou d'expliquer les
perfs

Hiérarchie de cache => sortie lstopo ou likwid-topology...

### II.2) Justification de la taille des tableaux pour que ça tienne dans le
niveau mémoire choisi

### II.3) Détermination du nombre de répétitions de warmup et de mesure
=> mesures (courbes) et valeurs retenues pour ces deux paramètres clé
Warmups: médianes de cycles/itération
Répétitions: courbes de médianes de cycles [non normalisés par
itération] ou pourcentage d'erreur (par rapport aux 20-30 cycles) ou à
la limite nous indiquer combien de cycles RDTSC a duré le nombre de
répétitions choisi (et pourquoi c'est suffisant selon eux)

II.4) Mesures des diverses variantes et analyse
gcc O2, O3 etc.
Cette partie devrait être assez grosse (car contient des captures écran
MAQAO ainsi que leur analyse)...
Explicité dans les consignes : on attend des médianes (sur 31 métas) de
cycles/itération

## III Cache L2
(CF II)

## IV Cache L3
(CF II)

## V RAM
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