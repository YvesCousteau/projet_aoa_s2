CC=gcc
II=icx
III=icc

OFLAG=-O1
OFLAG2=-O2
OFLAG3=-O3
OFLAGFast=-Ofast
OFLAG3n=-O3 -march=native
OFLAG3n_v4=-O3 -mfpmath=sse -march=native
OFLAG3n_v5=-O3 -msse4.2 -mavx -march=native
OFLAG3n_v6=-O3 -mfpmath=sse -msse4.2 -mavx -march=native

OFLAG_icx_O2=-O2 -static
OFLAG_icx_O3=-O3 -static
OFLAG_icx_O3n=-O3 -march=native -static


OPTFLAGS=-O3 -g -Wall
CFLAGS=-O2 -g -Wall


OBJS=s13_gcc_O3n.o s13_gcc_O3.o s13_gcc_O2.o s13_gcc_OFast.o s13_icx_O2.o s13_icx_O3.o s13_icx_O3n.o s13_icc_O2.o s13_icc_O3.o s13_icc_O3n.o
#OBJS=s13_02.o
CFILE=driver.c kernel.c rdtsc.c

#R_ANAL=analysis
R_HTML=../maqao_html

CACHE_LVL=L1
SIZE=51
NB_WARMUP=31
NB_MESURE_REP=750


all:	s13

s13: $(OBJS)
	@echo --- Compilation ---

	$(CC) driver.c rdtsc.c s13_gcc_O2.o -o s13_gcc_O2
	$(II) driver.c rdtsc.c s13_icx_O2.o -o s13_icx_O2
	$(III) driver.c rdtsc.c s13_icc_O2.o -o s13_icc_O2

	$(CC) driver.c rdtsc.c s13_gcc_O3.o -o s13_gcc_O3
	$(II) driver.c rdtsc.c s13_icx_O3.o -o s13_icx_O3
	$(III) driver.c rdtsc.c s13_icc_O3.o -o s13_icc_O3
	
	$(CC) driver.c rdtsc.c s13_gcc_O3n.o -o s13_gcc_O3n
	$(II) driver.c rdtsc.c s13_icx_O3n.o -o s13_icx_O3n
	$(III) driver.c rdtsc.c s13_icc_O3n.o -o s13_icc_O3n
	
	$(CC) driver.c rdtsc.c s13_gcc_OFast.o -o s13_gcc_OFast


s13_gcc_OFast.o: kernel.c
	@$(CC) $(OFLAGFast) -D $(OPT) -c -o $@ $<
s13_gcc_O3n.o: kernel.c
	@$(CC) $(OFLAG3n) -D $(OPT) -c -o $@ $<
s13_gcc_O3.o: kernel.c
	@$(CC) $(OFLAG3) -D $(OPT) -c -o $@ $<
s13_gcc_O2.o: kernel.c
	@$(CC) $(OFLAG2) -D $(OPT) -c -o $@ $<



s13_icx_O2.o: kernel.c
	@$(II)  $(OFLAG_icx_O2) -D $(OPT) -c -o $@ $<
s13_icx_O3.o: kernel.c
	@$(II)  $(OFLAG_icx_O3) -D $(OPT) -c -o $@ $<
s13_icx_O3n.o: kernel.c
	@$(II)  $(OFLAG_icx_O3n) -D $(OPT) -c -o $@ $<

s13_icc_O2.o: kernel.c
	@$(III)  $(OFLAG_icx_O2) -D $(OPT) -c -o $@ $<
s13_icc_O3.o: kernel.c
	@$(III)  $(OFLAG_icx_O3) -D $(OPT) -c -o $@ $<
s13_icc_O3n.o: kernel.c
	@$(III)  $(OFLAG_icx_O3n) -D $(OPT) -c -o $@ $<


maqao: clean s13 
	@mkdir -p $(R_HTML)
	@echo --- generating maqao file ---

	#maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_gcc_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#rm -rf $(R_HTML)/s13_gcc_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_O2_one_html $(R_HTML)/s13_gcc_02_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res



	#maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_gcc_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#rm -rf $(R_HTML)/s13_gcc_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_O3_one_html $(R_HTML)/s13_gcc_03_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	#maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_gcc_O3n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#rm -rf $(R_HTML)/s13_gcc_O3n_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_O3n_one_html $(R_HTML)/s13_gcc_03n_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	#maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_gcc_OFast $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	#rm -rf $(R_HTML)/s13_gcc_OFast_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_OFast_one_html $(R_HTML)/s13_gcc_OFast_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res
	

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icx_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O2_one_html $(R_HTML)/s13_icx_O2_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icx_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O3_one_html $(R_HTML)/s13_icx_O3_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O3n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icx_O3n_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O3n_one_html $(R_HTML)/s13_icx_O3n_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icc_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icc_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icc_O2_one_html $(R_HTML)/s13_icc_O2_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icc_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icc_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icc_O3_one_html $(R_HTML)/s13_icc_O3_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icc_O3n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icc_O3n_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icc_O3n_one_html $(R_HTML)/s13_icc_O3n_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res


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
