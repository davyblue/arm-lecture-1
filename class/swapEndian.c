#include <stdio.h>

extern int swap(int x);

int main(int argc, char **argv)
{
  int number=0;
  int swapped=0;

  scanf("%d",&number);
  swapped = swap(number);   
  printf("The %X swapped integer is: %X\n",number ,swapped);
}

