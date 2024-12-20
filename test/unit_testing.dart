import 'package:flutter_test/flutter_test.dart';
import 'package:salary_unit_test/my_function.dart';

void main()
{


  //for a single unit test
  test("Simple Test", (){

    MyFunction mf=MyFunction();

    int salary=mf.calculateSalary(1);
    expect(salary, 400);

  });


  //for multiple unit tests
  group("salary test", (){

    test("Salary Test 35", (){

      MyFunction mf=MyFunction();

      int salary=mf.calculateSalary(35);
      expect(salary, 14000);

    });

    test("Salary Test 45", (){

      MyFunction mf=MyFunction();

      int salary=mf.calculateSalary(45);
      expect(salary, 27000);


    });


  });
}