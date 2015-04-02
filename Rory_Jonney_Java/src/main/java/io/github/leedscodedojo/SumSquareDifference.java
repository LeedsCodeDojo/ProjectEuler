package io.github.leedscodedojo;

public class SumSquareDifference {
    public static void main(String[] args)
    {
        long maxNum = 100;
        long sumOfSquares = getSumOfSquares(maxNum);
        long squareOfSum = getSquareSum(maxNum);

        System.out.println(squareOfSum - sumOfSquares);
    }

    private static long getSumOfSquares(long num)
    {
        long sum = 0;

        for (int i=1; i<=num; i++)
        {
            sum += i*i;
        }

        return sum;
    }

    private static long getSquareSum(long num)
    {
        long sum = 0;
        for (int i=1; i<=num; i++)
        {
            sum += i;
        }

        return sum*sum;
    }
}
