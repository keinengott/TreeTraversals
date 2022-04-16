#include <iostream>
#include <sys/stat.h>
#include <vector>
#include <fstream>
#include <sstream>
#include "tree/tree.h"
#include "tree/node.h"

using namespace std;
string validateArgs(int argc, char* argv[]);
vector<string> getStrings(string fileName);
vector<string> splitString(string aString, char aDelim);
bool fileExists(string file);
string baseName = "";

int main(int argc, char* argv[])
{
    string fileName = validateArgs(argc, argv);
    cout<<baseName<<endl;
    vector<string> strings = getStrings(fileName);
    Tree t;
    t.buildTree(strings);
    t.printInOrder(baseName);
    t.printPostOrder(baseName);
    t.printPreOrder(baseName);
    return 0;
}

string validateArgs(int argc, char* argv[]) {
    if (argc > 2)
    {
        cout << "Too many arguments." << endl;
        exit(0);
    }
    if (argc == 2)
    {
        string file1 = argv[1];
        string file2 = argv[1];
        if (!fileExists(file1+".sp2020"))// I bet this is supposed to be 2021, so I'll check that as well
        {
            cout<<"File "<<file1<<".sp2020 does not exists, checking for "<<file2<<endl;
            if (!fileExists(file1+".sp2021"))
            {
                cout<<"File "<<file2<<".sp2021 also does not exist. exiting..."<<endl;
                exit(0);
            } else {
                baseName = file2;
                return file2+".sp2021";
            }
        } else {
            baseName = file1;
            return file1+".sp2020";
        }
    }
    baseName = "output";
    return "";
}

bool fileExists(string file)
{
    struct stat buffer;
    return (stat (file.c_str(), &buffer)==0);
}

vector<string> getStrings(string fileName) {
    vector<string> retStrings;
    ifstream file;
    if (fileName.length() > 0)
    {
        file.open(fileName);
        cin.rdbuf(file.rdbuf()); // read cin from file
        if (!file.is_open())
        {
            cout<<"Failed to open "<<fileName<<" exiting..."<<endl;
            exit(0);
        }
    }
    string currLine;
    vector<string> strings;
    while (getline(cin, currLine))
    {
        if (currLine == "EOF" || currLine == "eof") break;
        strings = splitString(currLine, ' ');
        for (string s : strings)
        {
            if((s == "EOF" || s == "eof") && retStrings.size() > 0) return retStrings;
            retStrings.push_back(s);
        }
    }
    if (retStrings.size() > 0) return retStrings;
    else {
        std::cerr<<"File "<<fileName<<" is empty. exiting..."<<std::endl;
        exit(0);
    }
}

vector<string> splitString(string aString, char aDelim) {
    vector<string> strings;
    stringstream ss(aString);
    string token;
    while (getline(ss, token, aDelim)) {
        strings.push_back(token);
    }
    return strings;
}

