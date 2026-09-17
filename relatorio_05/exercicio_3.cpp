#include <iostream>

using namespace std;

int main() {
    float capacidade_maxima, peso_atual = 0.0, peso_operacao;
    int opcao;
    
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidade_maxima;
    
    while(true) {
        cout << "\n=== SISTEMA DE CARGA DO DRONE ===\n";
        cout << "1. Verificar Carga\n";
        cout << "2. Carregar Pacote\n";
        cout << "3. Descarregar Pacote\n";
        cout << "4. Encerrar Operacao\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;
        
        if (opcao == 1) {
            cout << "Carga Atual: " << peso_atual << " kg / " << capacidade_maxima << " kg\n";
            cout << "Espaco Disponivel: " << capacidade_maxima - peso_atual << " kg\n";
        } 
        else if (opcao == 2) {
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> peso_operacao;
            
            if (peso_atual + peso_operacao > capacidade_maxima) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada.\n";
            } else {
                peso_atual += peso_operacao;
                cout << "Pacote adicionado com sucesso!\n";
            }
        } 
        else if (opcao == 3) {
            cout << "Digite o peso do pacote a ser descarregado (kg): ";
            cin >> peso_operacao;
            
            if (peso_atual - peso_operacao < 0) {
                cout << "Erro: Nao e possivel remover mais peso do que o carregado.\n";
            } else {
                peso_atual -= peso_operacao;
                cout << "Pacote descarregado com sucesso!\n";
            }
        } 
        else if (opcao == 4) {
            cout << "Encerrando sistema de telemetria...\n";
            break; // Encerra o laco
        } 
        else {
            cout << "Opcao invalida! Tente novamente.\n";
        }
    }
    
    return 0;
}

// https://onecompiler.com/cpp/453fytagd
