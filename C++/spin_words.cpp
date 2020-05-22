#include <iostream>
#include <string_view>
#include <algorithm>



std::string spinWords(const std::string &str)
{
//    std::cout << str << std::endl;
    std::string new_s;
    std::string_view sttr = str;
    bool n_line = false;
    
    while(true) {
        
        size_t tab = sttr.find(' ');
        size_t next = sttr.find_first_of('\n');
        if (next < tab)
            tab = next;
        std::string s = std::string(sttr.substr(0, tab));
//        std::cout << s << std::endl;
        if (s.size() >= 5) {
            std::reverse(s.begin(), s.end());
            if (new_s.size() != 0 && n_line == false)
                new_s += " ";
            new_s += s;
            n_line = false;
            if (next == tab) {
                new_s += '\n';
                n_line = true;
            }
//            std::cout << new_s << std::endl;
        } else {
            if (new_s.size() != 0 && n_line == false)
                new_s += " ";
            new_s += s;
            n_line = false;
            if (next == tab) {
                new_s += '\n';
                n_line = true;
            }
        }
        if (tab == sttr.npos){
            break;
            
        } else {
            sttr.remove_prefix(tab + 1);
            
        }
    }
    new_s.pop_back();
    
    
//    if(new_s.find(' ') != new_s.npos)
//        return new_s;
//    else
    return new_s;
}// spinWords



int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << spinWords("for I I for forever of pizza because they pizza pizza while eat or spaghetti wish many") << std::endl;
    //std::cout << "Hello, World!\n";
//    std::cout << convert("22.55") << std::endl;
    return 0;
}
