#include <iostream>
#include <fstream>
#include <cmath>
#include <string>
double f(double x, double y, double a){
    return sin(x+y+a);
}

int main(){
    for (int a = -10; a <= 10; ++a) {
        std::ofstream outFile("data" + std::to_string(a)+ ".txt");
        for (double x = -10.; x < 10.; x += 0.1)
            for (double y = -10; y < 10; y += 0.1)
                outFile << x << " " << y << " " << f(x,y,a) << "\n";
        outFile.close();
    }
}