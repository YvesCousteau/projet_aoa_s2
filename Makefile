CC=gcc

OFLAG1=-O1
OFLAG2=-O2
OFLAG3=-O3
OFLAG3n=-O3 -march=native

OBJS=driver.o kernel.o rdtsc.o
CFILE=driver.c kernel.c rdtsc.c

R_ANAL=analysis
SIZE=$$((1*2**10))
NB_WARMUP=31
NB_MESURE_REP=31

all:	s13

s13: 	$(CFILE)
	@echo --- Compilation ---

	@$(CC) $(OFLAG1) -D $(OPT) $(CFILE) -o s13_01
	@$(CC) $(OFLAG2) -D $(OPT)  $(CFILE) -o s13_02
	@$(CC) $(OFLAG3) -D $(OPT)  $(CFILE) -o s13_03
	@$(CC) $(OFLAG3n) -D $(OPT)  $(CFILE) -o s13_03n

maqao: s13
	@mkdir -p $(R_ANAL)
	@echo --- generating maqao file ---

	maqao oneview -R1 xp=exp_OV1 of=text -- ./s13_01 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_01.txt
	@maqao oneview -R1 xp=exp_OV2 of=text -- ./s13_02 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_02.txt
	@maqao oneview -R1 xp=exp_OV3 of=text -- ./s13_03 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03.txt
	@maqao oneview -R1 xp=exp_OV3n of=text -- ./s13_03n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03n.txt
	

analysis: maqao
	@echo --- generating diff file ---
	@diff $(R_ANAL)/resultat_01.txt $(R_ANAL)/resultat_02.txt > $(R_ANAL)/comparaison_O1-O2.txt ; sleep 0
	@diff $(R_ANAL)/resultat_01.txt $(R_ANAL)/resultat_03.txt > $(R_ANAL)/comparaison_O1-O3.txt ; sleep 0
	@diff $(R_ANAL)/resultat_01.txt $(R_ANAL)/resultat_03n.txt > $(R_ANAL)/comparaison_O1-O3n.txt ; sleep 0
	@diff $(R_ANAL)/resultat_02.txt $(R_ANAL)/resultat_03.txt > $(R_ANAL)/comparaison_O2-03.txt ; sleep 0
	@diff $(R_ANAL)/resultat_02.txt $(R_ANAL)/resultat_03n.txt > $(R_ANAL)/comparaison_O2-03n.txt ; sleep 0
	@diff $(R_ANAL)/resultat_03.txt $(R_ANAL)/resultat_03n.txt > $(R_ANAL)/comparaison_O3-03n.txt ; sleep 0
	@echo --- END generation ---


clean:
	@echo --- Clean OBJS ---
	@rm -rf $(OBJS) s13_*

cleanAnalyse:
	@echo --- Clean analyse file ---
	@rm $(R_ANAL)/*
