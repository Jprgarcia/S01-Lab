#include <iostream>

using namespace std;

int main() {
    int matriz_solar[5][5] = {0};
    int opcao, fileira, coluna;
    
    while(true) {
        cout << "\n=== TELEMETRIA DO PAINEL SOLAR ===\n";
        cout << "1. Ativar Celula\n";
        cout << "2. Ver Mapa da Matriz\n";
        cout << "3. Sair\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;
        
        if (opcao == 1) {
            cout << "Digite a fileira (0-4): ";
            cin >> fileira;
            cout << "Digite a coluna (0-4): ";
            cin >> coluna;
            
            if (fileira >= 0 && fileira <= 4 && coluna >= 0 && coluna <= 4) {
                if (matriz_solar[fileira][coluna] == 0) {
                    matriz_solar[fileira][coluna] = 1;
                    cout << "Sucesso: Celula solar ativada!\n";
                } else {
                    cout << "Erro: Celula solar ja esta em operacao!\n";
                }
            } else {
                cout << "Coordenadas invalidas!\n";
            }
        } 
        else if (opcao == 2) {
            cout << "--- Mapa da Matriz Solar ---\n";
            for(int i = 0; i < 5; i++) {
                for(int j = 0; j < 5; j++) {
                    cout << "[" << matriz_solar[i][j] << "] ";
                }
                cout << "\n";
            }
        } 
        else if (opcao == 3) {
            break;
        }
    }
    
    int celulas_ativas = 0;
    int celulas_inativas = 0;
    
    for(int i = 0; i < 5; i++) {
        for(int j = 0; j < 5; j++) {
            if (matriz_solar[i][j] == 1) {
                celulas_ativas++;
            } else {
                celulas_inativas++;
            }
        }
    }
    
    float capacidade_operacional = (celulas_ativas / 25.0) * 100.0;
    
    cout << "\n=== RELATORIO FINAL DE OPERACAO ===\n";
    cout << "Total de celulas ATIVAS: " << celulas_ativas << "\n";
    cout << "Total de celulas INATIVAS: " << celulas_inativas << "\n";
    cout << "Capacidade Operacional: " << capacidade_operacional << "%\n";
    
    return 0;
}

// https://onecompiler.com/cpp/453fz8xs7
