program testapp
  use fortuno_mpi, only : execute_mpi_cmd_app
  use test_allgather, only : allgather_test_items
  use test_allgatherv, only : allgatherv_test_items
  use test_allreduce, only : allreduce_test_items
  use test_bcast, only : bcast_test_items
  use test_comm_split_type, only : comm_split_type_test_items
  use test_comm_split, only : comm_split_test_items
  use test_gather, only : gather_test_items
  use test_gatherv, only : gatherv_test_items
  use test_reduce, only : reduce_test_items
  use test_scatter, only : scatter_test_items
  use test_scatterv, only : scatterv_test_items
  use test_send_recv, only : send_recv_test_items
  implicit none

  call execute_mpi_cmd_app(&
      testitems=[&
          allgather_test_items(),&
          allgatherv_test_items(),&
          allreduce_test_items(),&
          bcast_test_items(),&
          comm_split_type_test_items(),&
          comm_split_test_items(),&
          gather_test_items(),&
          gatherv_test_items(),&
          reduce_test_items(),&
          scatter_test_items(),&
          scatterv_test_items(),&
          send_recv_test_items()&
      ]&
  )

end program testapp
