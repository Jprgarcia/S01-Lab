// https://onecompiler.com/cpp/454r6he4a

#include <iostream>
#include <string>
using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda& rival) {
        cout << "Apresentacao confirmada! A banda " << nome << " esta duelando contra " << rival.nome << "!\n";
        rival.energia -= potenciaSom;
    }
};

int main() {
    Banda banda1;
    banda1.nome = "The Rockers";
    banda1.integrantes = 4;
    banda1.potenciaSom = 30.5;
    banda1.energia = 100;

    Banda banda2;
    banda2.nome = "Metal Kings";
    banda2.integrantes = 5;
    banda2.potenciaSom = 40.0;
    banda2.energia = 100;

    // banda1 ataca banda2
    banda1.duelar(banda2);

    cout << "\n--- Status apos o duelo ---\n";
    cout << "Energia de " << banda1.nome << ": " << banda1.energia << "\n";
    cout << "Energia de " << banda2.nome << ": " << banda2.energia << "\n";

    return 0;
}
