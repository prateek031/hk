// void main(){
// print(calcarea(5, 6));
// }
// calcarea(int l, int b){
//   return l*b;
// }


// void main(){
// print(calcarea(2, 4));
// }
// int calcarea(int l, int b){
//   return l*b;
// }

// void main(){
// print(conc("css is ","fun"));
// }
// conc(String l,String b){
//   return l+b;
// }

// void main(){
// print(conc("css is ","fun"));
// }
// String conc(String l,String b){
//   return l+b;
// }

// void main(){
// print(conc("css is ","fun"));
// }
// String conc(String l,int b){
//   return {l+b};
// }
// Error in return type

// void main(){
// print(conc("css is ",5));
// }
// conc(String l,int b){
//   return {'$l$b'};
// }

// void main(){
// print(conc("css is ",5));
// }
// int conc(String l,int b){
//   return {'$l$b'};
// }

// void main(){
// var a= conc(5,4);
// print(a);
// }
// conc(int l,int b){
//   return l+b;
// }


// void main(){
// var a= conc(1,3);
// var b= conc(2,3);
// print('$a,$b');
// var c=conc(a,b);
// print(c);
// }
// conc(int l,int b){
//   return l+b;
// }


// void main(){
// String a= conc('hey ','hii');
// String b= conc('hye','hehe');
// print('$a,$b');
// String c=conc(a,b);
// print(c);
// }
// String conc(String l,String b){
//  return l+b;
// }



// void main(){
//   int a=conc();
//   print(a);
// }
// int conc(){
//  int l=2;
//  int b=4;
//   return l*b;
// }


// void main(){
//   int a=conc(2,4);
//   print(a);
// }
// int conc(int l,int b)=> l*b;


// void main(){
//   conc("hiya","emie","ajat");
  
// }
// void conc ( a, b, [c=null]){
//  print("the name is $a");
//  print("the name is $b");
//  print("the name is $c");
// }


// void main(){
//   conc('hui');
  
// }
// void conc ( a, [c,b]){
//  print("the name is $a");
//  print("the name is $b");
//  print("the name is $c");
// }
 

//  void main(){
//   conc(2,3,4);
  
// }
// void conc ( a, c,b){
//  print("the no. is $a");
//  print("the no. is $b");
//  print("the no. is $c");
//  print('this is the sum${a+b+c}');
// }


//  void main(){
//   conc(2,c:3,b:4);
  
// }
// void conc ( a, {c,b}){
//  print("the no. is $a");
//  print("the no. is $b");
//  print("the no. is $c");
//  print('this is the sum${a+b+c}');
// }



        // Exception handling


// void main(){
//   try {
//   int a= 12~/0;
//   print(a);
//   } on IntegerDivisionByZeroException{ 
//     // WHEN WE KNOW THE NAME OF EXCEPTION WE USE ON CLAUSE ELSE WE USE CATCH BLOCK OR CLAUSE
//     print("this exception is handeled");
//   }
// }


// void main(){
//   try {
//       var a=12~/0; 
//       // ~ this oprator call tilday oprator ~/ toughter divide the whole expression and return the integer value
//   print(a);
//   } catch (e) {
//     print("this is the exception");
//   }
// }

// void main(){
//   try {
//       var a=12~/0;
//   print(a);
    
//   } catch (e,s)
//     // s is the stack trace which show all the event happes before exception  is thrown
//    {
//     print("this is exception $e");
//     print(" this is  stack trace $s");
//   }

// }


// void main(){
//   try {
//       var a=12~/0;
//   print(a);
    
//   } catch (e,s)
//     // s is the stack trace which show all the event happes before exception  is thrown
//    {
//     print("this is exception $e");
//     print(" this is  stack trace $s");
//   }
//   finally{
//   print('this block always execute no matter wether exception was thrown or not');
//   }
  
// }

// void main(){
//   try {
//       var a=12~/2;
//   print(a);
    
//   } catch (e,s)
//     // s is the stack trace which show all the event happes before exception  is thrown
//    {
//     print("this is exception $e");
//     print(" this is  stack trace $s");
//   }
//   finally{
//   print('this block always execute no matter wether exception was thrown or not');
//   }
  
// }



        // class and objects

// void main(){
//  var Student1= Student();
//  Student1.id=31;
//  Student1.name='ajay';
//  Student1.study();
//  Student1.sleep();

//  var Student2= Student();
//  Student2.id=52;
//  Student2.name="lkksjk";
// Student2.study();
//  Student2.sleep();
// }

// class Student{
// int? id;
// String? name;

// void study(){
//   print(this.name);
//   print('${this.name} is studying');

// }
// void sleep(){
//   print(this.id);
//   print('${this.name} is sleeping');

// }
// }




// void main(){
// //  var Student1= Student(23,"jijiji");
// //  print('${Student1.id} ${Student1.name}');
// //  Student1.study();
// //  Student1.sleep();
//  var Student2 =Student.muconst(25,'loki');
//  Student2.sleep();
 
//  print(Student2);
//  print(Student2.name);
// }

// class Student{
// int? id;
// String? name;
// // parameterizedConstructor
//  Student(this.id, this.name);

//  Student.muconst(this.id, this.name);
  
// void study(){
//   print(this.name);
//   print('${this.name} is studying');

// }
// void sleep(){
//   print(this.id);
//   print('${this.name} is sleeping');

// }
// }

// void  main(){
// var Student1 =Student();
// Student1.name= "gsgjk";
// Student1.mark=350.0;
// print(Student1.mark);
// }
// class Student{
//   String? name;
//   double page=0;
// // custom Getter Setter
//   void set mark(double gott){
//     page=(gott/500)*100;
//   }
//   double  get mark{
//     return page;
//     }
// }

// void main(){
//  var dog= Dog();
//  var cat= Cat();

//  dog.breed='lab';
//  dog.color='blue';
//  print(dog.color);
//  dog.bark();
//  dog.eat();
//  dog.colors("black");
//  cat.colors("blurrr");

// }

// class Animal{
//   String ?color;
  
//   void eat(){
//     print("eating");
//   }
//   void colors(String e){
//    print(e);
//   }
// }
// class Dog extends Animal{
//   String? breed;
//   void bark(){
//     print("barking");
//   }
// }
// class Cat extends Animal{
//   int ?age;
//   void meow(){
//     print("hui hui");
//   }
// }


// void main(){
// var doge= dog('white');
// print(doge.color);
// // doge.eat();
// }
// class animal{
//   String? color='brown';
//   void eat(){
//     print("animal is eating");
//   }
//   animal(String color){
//     this.color;
//     print("jijijj");
//   }
// }

// class dog extends animal{
//   String ?color="red";
//   void eat(){
//     print("dog is eating");
//     super.eat();

//   }
//   dog(String color):super(color){
//     this.color=color;
//     print("hui hi");

//   }
// }

// void main(){
// var react=rect();
// react.draw();
// }

// abstract class shape{
//   void draw();
// }
// class rect extends shape{

//  void draw() {
//     print("drawed");
    
//   }
// }



// static methods and variables


// void main(){
//   print(Circle.calcarea());
// }

// class Circle{
//   static double a =3.14;
//   static   calcarea(){
//     print("some code is here${Circle.a}");
//      return " ";
//   }
// //  we have to return empty string for the null safty
// }




          // high order Function


// void main(){
//    yoyo (a,b)=> print(a+b);
// ashi("djhjshdsc", yoyo);
// var a=task();
// print(a(8));
// }
// void ashi(String name, Function activity){
// print(name);
// activity(2,4);
// }

// Function task(){

//   Function mpf=(int no)=> no*4;
//   return mpf;
// }



          // clouser

// void main(){

//   int a=15;
//   hiii(){
//     a=17;
//     var b=18;
//     print({a,b});
//   }
//   print(b);
  
//   hiii();
//   print(a);
// }



        // List

// void main(){
//   List<int?>a=[];
//   a.add(45);
//   a.addAll([23,54,68]);
// //  a.add(null);
// a.removeAt(2);
//   print(a);
//   // for(int element in a){
//   //   print(element);
//   // }


//   // for(int i=0; i<a.length;i++){
//   //   print(a[i]);
//   // }
//   // a.forEach((element) => print(element));
// }





// Set

// void main(){
//   // in set we omly store uniqu element;
//   Set<int> num=Set();
//   num.add(23);
//   num.add(53);
//   num.add(28);
//   num.add(65);
//   num.add(89);
//   num.add(89);
//   num.add(89);
// num.

//   print(num);

//   num.forEach((element)=>print(element));


// }

// Map

// void main(){
//   Map<String,int>cont={
//   "aus":1,
//   "ind":91,
//   "san":54
//     };
//     print(cont);

//   Map<String,String> fruits=Map();
//   fruits["apple"]="red";
//   fruits["grapes"]="green";
//   fruits["banana"]="yellow";
//   fruits["lichi"]="white";
//   fruits["lichi"]="wdkc";
//   fruits["cdjnjcn"]="green";

//  print( fruits.update('banana', (value) => "white"));
// //  fruits.clear();
//   print(fruits);
//   // fruits.forEach((key, value) =>print("key $key and value  $value"));

// }


