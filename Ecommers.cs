using System;

namespace Simplecalusingmethod
{
    internal class Ecommers
    {
        public double CalculateFinalAmount(double ProductPrice, double quantity, out double subtotal,double discount =0, int ShippingCharge=50)
        {
            subtotal =ProductPrice * quantity;
              var TotalAmount = subtotal +ShippingCharge-discount;
            Console.Write($" discount is {discount}%\n");
            return TotalAmount;
        }
        public static void Main()
        {
            Console.Write("Enter ProductPrice: ");
            double price =Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter Quantity: ");
            double qun = Convert.ToDouble(Console.ReadLine());
            Ecommers obj4 = new Ecommers();
            double sub;
           
            var total = obj4.CalculateFinalAmount(price, qun, out sub);
            Console.WriteLine($"subtotal is {sub}\n total final amount is {total}");

        }

    }
}
