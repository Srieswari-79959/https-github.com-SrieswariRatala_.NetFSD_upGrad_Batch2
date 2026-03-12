using System;


namespace ConsoleApp2
{
    internal class caliculator
    {
        static void Main()
        {
            Console.Write("Enter first number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter second number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter an operator(+,-,*,/): ");
            string opera = Console.ReadLine();
            switch(opera)
            {
                case "+":
                    int sum = num1 + num2;
                    Console.WriteLine(sum);
                         break;

                case "-":
                    int diff = num1 - num2;
                    Console.WriteLine(diff);
                    break;
                case "*":
                    int mul = num1 * num2;
                    Console.WriteLine(mul);
                    break;
                case "/":
                    double div = num1 / num2;
                    Console.WriteLine(div);
                    break;

            }
        }
    }
}
