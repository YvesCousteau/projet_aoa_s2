CC=gcc
II=icx

OFLAG=-O1
OFLAG2=-O2
OFLAG3=-O3
OFLAG3n=-O3 -march=native
OFLAG3n_v4=-O3 -mfpmath=sse -march=native
OFLAG3n_v5=-O3 -msse4.2 -mavx -march=native
OFLAG3n_v6=-O3 -mfpmath=sse -msse4.2 -mavx -march=native

OFLAG_icx_O2=-O2
OFLAG_icx_O3=-O3
OFLAG_icx_mtune=-mtune=corei7 # optimize for processor cache sizes
OFLAG_icx_xhost=-O2 -xHost # SIMD for the host's architecture
OFLAG_icx_fast=-fast # -Ofast -ipo -static (static linking) -xHost
OFLAG_icx_ultimate=-c -O3 -xSSE4.2 -axAVX,CORE-AVX2


OPTFLAGS=-O3 -g -Wall
CFLAGS=-O2 -g -Wall


OBJS=s13_03n_v6.o s13_03n_v5.o s13_03n_v4.o s13_03n.o s13_03.o s13_02.o s13_01.o
CFILE=driver.c kernel.c rdtsc.c

R_ANAL=analysis
SIZE=228
NB_WARMUP=20000
NB_MESURE_REP=50


all:	s13

s13:	$(OBJS)
	$(CC) driver.c rdtsc.c s13_03n_v6.o -o s13_03n_v6
	$(CC) driver.c rdtsc.c s13_03n_v5.o -o s13_03n_v5
	$(CC) driver.c rdtsc.c s13_03n_v4.o -o s13_03n_v4
	$(CC) driver.c rdtsc.c s13_03n.o -o s13_03n
	$(CC) driver.c rdtsc.c s13_03.o -o s13_03
	$(CC) driver.c rdtsc.c s13_02.o -o s13_02
	$(CC) driver.c rdtsc.c s13_01.o -o s13_01
	# $(II) driver.c rdtsc.c s13_icx_O2.o -o s13_icx_O2
	# $(II) driver.c rdtsc.c s13_icx_O3.o -o s13_icx_O3
	# $(II) driver.c rdtsc.c s13_icx_mtune.o -o s13_icx_mtune
	# $(II) driver.c rdtsc.c s13_icx_xhost.o -o s13_icx_xhost
	# $(II) driver.c rdtsc.c s13_icx_fast.o -o s13_icx_fast
	# $(II) driver.c rdtsc.c s13_icx_ultimate.o -o s13_icx_ultimate


s13_03n_v6.o: kernel.c
	@$(CC) $(OFLAG3n_v6) -D $(OPT) -c -o $@ $<

s13_03n_v5.o: kernel.c
	@$(CC) $(OFLAG3n_v5) -D $(OPT) -c -o $@ $<

s13_03n_v4.o: kernel.c
	@$(CC) $(OFLAG3n_v4) -D $(OPT) -c -o $@ $<

s13_03n.o: kernel.c
	@$(CC) $(OFLAG3n) -D $(OPT) -c -o $@ $<


s13_03.o: kernel.c
	@$(CC) $(OFLAG3) -D $(OPT) -c -o $@ $<


s13_02.o: kernel.c
	@$(CC) $(OFLAG2) -D $(OPT) -c -o $@ $<

s13_01.o: kernel.c
	@$(CC) $(OFLAG1) -D $(OPT) -c -o $@ $<

s13_icx_O2.o: kernel.c
	@$(II) $(OFLAG_icx_O2) -D $(OPT) -c -o $@ $<

s13_icx_O3.o: kernel.c
	@$(II) $(OFLAG_icx_O3) -D $(OPT) -c -o $@ $<

s13_icx_mtune.o: kernel.c
	@$(II) $(OFLAG_icx_mtune) -D $(OPT) -c -o $@ $<


s13_icx_xhost.o: kernel.c
	@$(II) $(OFLAG_icx_xhost) -D $(OPT) -c -o $@ $<


# s13_icx_fast.o: kernel.c
# 	@$(II) $(OFLAG_icx_fast) -D $(OPT) -c -o $@ $<

s13_icx_ultimate.o: kernel.c
	@$(II) $(OFLAG_icx_ultimate) -D $(OPT) -c -o $@ $<

maqao: s13
	@mkdir -p $(R_ANAL)
	@echo --- generating maqao file ---

	@maqao oneview -R1 xp=exp_OV1 of=text -- ./s13_01 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_01.txt
	@maqao oneview -R1 xp=exp_OV2 of=text -- ./s13_02 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_02.txt
	@maqao oneview -R1 xp=exp_OV3 of=text -- ./s13_03 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03.txt
	@maqao oneview -R1 xp=exp_OV3n of=text -- ./s13_03n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03n.txt

	@maqao oneview -R1 xp=exp_OV3n_v4 of=text -- ./s13_03n_v4 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03n_v4.txt
	@maqao oneview -R1 xp=exp_OV3n_v5 of=text -- ./s13_03n_v5 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03n_v5.txt
	@maqao oneview -R1 xp=exp_OV3n_v6 of=text -- ./s13_03n_v6 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP) > $(R_ANAL)/resultat_03n_v6.txt



# analysis: maqao
# 	@echo --- generating diff file, kawalsky....analysis ---
# 	@diff $(R_ANAL)/resultat_01.txt $(R_ANAL)/resultat_02.txt > $(R_ANAL)/comparaison_O1-O2.txt ; true
# 	@diff $(R_ANAL)/resultat_01.txt $(R_ANAL)/resultat_03.txt > $(R_ANAL)/comparaison_O1-O3.txt ; true
# 	@diff $(R_ANAL)/resultat_01.txt $(R_ANAL)/resultat_03n.txt > $(R_ANAL)/comparaison_O1-O3n.txt ; true
# 	@diff $(R_ANAL)/resultat_02.txt $(R_ANAL)/resultat_03.txt > $(R_ANAL)/comparaison_O2-03.txt ; true
# 	@diff $(R_ANAL)/resultat_02.txt $(R_ANAL)/resultat_03n.txt > $(R_ANAL)/comparaison_O2-03n.txt ; true
# 	@diff $(R_ANAL)/resultat_03.txt $(R_ANAL)/resultat_03n.txt > $(R_ANAL)/comparaison_O3-03n.txt ; true
# 	@echo --- END generation ---

# 	@echo --- generating diff file with maqao built-in, kawalsky....analysis ---
# 	maqao oneview --compare-reports inputs=exp_OV1,exp_OV2 xp=comparaison_O1__O2
# 	maqao oneview --compare-reports inputs=exp_OV1,exp_OV3 xp=comparaison_O1__O3
# 	maqao oneview --compare-reports inputs=exp_OV1,exp_OV3n xp=comparaison_O1__O3n
# 	maqao oneview --compare-reports inputs=exp_OV2,exp_OV3 xp=comparaison_O2__O3
# 	maqao oneview --compare-reports inputs=exp_OV2,exp_OV3n xp=comparaison_O2__O3n
# 	maqao oneview --compare-reports inputs=exp_OV3,exp_OV3n xp=comparaison_O3__O3n
# 	@echo --- END generation ---


clean:
	@echo --- Clean OBJS ---
	@rm -rf $(OBJS) s13_*
	rm -rf $(OBJS) sgemm



cleanAnalyse:
	@echo --- Clean analyse file ---
	@rm $(R_ANAL)/*
	@rm -rf exp_*
