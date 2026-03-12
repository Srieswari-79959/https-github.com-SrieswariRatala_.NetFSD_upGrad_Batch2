using System;


namespace Simplecalusingmethod
{
    internal class RecursivePower
    {
        public int power(int n, int m)
        {
            
            if (m == 0)
            {
                
                return 1;
            }
           
            return n* power(n,m-1);

        }
        public static void Main()
        {
            RecursivePower obj5 = new RecursivePower();
            Console.Write("enter first number: ");
            int n1 = Convert.ToInt32(Console.ReadLine());
            Console.Write("enter second number: ");
            int n2 = Convert.ToInt32(Console.ReadLine());
            int r =obj5.power(n1, n2);
            Console.WriteLine($" base is {n1}\nexponent is {n2}\npower is {r}");

        }
    }
}
