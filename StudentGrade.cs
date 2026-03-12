using System;


namespace ConsoleApp2
{
    internal class StudentGrade
    {
        static void Main()
        {
            Console.Write("Enter student name:");
            string studentname = Console.ReadLine();
            Console.Write("Enter student marks:");
            int marks = Convert.ToInt32(Console.ReadLine());
            if(marks >=80 && marks<=100)
            {
                Console.WriteLine($"Student {studentname}\nGrade A");
            }
            else if(marks >=60 && marks < 80)
            {
                Console.WriteLine($"Student {studentname}\nGrade B");
            }
            else if(marks >=40 && marks<60)
            {
                Console.WriteLine($"Student {studentname}\nGrade B");
            }
            else
            {
                Console.WriteLine("student failed in exam");
            }
        }
    }
}
