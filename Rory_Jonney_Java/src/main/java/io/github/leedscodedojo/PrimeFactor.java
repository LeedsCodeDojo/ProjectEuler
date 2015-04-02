package io.github.leedscodedojo;

import java.util.HashSet;
import java.util.Set;

public class PrimeFactor {
    public static void main (String[] args){
        long num = 600851475143L;
        boolean shouldAdd = false;

        Set<Integer> primeFactors = new HashSet<Integer>();

        for(int i = 2; i <= num; i++){
            shouldAdd = false;
            while(num % i == 0){
                shouldAdd = true;
                System.out.println("Dividing by " + i);
                num = num / i;
            }

            if (shouldAdd){
                primeFactors.add(new Integer(i));
            }
        }

        System.out.println(primeFactors);
    }
}
