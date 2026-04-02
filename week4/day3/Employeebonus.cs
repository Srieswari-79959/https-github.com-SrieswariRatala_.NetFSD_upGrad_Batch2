using System;


namespace Week4demo
{
    internal class Employeebonus
    {
       static void Main()
        {
            Console.Write("Enter Employee Name:");
            string empName = Console.ReadLine();
            Console.Write("Enter Employee Salary:");
            long empsalary = Convert.ToInt64(Console.ReadLine());
            Console.Write("Enter years of experenice:");
            byte exp = Convert.ToByte(Console.ReadLine());
            double bonus;
            if(exp <2)
            {
              bonus = empsalary/100 * 5;
                Console.WriteLine($"finalsalary {bonus + empsalary}");
            }
            else if(exp >=2 && exp<=5)
            {
                bonus = empsalary/100 *10;
                Console.WriteLine($"final salary {bonus + empsalary}");
            }
            else
            {
                bonus = empsalary/100 *15;
                Console.WriteLine($"final salary {bonus + empsalary}");
            }
        }
    }
}
