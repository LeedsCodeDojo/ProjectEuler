package io.github.leedscodedojo;

public class Multiples
{
    public static int multof3and5(int num){
        int total = 0;
        for (int i = 0;i < num; i++){
            if (i % 3 == 0 || i % 5 == 0){
                total += i;
            }
        }
        return total;
    }

    public static void main(String[] args) {
        System.out.println(multof3and5(1000));
    }
}
