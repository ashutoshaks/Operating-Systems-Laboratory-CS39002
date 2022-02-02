#include <cstring>
#include <sstream>

#include "header.h"
using namespace std;

vector<string> split(string& str, char delim) {
    vector<string> tokens;
    stringstream ss(str);
    string tmp;
    while (getline(ss, tmp, delim)) {
        tokens.push_back(tmp);
    }
    return tokens;
}

vector<char*> cstrArray(vector<string>& args) {
    vector<char*> args_(args.size() + 1);
    for (int i = 0; i < (int)args.size(); i++) {
        args_[i] = (char*)malloc((args[i].length() + 1) * sizeof(char));
        strcpy(args_[i], args[i].c_str());
    }
    args_[args.size()] = (char*)malloc(sizeof(char));
    args_[args.size()] = nullptr;
    // strcpy(args_[args.size()], "\0");
    return args_;
}