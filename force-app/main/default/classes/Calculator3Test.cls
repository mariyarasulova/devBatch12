@isTest
public  class Calculator3Test {
    private static void aNormalMethod(){
        system.debug('this is still allowed');
    }
    @isTest
 private static void testMessage(){
    Calculator3 c = new Calculator3();
    c.welcomeMessage();
    c.printNewMessage('printing from test method now');
 }
 @isTest
 private static void testAdd1(){
    integer i = 10;
    integer j = 15;
    Calculator3 c = new Calculator3();
    integer sum1= c.add(i, j);
    //or just integer sum1= c.add(10, 15);
    system.assertEquals(25, sum1);
 }
 @isTest
 private static void testAdd2(){
    integer i = 10;
    integer j = 15;
    integer k = 25;
    Calculator3 c = new Calculator3();
    integer sum1= c.add(i, j,k);
    //or just integer sum1= c.add(10, 15);
    system.assertEquals(50, sum1);
}
}