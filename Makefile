CFLAGS = -Wall --pedantic
LDFLAGS = -lOpenCL

all: main_ocl20

main_ocl20: main_ocl20.c
	gcc $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm main_ocl20
