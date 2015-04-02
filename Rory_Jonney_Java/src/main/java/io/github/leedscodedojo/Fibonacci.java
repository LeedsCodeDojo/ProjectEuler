package io.github.leedscodedojo;

public class Fibonacci {
    public static void main(String[] args)
    {
        long sum = 0;

        int fibNum1 = 1;
        int fibNum2 = 2;
        while (true)
        {
            if (fibNum1 > 4000000)
            {
                break;
            }
            else
            {
                if (fibNum1 % 2 == 0)
                {
                    sum += fibNum1;
                }
            }

            if (fibNum2 > 4000000)
            {
                break;
            }
            else
            {
                if (fibNum2 % 2 == 0)
                {
                    sum += fibNum2;
                }
            }

            fibNum1 += fibNum2; //fibNum1 + fibNum2 = next in sequence
            fibNum2 += fibNum1; //fibNum2 + fibNum3 = next in sequence
        }

        System.out.println(sum);
    }
}
