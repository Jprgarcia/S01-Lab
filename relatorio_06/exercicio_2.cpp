// https://onecompiler.com/cpp/454r7a5dh

#include <iostream>
#include <string>
using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    void setNome(string n) { nome = n; }
    void setArcana(string a) { arcana = a; }
    void setRank(int r) { rank = r; }

    // Getters
    string getNome() { return nome; }
    string getArcana() { return arcana; }
    int getRank() { return rank; }
    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial aliado;
    
    aliado.setNome("Ryuji Sakamoto");
    aliado.setArcana("Chariot");
    aliado.setRank(1);

    cout << "Rank inicial de " << aliado.getNome() << " (" << aliado.getArcana() << "): " << aliado.getRank() << "\n";

    aliado.subirRank();

    cout << "Rank atualizado de " << aliado.getNome() << " (" << aliado.getArcana() << "): " << aliado.getRank() << "\n";

    return 0;
}
