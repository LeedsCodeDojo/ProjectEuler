package io.github.leedscodedojo;

public class Palindrome {
    public static void main(String[] args) {
        int biggest = -1;
        int next = 0;
        for (int i = 999; i > 499; i--) {
            for (int j = i; j > 499; j--) {
                next = i * j;
                if(isPalindrome(next) && next > biggest){
                    biggest = next;
                }
            }
        }
        System.out.println(biggest);
    }
    private static boolean isPalindrome(int n){
        String s = Integer.toString(n);
        int length = s.length();
        for(int i = 0; i < 3; i++){
            char c1 = s.charAt(i);
            char c2 = s.charAt(length-i-1);
            if(c1 != c2){
                return false;
            }
        }
        return true;
    }
}