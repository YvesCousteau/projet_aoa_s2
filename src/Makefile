#compilers
CC=gcc
ICX=icx
ICC=icc

#gcc flags
OFLAG=-O1
OFLAG2=-O2
OFLAG3=-O3
OFLAG3_Native=-O3 -march=native
OFLAGFAST=-Ofast
OFLAG_fastmath=-ffast-math
OFLAG_mrecip= -mrecip

#icx/icc flags
OFLAG_icx_O2=-O2 -static
OFLAG_icx_O3=-O3 -static
OFLAG_icx_O3_Native=-O3 -march=native


OPTFLAGS=-O3 -g -Wall
CFLAGS=-O2 -g -Wall

#OBJS=s13_$(CC)_mrecip.o
OBJS=s13_$(CC)_O2.o s13_$(CC)_O3.o s13_$(CC)_O3_native.o s13_$(CC)_OFast.o s13_$(CC)_ffast-math.o s13_$(ICX)_O2.o s13_$(ICX)_O3.o s13_$(ICX)_O3_native.o
CFILE=driver.c kernel.c rdtsc.c

#R_ANAL=analysis
R_HTML=../maqao_html

CACHE_LVL=L3
SIZE=782
NB_WARMUP=20
NB_MESURE_REP=800


all:	s13

s13: $(OBJS)
	@echo --- Compilation ---

	#gcc executable
	$(CC) driver.c rdtsc.c s13_$(CC)_O2.o -o s13_$(CC)_O2
	$(CC) driver.c rdtsc.c s13_$(CC)_O3.o -o s13_$(CC)_O3
	$(CC) driver.c rdtsc.c s13_$(CC)_OFast.o -o s13_$(CC)_OFast
	$(CC) driver.c rdtsc.c s13_$(CC)_O3_native.o -o s13_$(CC)_O3_native
	$(CC) driver.c rdtsc.c s13_$(CC)_ffast-math.o -o s13_$(CC)_ffast-math
#	$(CC) driver.c rdtsc.c s13_$(CC)_mrecip.o -o s13_$(CC)_mrecip

	#icx executable
	$(ICX) driver.c rdtsc.c s13_$(ICX)_O2.o -o s13_$(ICX)_O2
	$(ICX) driver.c rdtsc.c s13_$(ICX)_O3.o -o s13_$(ICX)_O3
	$(ICX) driver.c rdtsc.c s13_$(ICX)_O3_native.o -o s13_$(ICX)_O3_native


s13_$(CC)_OFast.o: kernel.c
	@$(CC) $(OFLAGFAST) -D $(OPT) -c -o $@ $<
s13_$(CC)_O3_native.o: kernel.c
	@$(CC) $(OFLAG3_Native) -D $(OPT) -c -o $@ $<
s13_$(CC)_O3.o: kernel.c
	@$(CC) $(OFLAG3) -D $(OPT) -c -o $@ $<
s13_$(CC)_O2.o: kernel.c
	@$(CC) $(OFLAG2) -D $(OPT) -c -o $@ $<
s13_$(CC)_ffast-math.o:kernel.c
	@$(CC) $(OFLAG_fastmath) -D $(OPT) -c -o $@ $<
#s13_$(CC)_mrecip.o:kernel.c
#	@$(CC) $(OFLAG_mrecip) -D $(OPT) -c -o $@ $<


s13_$(ICX)_O2.o: kernel.c
	@$(ICX)  $(OFLAG_icx_O2) -D $(OPT) -c -o $@ $<
s13_$(ICX)_O3.o: kernel.c
	@$(ICX)  $(OFLAG_icx_O3) -D $(OPT) -c -o $@ $<
s13_$(ICX)_O3_native.o:kernel.c
	@$(ICX)  $(OFLAG_icx_O3_Native) -D $(OPT) -c -o $@ $<



maqao: clean s13
	@mkdir -p $(R_HTML)
	@echo --- generating maqao file ---

	# gcc -O2
	@echo --- generating maqao file for gcc -O2 ---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_02 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	# @rm -rf $(R_HTML)/s13_02_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_02_one_html $(R_HTML)/s13_02_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	# gcc -03
	@echo --- generating maqao file for gcc -O3 ---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	# @rm -rf $(R_HTML)/s13_03_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_03_one_html $(R_HTML)/s13_03_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	# gcc -03n
	@echo --- generating maqao file for gcc -O3n ---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_03n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	@rm -rf $(R_HTML)/s13_03n_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_03n_one_html $(R_HTML)/s13_03n_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	# gcc -0Fast
	@echo --- generating maqao file for gcc -OFast ---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_0Fast $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	# @rm -rf $(R_HTML)/s13_0Fast_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_0Fast_one_html $(R_HTML)/s13_0Fast_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	# gcc -ffast-math
	@echo --- generating maqao file for gcc -ffast-math ---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_$(CC)_ffast-math $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	# @rm -rf $(R_HTML)/s13_$(CC)_ffast-math_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_$(CC)_ffast-math_one_html $(R_HTML)/s13_$(CC)_ffast-math_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	# gcc -mrecip
	@echo --- generating maqao file for gcc -mrecip ---
	@maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_$(CC)_mrecip $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	@rm -rf $(R_HTML)/s13_$(CC)_mrecip_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_$(CC)_mrecip_one_html $(R_HTML)/s13_$(CC)_mrecip_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res


	# icx -O2
	@echo --- generating maqao file for icx -O2 ---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	# @rm -rf $(R_HTML)/s13_icx_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O2_one_html $(R_HTML)/s13_icx_O2_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res

	# icx -O3
	@echo --- generating maqao file for icx -O3---
	# @maqao oneview -R1 xp=$(R_HTML)/maqao_res -- ./s13_icx_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	# @rm -rf $(R_HTML)/s13_icx_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O3_one_html $(R_HTML)/s13_icx_O3_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res


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
