using System;


namespace Simplecalusingmethod
{
    internal class Student
    {
        public static double avg;
        public double CalculateAverage(int m1, int m2, int m3)
        {
            int sum = m1 + m2 + m3;
            return sum / 3;
        }
       
        public char Grade()
        {
            Console.Write("Enter your marks in M1: ");
            int m11=Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter your marks in M2: ");
            int m12=Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter your marks in M3: ");
            int m13=Convert.ToInt32(Console.ReadLine());
           avg = CalculateAverage(m11, m12, m13);
           
            if(avg >=80 && avg<= 100)
            {
                return 'A';
            }
            else if(avg >=60 && avg<80)
            {
                return 'B';
            }
            else if(avg >=40 && avg<60)
            {
                return 'C';
            }
            else
            {
                return 'D';
            }


        }

        public static void Main()
        {
                Student obj1= new Student();
            var grade=obj1.Grade();
            Console.WriteLine($"your total avg Marks:{avg}\nyour Grade: {grade}");
        }
    }
}
