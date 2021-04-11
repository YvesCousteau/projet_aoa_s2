CC=gcc
II=icx
IIC=icc


OFLAG_gcc_O2=-O2
OFLAG_gcc_O3=-O3
OFLAG_gcc_O3n=-O3 -march=native
OFLAG_gcc_OFAST=-Ofast

OFLAG_icx_O2=-O2
OFLAG_icx_O3=-O3


OFLAG_icx_fast=-fast

OFLAG_icc_O2=-O2
OFLAG_icc_O3=-O3


OFLAG_icc_fast=-fast



OFLAG3n_v4=-O3 -mfpmath=sse -march=native
OFLAG3n_v5=-O3 -msse4.2 -mavx -march=native
OFLAG3n_v6=-O3 -mfpmath=sse -msse4.2 -mavx -march=native


OFLAG_icx_mtune=-mtune=corei7 -static# optimize for processor cache sizes
OFLAG_icx_xhost=-O2 -xHost -static# SIMD for the host's architecture
OFLAG_icx_fast=-fast-static# -Ofast -ipo -static (static linking) -xHost
OFLAG_icx_ultimate=-c -O3 -xSSE4.2 -axAVX,CORE-AVX2 -static


OPTFLAGS=-O3 -g -Wall
CFLAGS=-O2 -g -Wall


OBJS=s13_gcc_O2.o s13_gcc_O3.o s13_gcc_O3n.o s13_gcc_OFast.o s13_icx_O2.o s13_icx_O3.o s13_icc_O2.o s13_icc_O3.o
CFILE=driver.c kernel.c rdtsc.c

#R_ANAL=analysis
R_HTML=maqao_html

CACHE_LVL=L2
SIZE=159
NB_WARMUP=25
NB_MESURE_REP=500000
# NB_MESURE_REP=1000

all:	s13

s13: $(OBJS)
	@echo --- Compilation ---

	@$(CC) -fopenmp driver.c rdtsc.c s13_gcc_O2.o -o s13_gcc_O2
	@$(CC) -fopenmp driver.c rdtsc.c s13_gcc_O3.o -o s13_gcc_O3
	@$(CC) -fopenmp driver.c rdtsc.c s13_gcc_O3n.o -o s13_gcc_O3n
	@$(CC) -fopenmp driver.c rdtsc.c s13_gcc_OFast.o -o s13_gcc_OFast


	@$(II) -fopenmp driver.c rdtsc.c s13_icx_O2.o -o s13_icx_O2
	@$(II) -fopenmp driver.c rdtsc.c s13_icx_O3.o -o s13_icx_O3


	@$(IIC) -fopenmp driver.c rdtsc.c s13_icc_O2.o -o s13_icc_O2
	@$(IIC) -fopenmp driver.c rdtsc.c s13_icc_O3.o -o s13_icc_O3

s13_gcc_O2.o: kernel.c
	@$(CC) $(OFLAG_gcc_O2) -D $(OPT) -c -o  $@ $<
s13_gcc_O3.o: kernel.c
	@$(CC) $(OFLAG_gcc_O3) -D $(OPT) -c -o $@ $<
s13_gcc_O3n.o: kernel.c
	@$(CC) $(OFLAG_gcc_O3n) -D $(OPT) -c -o $@ $<
s13_gcc_OFast.o: kernel.c
	@$(CC) $(OFLAG_gcc_OFAST) -D $(OPT) -c -o $@ $<
#------------------------#
s13_icx_O2.o: kernel.c
	@$(II)  $(OFLAG_icx_O2) -D $(OPT) -c -o $@ $<
s13_icx_O3.o: kernel.c
	@$(II)  $(OFLAG_icx_O3) -D $(OPT) -c -o $@ $<
#------------------------#
s13_icc_O2.o: kernel.c
	@$(IIC)  $(OFLAG_icc_O2) -D $(OPT) -c -o $@ $<
s13_icc_O3.o: kernel.c
	@$(IIC)  $(OFLAG_icc_O3) -D $(OPT) -c -o $@ $<


maqao: clean s13
	@mkdir -p $(R_HTML)

	@echo --- generating maqao file gcc_O2 ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_gcc_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_gcc_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_O2_one_html $(R_HTML)/s13_gcc_O2_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res
	@echo --- generating maqao file gcc_O3 ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_gcc_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_gcc_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_O3_one_html $(R_HTML)/s13_gcc_O3_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res
	@echo --- generating maqao file gcc_O3 native ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_gcc_O3n $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_gcc_O3n_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_O3n_one_html $(R_HTML)/s13_gcc_O3n_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res
	@echo --- generating maqao file gcc_Ofast ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_gcc_OFast $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_gcc_OFast_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_gcc_OFast_one_html $(R_HTML)/s13_gcc_OFast_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res


	@echo --- generating maqao file icx_O2 ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_icx_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icx_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O2_one_html $(R_HTML)/s13_icx_O2_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res
	@echo --- generating maqao file icx_O3 ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_icx_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icx_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icx_O3_one_html $(R_HTML)/s13_icx_O3_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res


	@echo --- generating maqao file icc_O2 ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res -- ./s13_icc_O2 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icc_O2_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icc_O2_one_html $(R_HTML)/s13_icc_O2_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res
	@echo --- generating maqao file icc_O3 ---
	maqao oneview -R1 --omp-num-threads=4 xp=$(R_HTML)/maqao_res --  ./s13_icc_O3 $(SIZE) $(NB_WARMUP) $(NB_MESURE_REP)
	rm -rf $(R_HTML)/s13_icc_O3_$(CACHE_LVL)_$(OPT)_one_html && mv $(R_HTML)/maqao_res/RESULTS/s13_icc_O3_one_html $(R_HTML)/s13_icc_O3_$(CACHE_LVL)_$(OPT)_one_html ; rm -rf $(R_HTML)/maqao_res



clean:
	@echo --- Clean OBJS ---
	@rm -rf $(OBJS) s13_*
	@rm -rf $(OBJS) sgemm



cleanAnalyse:
	@echo --- Clean analyse file ---
	@rm -rf $(R_HTML)/*
