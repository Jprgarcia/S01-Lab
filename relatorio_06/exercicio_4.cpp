// https://onecompiler.com/cpp/454r8aree

#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Hobbit {
public:
    string nome;

    virtual void fazerAtividade() {
        cout << "O hobbit " << nome << " esta aproveitando um dia tranquilo na Comarca.\n";
    }
};

class Jardineiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!\n";
    }
};

class Cozinheiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!\n";
    }
};

class Fazendeiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O fazendeiro " << nome << " esta colhendo vegetais e hortalicas em suas terras!\n";
    }
};

int main() {
    Jardineiro h1;
    h1.nome = "Samwise";

    Cozinheiro h2;
    h2.nome = "Bilbo";

    Fazendeiro h3;
    h3.nome = "Maggot";

    vector<Hobbit*> comunidade;
    comunidade.push_back(&h1);
    comunidade.push_back(&h2);
    comunidade.push_back(&h3);

    cout << "--- Atividades na Comarca ---\n";
    for (int i = 0; i < comunidade.size(); i++) {
        comunidade[i]->fazerAtividade();
    }

    return 0;
}
