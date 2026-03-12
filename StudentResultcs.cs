using System;
using System.Runtime.Intrinsics.X86;


namespace Simplecalusingmethod
{
    internal class StudentResultcs
    {
        public double CalculateResult(int m1, int m2, int m3, out int sum)
        {
            sum = m1 + m2 + m3;
            var avg = sum / 3;
            return avg;
        }
        public string Grade()
        {
            Console.Write("Enter your marks in M1: ");
            int m11 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter your marks in M2: ");
            int m12 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter your marks in M3: ");
            int m13 = Convert.ToInt32(Console.ReadLine());
            int summ;
             double avg1 = CalculateResult(m11, m12, m13, out summ);
            Console.Write($"your total Marks: {summ}\nyour avg Marks:{avg1}\n");
            
            if (avg1 >= 40 && avg1 <= 100)
            {
                return "Pass";
            }
            else
            {
                return "Fail";
            }
        }
        public static void Main()
        {
            StudentResultcs obj3 = new StudentResultcs();
             var grade = obj3.Grade();
            Console.WriteLine($"your Result Status: {grade}");
        }
    }
}
