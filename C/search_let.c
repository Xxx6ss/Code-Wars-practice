//
//  main.c
//  practice
//
//  Created by Andrew Kireev on 19.05.2020.
//  Copyright © 2020 Andrew Kireev. All rights reserved.
//

#include <stdio.h>

#include<string.h>
#include<stdlib.h>
#include<stdbool.h>

#include <stdlib.h>

char *change(const char *str_in) {
    char str[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char str_low[] = "abcdefghijklmnopqrstuvwxyz";
    char *final_str = (char*) malloc(25*sizeof(char));
    char* ptr_final = final_str;
    int m = 0;
    while(m < 26) {
      *final_str = '0';
      final_str++;
        m++;
    }
    final_str = ptr_final;
    //  <----  hajime!
      while(*str_in != '\0'){
        for(int i = 0; i < 26; ++i) {
          if(*str_in == str[i] || *str_in == str_low[i]) {
              *final_str = '1';
              continue;
            }
        final_str++;
        }
          str_in++;
          final_str = ptr_final;
    }
    
    return final_str;

}
    


int main(int argc, const char * argv[]) {
    printf("%s\n", change("tjLadatpcBMQLfdsgrerBtfwkbLbblafTH"));
    return 0;
}
