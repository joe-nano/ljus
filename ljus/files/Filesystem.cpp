//
// Created by Erik Partridge on 24/08/17.
//

#include "Filesystem.h"

using namespace std;

bool Ljus::Filesystem::exists(const string& path) {
  struct stat buffer;
  return stat(path.c_str(), &buffer) == 0;
}


string Ljus::Filesystem::get(const string& path){
    
    if(!Ljus::Filesystem::exists(path)){
        throw ENOENT;
    }

    ifstream in { path };
    return {istreambuf_iterator<char>(in), istreambuf_iterator<char>()};
}

//Returns a SHA-512 hash of the file contents
string Ljus::Filesystem::hash(const string& path){
    //TODO
    return path;
}

void Ljus::Filesystem::put(const string& path, const string& contents){

    ofstream file;

    file.open(path, ios::out);
    file << contents;

    file.close();

}

void Ljus::Filesystem::prepend(const string& path, const string& data){

    if(!Ljus::Filesystem::exists(path)){
        string original = Ljus::Filesystem::get(path);
        ofstream file;
        file.open(path, ios::out);
        file << original << data;
        file.close();
    } else {
        ofstream file;
        file.open(path, ios::out);
        file << data;
        file.close();
    }

}

void Ljus::Filesystem::append(const string& path, const string& data){
    ofstream file;
    file.open(path, ios::app);
    file << data;
    file.close();
}

fs::perms Ljus::Filesystem::chmod(const string& path){
    fs::path p(path);
    fs::file_status s = status(p);
    return s.permissions();
}

void Ljus::Filesystem::chmod(const string& path, fs::perms perms){
    fs::permissions(path, perms);
}

void Ljus::Filesystem::remove(const string& path){
    fs::remove_all(path);
}

void Ljus::Filesystem::remove(std::vector<string> paths){
    for(unsigned int i = 0; i < paths.size(); i ++){
        Ljus::Filesystem::remove(paths.at(i));
    }
}