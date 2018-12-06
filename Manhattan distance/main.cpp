#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include <algorithm>
#include <map>
#include <fstream>

struct koordinate{
    int x_koordinate;
    int y_koordinate;
};

std::vector<koordinate> eingabeDerKoordinaten() {
    int xKoordinate;
    int yKoordinate;
    char carry;
    std::vector<koordinate> ergebnis{};
    while(1) {
        std::cin >> xKoordinate >> carry >> yKoordinate;
        if(xKoordinate >= 0 && yKoordinate >= 0) {
            koordinate myKoord{xKoordinate, yKoordinate};
            ergebnis.push_back(myKoord);
        } else break;
    }
    return ergebnis;
}
int manhattanDistance(koordinate koordinate1, koordinate koordinate2){
    return abs(koordinate1.x_koordinate-koordinate2.x_koordinate) + abs(koordinate1.y_koordinate -koordinate2.y_koordinate);
}
void MatrixAusgeben(std::map<koordinate, int> abstaende, int x_max, int y_max){
    int matrix[x_max][y_max];
    for(auto it: abstaende){
        matrix[it.first.x_koordinate][it.first.y_koordinate] = it.second;
    }
    for(int i = 0; i < x_max+1 ; i++){
        for(int j = i; j < y_max+1; j++){
            std::cout << matrix[i][j] << " ";
        }
        std::cout << std::endl;
    }
}
void MatrixAbstandeBerechnen(const std::vector<koordinate> &Koordinaten){
    std::map<koordinate, int > meinAbstandsRaum{};
    int x_max{0};
    int y_max{0};
    int identifier{-2};
    for(auto it: Koordinaten) {
        meinAbstandsRaum.insert(std::pair<koordinate, int>(it, identifier));
        identifier--;
        if (x_max < it.x_koordinate) {
            x_max = it.x_koordinate;
        }
        if (y_max < it.y_koordinate) {
            y_max = it.y_koordinate;
        }
    }
    koordinate aktuellBerechneterGitterpunkt{};
    bool gleicherAbstand{false};
    int gleicherAbstandWert{};
    int naehsterNachbar{0};
    for(int x_koor = 0; x_koor <= x_max; x_koor++){
        aktuellBerechneterGitterpunkt.x_koordinate = x_koor;
        for (int y_koor = 0; y_koor <= y_max ; y_koor++){
            aktuellBerechneterGitterpunkt.y_koordinate = y_koor;
            int naehsterAbstand{x_max+y_max};
            for(auto it: Koordinaten) {
                if(naehsterAbstand > manhattanDistance(it, aktuellBerechneterGitterpunkt)){
                    naehsterAbstand = manhattanDistance(it, aktuellBerechneterGitterpunkt);
                }
                if(naehsterAbstand = manhattanDistance(it, aktuellBerechneterGitterpunkt)){
                    gleicherAbstand = true;
                    gleicherAbstandWert = naehsterAbstand;
                }
            }
            if(gleicherAbstand && naehsterAbstand==gleicherAbstandWert){
                meinAbstandsRaum.insert(std::pair<koordinate,int>(aktuellBerechneterGitterpunkt, -1));
            } else{
                meinAbstandsRaum.insert(std::pair<koordinate,int>(aktuellBerechneterGitterpunkt, naehsterAbstand));
            }
        }
    }
    MatrixAusgeben(meinAbstandsRaum,x_max,y_max);
}

int main() {
    std::vector<koordinate> meineKoordinaten = eingabeDerKoordinaten();
    for (auto it: meineKoordinaten){
        std::cout << it.x_koordinate << " " << it.y_koordinate<< std::endl;
    }
    MatrixAbstandeBerechnen(meineKoordinaten);

    return 0;
}