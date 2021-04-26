using System;

namespace практика_1
{
    class Program
    {
        static void Main(string[] args)
        {
            int i=1;
            Console.Write("Введите значение a= ");
            int a = int.Parse(Console.ReadLine());
            if (a < 5)
            {
                i++;
            }
            Console.Write("Введите  b= ");
            int b = int.Parse(Console.ReadLine());
            if (b < 5)
            {
                i++;
            }
            Console.Write("Введите c= ");
            int c = int.Parse(Console.ReadLine());
            if (c < 5)
            {
                i++;
            }
            if (i == 2)
            {
                Console.Write("yes");
            }
            else
            {
                Console.Write("no");
            }
            Console.WriteLine();
            Console.ReadKey();

        }
    }
}
