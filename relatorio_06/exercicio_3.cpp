// https://onecompiler.com/cpp/454r7ymkk

#include <iostream>
#include <string>
using namespace std;

class MembroInatel {
public:
    string nome;

    void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << ".\n";
    }
};

class Aluno : public MembroInatel {
public:
    string curso;

    void seApresentar() {
        cout << "Meu nome e " << nome << " e estudo no curso de " << curso << ".\n";
    }
};

class Professor : public MembroInatel {
public:
    string disciplina;

    void seApresentar() {
        cout << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << ".\n";
    }
};

int main() {
    Aluno aluno1;
    aluno1.nome = "Joao";
    aluno1.curso = "Engenharia de Software";

    Professor prof1;
    prof1.nome = "Pedro";
    prof1.disciplina = "Programacao Orientada a Objetos";

    aluno1.seApresentar();
    prof1.seApresentar();

    return 0;
}
