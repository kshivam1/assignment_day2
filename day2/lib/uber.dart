class online
{
  int cost;
  int on(int a)
  {
     if(a<20)
    {
      cost= 40*a;
    }
    else
    {
      cost=(800+((a-20)*10));
    }
    print('cosr for a online taxi $cost');
    return(cost);

  }
}
class classic
{
  int cost;
  int cl(int a)
  {
    if(a<20)
    {
      cost=30*a;
    }
    else{
      cost=((20*30)+((a-20)*15));
    }
    print('cost for a classic taxi $cost');
    return(cost);
  }

}