import 'dart:math';
class luckey
{
  void lu()
  {
    Random random = new Random();
    int randomNumber = random.nextInt(10)+1;
    print(randomNumber);
    switch (randomNumber) {
      case 1 : print('ji le aapni zindagi tera no. 1 hai');
          break;
       case 2 : print('ji le aapni zindagi tera no. 2 hai');
          break;
       case 3 : print('ji le aapni zindagi tera no. 3 hai');
          break;
        case 4 : print('ji le aapni zindagi tera no. 4 hai');
          break;
         case 5 : print('ji le aapni zindagi tera no. 5 hai');
          break;
         case 6 : print('ji le aapni zindagi tera no. 6 hai');
          break;
           case 7 : print('ji le aapni zindagi tera no. 7 hai');
          break;
           case 8 : print('ji le aapni zindagi tera no. 8 hai');
          break;
           case 9 : print('ji le aapni zindagi tera no. 9 hai');
          break;
           case 10 : print('ji le aapni zindagi tera no. 10 hai');
          break;
      default: print('ji le aapni zindagi, tera kuch nahi ho shakta');
    }
  }
}