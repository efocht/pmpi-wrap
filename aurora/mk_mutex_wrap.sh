../wrap.py -o mpi_mutex_wrap.c wrap_mutex.w
 
sed -e '/stdlib/a \\#include <pthread.h>' -e '/endif .* PIC/a \_EXTERN_C_ static pthread_mutex_t mutex1 = PTHREAD_MUTEX_INITIALIZER;' -i mpi_mutex_wrap.c
mpincc -o mpi_mutex_wrap.o -DPIC -fpic -pthread -c mpi_mutex_wrap.c
nar q libmpi_mutex.a mpi_mutex_wrap.o
