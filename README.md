## This was a project I completed for the course Parallel Programming (CIS3090). 

Performs a comparison of data parallelism and task parallelism with pThreads using the raytracing code in ray.c from:
https://www.purplealienplanet.com/node/23

The results of the analysis are as follows:

## Testing Platform:
i7-7700k 4-cores 8-threads 4.20GHz 
32GB memory

All results are in seconds


## data.c results
   threads      1       2       4       8       16      32      64   
Scale
  1            0.07    0.04    0.03    0.02    0.01    0.01    0.01

  2            0.31    0.16    0.11    0.07    0.06    0.06    0.06

  3            0.71    0.36    0.26    0.17    0.15    0.13    0.12

  4            1.24    0.64    0.47    0.31    0.25    0.23    0.22

  5            1.92    1.01    0.71    0.47    0.41    0.36    0.36

  6            2.83    1.44    1.06    0.68    0.54    0.53    0.50

  7            3.81    2.05    1.43    0.93    0.78    0.68    0.67




## task.c results
   threads     2
Scale
  1           37.5

  2          150.50

  3          338.70

  4          602.04



## Analysis of timing results:
The timing results for data.c show that the program greatly benefited from the use of multithreading. 
The program benefited from the use of threads at all of the scales, however, under a scale of four, the 
single threaded time never passed one second, so the performance increase from multithreading was not 
noticeable. Once passed a scale of four, the time differences became noticeable when running the tests. 
Also, in scales lower than four, after sixteen threads, the time differences became less than 0.01 seconds. 
Even in scale seven, the time difference between 16 threads and 64 threads was not significant.

For task.c, task parallelism proved to be very inefficient for this problem. Due to the nature of the 
problem, most of the code relied on the results of the previous code to operate and perform calculations. 
This made it difficult to find sections of the code that could run in parallel.
