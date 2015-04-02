package io.github.leedscodedojo;

import java.util.ArrayList;
import java.util.List;

public class FindAPrime {
    public static void main(String[] args)
    {
        List<Long> primes = new ArrayList<Long>();
        primes.add(new Long(2));
        primes.add(new Long(3));

        int possiblePrime1 = 5;
        int possiblePrime2 = 7;

        //5 might be prime  11  17
        //6 divides 2 and 3 12  18
        //7 might be prime  13  19
        //8 divides 2       14  20
        //9 divides 3       15  21
        //10 divides 2      16  22

        while (primes.size() < 10001)
        {
            boolean possible1Prime = true;
            boolean possible2Prime = true;

            for (int i=0; i<primes.size(); i++)
            {
                Long prime = primes.get(i);
                if (possiblePrime1 % prime == 0)
                {
                    possible1Prime = false;
                }
                if (possiblePrime2 % prime == 0)
                {
                    possible2Prime = false;
                }

                if (i > Math.sqrt(possiblePrime2))
                {
                    break;
                }
            }

            if (possible1Prime)
            {
                primes.add(new Long(possiblePrime1));
            }

            if (possible2Prime)
            {
                primes.add(new Long(possiblePrime2));
            }

            possiblePrime1 += 6;
            possiblePrime2 += 6;
        }

        System.out.println(primes.get(10000)); //10001st prime
    }
}
