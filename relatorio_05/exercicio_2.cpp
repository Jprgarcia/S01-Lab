#include <iostream>

using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float confiabilidade_total = 1.0;
    
    for(int i = 0; i < tamanho; i++) {
        confiabilidade_total *= probabilidades[i];
    }
    
    return confiabilidade_total;
}

int main() {
    int n;
    cout << "Digite a quantidade de componentes do sistema: " << endl;
    cin >> n;
    
    float probs[100]; 
    
    for(int i = 0; i < n; i++) {
        cout << "Digite a probabilidade do componente " << i + 1 << " (ex: 0.95): " << endl;
        cin >> probs[i];
    }
    
    float total = calcular_confiabilidade_sistema(probs, n);
    cout << "Confiabilidade total do sistema: " << total << endl;
    
    return 0;
}

// https://onecompiler.com/cpp/453fy23jv
