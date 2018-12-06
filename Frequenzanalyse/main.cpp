#include <iostream>
#include <string>
#include <list>
int main() {
    std::cout<< "Starte Eingabe" << std::endl;
    int result{0};
    int doppelt{0};
    bool  stop{false};
    std::list<int> alleErgebnisse{0};
    int letzteEingabe{0};
    {
        while (stop == false) {
            std::cin >> letzteEingabe;
            result += letzteEingabe;
            if (letzteEingabe == 80915){
                std::cout << result << std::endl;
                alleErgebnisse.sort();
                for (const auto &it : alleErgebnisse) {
                    std::cout << it << std::endl;
                }
            }
            for (const auto &it : alleErgebnisse) {
                if (it == result) {
                    std::cout << "erste getroffene frequenz ist " << result << std::endl;
                }
            }
            alleErgebnisse.push_back(result);
        }
        std::cin >> stop;
    }
    std::cout << result;
    return 0;
}