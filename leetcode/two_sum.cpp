//
//  main.cpp
//  CodeWars_C++
//
//  Created by Andrew Kireev on 20.05.2020.
//  Copyright © 2020 Andrew Kireev. All rights reserved.
//

#include <iostream>
#include <string_view>
#include <algorithm>
#include <vector>

class Solution {
public:
    std::vector<int> twoSum(std::vector<int>& nums, int target) {
        for(int i = 0; i < nums.size() - 1; ++i) {
            int number = nums[i];
            for(int j = i + 1; j < nums.size(); j++) {
                if (target - number - nums[j] == 0)
                    return std::vector<int>{i, j};
            }
        }
        return std::vector<int>{};
    }
};




int main(int argc, const char * argv[]) {
    Solution s;
    std::vector<int> v {2, 7, 11, 15};
    auto z = s.twoSum(v, 9);
    for(auto i : z){
        std::cout << i << std::endl;
    }
    return 0;
}
