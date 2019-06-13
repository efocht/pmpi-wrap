{{fn foo 
MPI_Abort
MPI_Allgather
MPI_Allgatherv
MPI_Allreduce
MPI_Barrier
MPI_Bcast
MPI_Comm_dup
MPI_Comm_size
MPI_Comm_rank
MPI_Comm_set_errhandler
MPI_Error_string
MPI_Exscan
MPI_Finalize
MPI_Gather
MPI_Get_library_version
MPI_Get_version
MPI_Info_set
MPI_Init
MPI_Irecv
MPI_Isend
MPI_Issend
MPI_Op_create
MPI_Recv
MPI_Reduce
MPI_Send
MPI_Test
MPI_Type_commit
MPI_Type_contiguous
MPI_Type_create_struct
MPI_Wait
MPI_Waitall
MPI_Waitany
}} {
  //printf("{{foo}} start\n");
  pthread_mutex_lock( &mutex1 );
  {{callfn}}
  pthread_mutex_unlock( &mutex1 );
  //printf("{{foo}} end\n");
}
{{endfn}}

