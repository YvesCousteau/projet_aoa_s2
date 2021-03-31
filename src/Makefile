CC=gcc
II=icx

OFLAG=-O1
OFLAG2=-O2
OFLAG3=-O3
OFLAG3n=-O3 -march=native
OFLAG3n_v4=-O3 -mfpmath=sse -march=native
OFLAG3n_v5=-O3 -msse4.2 -mavx -march=native
OFLAG3n_v6=-O3 -mfpmath=sse -msse4.2 -mavx -march=native

OFLAG_icx_O2=-O2 -static
OFLAG_icx_O3=-O3 -static
OFLAG_icx_mtune=-mtune=corei7 -static# optimize for processor cache sizes
OFLAG_icx_xhost=-O2 -xHost -static# SIMD for the host's architecture
OFLAG_icx_fast=-fast -static# -Ofast -ipo -static (static linking) -xHost
OFLAG_icx_ultimate=-c -O3 -xSSE4.2 -axAVX,CORE-AVX2 -static


OPTFLAGS=-O3 -g -Wall
CFLAGS=-O2 -g -Wall


#OBJS=s13_03n_v6.o s13_03n_v5.o s13_03n_v4.o s13_03n.o s13_03.o s13_02.o s13_01.o s13_icx_O2.o s13_icx_O3.o s13_icx_mtune.o s13_icx_xhost.o  s13_icx_ultimate.o
OBJS=s13_02.o #s13_icx_O2.o
CFILE=driver.c kernel.c rdtsc.c

#R_ANAL=analysis
R_HTML=../maqao_html

CACHE_LVL=RAM
SIZE=1516
NB_WARMUP=10
NB_MESURE_REP=1000


all:	s13

s13: $(OBJS)
	@$(CC) driver.c rdtsc.c s13_02.o -o s13_02
	#@$(II) driver.c rdtsc.c s13_icx_O2.o -o s13_icx_O2

	
	#@$(CC) driver.c rdtsc.c s13_03n_v6.o -o s13_03n_v6
	#@$(CC) driver.c rdtsc.c s13_03n_v5.o -o s13_03n_v5
	#@$(CC) driver.c rdtsc.c s13_03n_v4.o -o s13_03n_v4
	#@$(CC) driver.c rdtsc.c s13_03n.o -o s13_03n
	#@$(CC) driver.c rdtsc.c s13_03.o -o s13_03
	#
	

	#@$(II) driver.c rdtsc.c s13_icx_O3.o -o s13_icx_O3
	#@$(II) driver.c rdtsc.c s13_icx_mtune.o -o s13_icx_mtune
	#@$(II) driver.c rdtsc.c s13_icx_xhost.o -o s13_icx_xhost
	#$(II) driver.c rdtsc.c s13_icx_fast.o -o s13_icx_fast
	#@$(II) driver.c rdtsc.c s13_icx_ultimate.o -o s13_icx_ultimate

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
	@$(II)  $(OFLAG_icx_O2) -D $(OPT) -c -o $@ $<
s13_icx_O3.o: kernel.c
	@$(II)  $(OFLAG_icx_O3) -D $(OPT) -c -o $@ $<
s13_icx_mtune.o: kernel.c
	@$(II)  $(OFLAG_icx_mtune) -D $(OPT) -c -o $@ $<
s13_icx_xhost.o: kernel.c
	@$(II)  $(OFLAG_icx_xhost) -D $(OPT) -c -o $@ $<


# s13_icx_fast.o: kernel.c
# 	@$(II) $(OFLAG_icx_fast) -D $(OPT) -c -o $@ $<

s13_icx_ultimate.o: kernel.c
	@$(II) $(OFLAG_icx_ultimate) -D $(OPT) -c -o $@ $<

maqao: s13
	@mkdir -p $(R_HTML)
	@echo --- generating maqao file ---

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_02 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_02_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_02_one_html $(R_HTML)/s13_02_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	#maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#rm -rf $(R_HTML)/s13_icx_02_$(CACHE_LVL)_$(OPT)_one_html  && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O2_one_html $(R_HTML)/s13_icx_02_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res



	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_03_one_html $(R_HTML)/s13_03_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_03n_one_html $(R_HTML)/s13_03n_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03n_v4 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_03n_v4_one_html $(R_HTML)/s13_03n_v4_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03n_v5 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_03n_v5_one_html $(R_HTML)/s13_03n_v5_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03n_v6 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_03n_v6_one_html $(R_HTML)/s13_03n_v6_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_mtune $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_icx_mtune_one_html $(R_HTML)/s13_icx_mtune_one_html ; rm -rf $(R_HTML)/maqao_res

	
	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O3_one_html $(R_HTML)/s13_icx_O3_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_ultimate $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_icx_ultimate_one_html $(R_HTML)/s13_icx_ultimate_one_html ; rm -rf $(R_HTML)/maqao_res

	#@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_xhost $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#@mv $(R_HTML)/maqao_res/RESULTS/s13_icx_xhost_one_html $(R_HTML)/s13_icx_xhost_one_html ; rm -rf $(R_HTML)/maqao_res


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
	@rm -rf $(OBJS) sgemm



cleanAnalyse:
	@echo --- Clean analyse file ---
	@rm -rf $(R_HTML)/*
