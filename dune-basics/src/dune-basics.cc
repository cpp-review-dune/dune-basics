#ifdef HAVE_CONFIG_H
#include "config.h"
#endif
#include <dune/common/exceptions.hh>         // We use exceptions
#include <dune/common/parallel/mpihelper.hh> // An initializer of MPI
#include <dune/common/fvector.hh>
#include <iostream>

int main(int argc, char **argv) {
  try {
    // Maybe initialize MPI
    Dune::MPIHelper &helper = Dune::MPIHelper::instance(argc, argv);
    std::cout << "Hello World! This is dune-basics." << std::endl;
    if (Dune::MPIHelper::isFake)
      std::cout << "This is a sequential program." << std::endl;
    else {
      std::cout << "I am rank " << helper.rank() << " of " << helper.size()
                << " processes!" << std::endl;

      const int dim = 50;
      Dune::FieldVector<double, dim> Vector1;
      for (auto &l : Vector1) {
        std::cout << l << std::endl;
      }
    }

    return 0;
  } catch (Dune::Exception &e) {
    std::cerr << "Dune reported error: " << e << std::endl;
  } catch (...) {
    std::cerr << "Unknown exception thrown!" << std::endl;
  }
}
