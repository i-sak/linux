#include <stdio.h>
#include "like.h"
int main()
{
struct person p = {25, "steven"};
if (p.age > YAGE)
printf("I like %s.  \n", p.name);
return 0;

}
