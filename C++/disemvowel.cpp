//
//  main.cpp
//  Illionois
//
//  Created by Andrew Kireev on 18.05.2020.
//  Copyright © 2020 Andrew Kireev. All rights reserved.
//

#include <iostream>



# include <string>
std::string disemvowel(std::string str)
{
    std::string vowels = "aeiouAEIOU";
    for(auto item : vowels){
        str.erase(std::remove_if(str.begin(), str.end(), [item](const char it){
            return item == it;
        }), str.end());
    }
     return str;
}


int main() {
    std::cout << disemvowel("This website is for losers LOL!") << std::endl;
    std::string vowels = "aeiouAEIOU";
    vowels.erase(std::remove(vowels.begin(), vowels.end(), 'o'));
    std::cout << vowels << std::endl;
    return 0;
}
