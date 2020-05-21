//
//  main.cpp
//  CodeWars_C++
//
//  Created by Andrew Kireev on 20.05.2020.
//  Copyright © 2020 Andrew Kireev. All rights reserved.
//

#include <iostream>
#include <sstream>
#include <cmath>


double convert(std::string number) {
    std::cout  << number << std::endl;
    float j = 0.1;
    double num = 0;
    double last_p = 0;
    bool com = false;
    for(auto c : number) {
        if (com == false) {
            if (c != '.') {
                num *= 10;
                num += (c - '0');
            }
            else
                com = true;
        }
        else {
            long double n = (c - '0');
            last_p += n * j;
            j *= 0.1;
//            std::cout << last_p << std::endl;
        }
    }
//    last_p = last_p +  num;
//    num = num + last_p;
//    std::cout << last_p << std::endl;
    last_p = round(last_p*100000)/100000;
    num = round(num*100000)/100000;
    return last_p + num;
}

std::string calculateString(std::string calcIt)
{
    std::cout  << calcIt << std::endl;
    std::string result = "";
    bool is_found = true;
    std::string::iterator it = calcIt.begin();
    while(is_found) {
        is_found = false;
        it = std::find_if(it, calcIt.end(), [](char c){
            return c >= '0' && c <= '9' || c == '+' || c == '-'
            || c == '*' || c == '/' || c == '.';
        });
        if (it != calcIt.end()) {
            is_found = true;
            result += *it++;
//            std::cout << result << std::endl;
        }
    }
    auto itter = std::find_if(result.begin(), result.end(), [](char c){
        return c =='+' || c == '-'|| c == '*' || c == '/';
    });
    std::string first = result.substr(0, itter - result.begin());
    std::string second = result.substr(itter - result.begin() + 1, result.end() - result.begin());
    char sign = *std::find_if(result.begin(), result.end(), [](char c){
        return c =='+' || c == '-'|| c == '*' || c == '/';
    });
    double first_p, second_p;
    first_p = convert(first);
    second_p = convert(second);
    float final;
    if (sign == '+') {
        final = first_p + second_p;
//        if (final != int(final))
//            final = int(final) + 1;
    } else if (sign == '-') {
        final = first_p - second_p;
//        if (final != int(final))
//            final = int(final) - 1;
//         final = int(final);
    } else if (sign == '*') {
        final = first_p * second_p;
    } else if (sign == '/') {
        final = first_p / second_p;
    }
    if (final > 0)
        if(final - int(final) > 0.5)
            final = int(final) + 1;
        else
            final = int(final);
    else
        if(final + int(final) < -0.5)
            final = int(final) - 1;
        else
            final = int(final);
//     if (final != int(final))
//         final = int(final) + 1;
    auto s = std::to_string(int(final));

    return s;
}



int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << calculateString("1_,$1)9sfa!:4m1.lk0_rmjk%[%tnqof$?(8%]w;)vhzk5p&rxo,)ne$(r0g[iuosfivl;h;&ka&)fh%1x!6]f_:y%?hlcu,lt/cnfe;[acn2g)h0i)[plg&(i4yxm%?[z(4&") << std::endl;
    //std::cout << "Hello, World!\n";
//    std::cout << convert("22.55") << std::endl;
    return 0;
}
