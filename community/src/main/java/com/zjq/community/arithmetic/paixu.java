package com.zjq.community.arithmetic;

public class paixu {

    public static void maopao(int []a){
        int n = a.length;
        int temp;
        for(int i = 0;i<n-1;i++){
            for(int j = 0;j<n-i-1;j++){
                if(a[j]>a[j+1]){
                    temp = a[j+1];
                    a[j+1] = a[j];
                    a[j] = temp;
                }
            }
        }
    }

    public static void selction(int a[]){
        int n = a.length;
        int temp;
        for(int i = 0;i<n-1;i++){
            int max = i;
            for(int j = i;j<n;j++){
                if(a[j]>a[max]){
                    max = j;
                }
            }
            temp = a[max];
            a[max] = a[i];
            a[i] = temp;
        }
    }

    public static void print(int []a){
        for(int i = 0;i<a.length;i++){
            System.out.println(a[i]);
        }
    }


    public static void main(String[] args) {
        int a[] = {3,1,5,7,2,4,9,6,10,8};
       // maopao(a);
        selction(a);
        print(a);
    }
}
