using System;



namespace Week4demo
{
    internal class NumberAnalysis
    {
        static void Main()
        {
            Console.Write("enter a number: ");
            int n = Convert.ToInt32(Console.ReadLine());
            int c = 0;
            int d = 0;
            int sum = 0;
            for(int i=1; i<=n; i++)
            {
                sum = sum + i;
                if(i%2==0)
                {
                    c++;

                }
                else
                {
                    d++;
                }
                
            }
            Console.WriteLine($"EvenCount {c}\n OddCount {d}\n sum {sum}");
        }
       
    }
}
