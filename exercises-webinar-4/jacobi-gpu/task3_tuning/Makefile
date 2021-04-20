all: jacobi.gpu-v100 jacobi.sol.gpu-v100

jacobi.gpu-v100: Makefile jacobi.c
	clang $(DEBUG) -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda -Xopenmp-target -march=sm_70 -lm -o jacobi.gpu-v100 jacobi.c

jacobi.sol.gpu-v100: Makefile jacobi.c
	clang $(DEBUG) -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda -Xopenmp-target -march=sm_70 -lm -o jacobi.sol.gpu-v100 jacobi.sol.c

clean:
	rm -f *.o
	rm -f jacobi.gpu-v100
	rm -f jacobi.sol.gpu-v100

realclean: clean
	rm -f *.bak *~

.PHONY: all clean realclean

