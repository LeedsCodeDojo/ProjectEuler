package io.github.leedscodedojo;

public class Triplet {
    public static void main(String[] args)
    {
        //a + b + c = 1000
        bigloop:
        for (int i=1; i<=998; i++)
        {
            for(int j=1; j<=999-i; j++)
            {
                for (int k=1; k<=1000-i-j; k++)
                {
                    if (addsToAThousand(i,j,k)
                            && pythagoreanTriple(i,j,k))
                    {
                        System.out.println(i*j*k);
                        break bigloop;
                    }
                }
            }
        }
    }

    private static boolean addsToAThousand(int a, int b, int c)
    {
        return a+b+c == 1000;
    }

    private static boolean pythagoreanTriple(int a, int b, int c)
    {
        return (a*a + b*b == c*c);
    }
}
