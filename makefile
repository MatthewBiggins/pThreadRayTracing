
all: ray data task

ray: ray.c
	gcc ray.c -o ray -lm

data: data.c
	gcc -pthread data.c -o data -lm

task: task.c
	gcc -pthread task.c -o task -lm