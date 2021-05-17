#include <iostream>
#include <dune/common/math.hh>

int main(int argc, char **argv)
{
  std::cout << Dune::StandardMathematicalConstants<double>::pi()
            << "\n"
            << Dune::StandardMathematicalConstants<double>::e()
            << "\n"
            << Dune::factorial<int>(3);
            << "\n"

  return 0;
}
