FILES  = main.c
CFLAGS = -std=c11 -Wall -Wextra -O2
LDFLAGS = -lc

demo: $(FILES)
	gcc $(CFLAGS) -o demo $(FILES) $(LDFLAGS)

.PHONY: all clean fresh

all: demo

clean:
	rm -rf demo

fresh:
	rm -rf demo
	gcc $(CFLAGS) -o demo $(FILES) $(LDFLAGS)
	./demo
