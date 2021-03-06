CFLAGS = -Wall -pedantic -std=c99 -O2 -pipe
LDFLAGS = -lOpenCL

all: main_ocl20

main_ocl20: main_ocl20.c
	gcc $(CFLAGS) -o $@ $< $(LDFLAGS)

debug: CFLAGS = -g -O0 -Wall --pedantic
debug: main_ocl20

clean:
	rm main_ocl20
