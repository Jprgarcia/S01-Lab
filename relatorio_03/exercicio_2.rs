use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let diferenca = if palpite > numero_secreto {
        palpite - numero_secreto
    } else {
        numero_secreto - palpite
    };
    
    diferenca <= 5
}

fn main() {
    let numero_secreto: i32 = 44;

    for _ in 0..10 {
        println!("Digite seu palpite:");
        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        
        if let Ok(palpite) = entrada.trim().parse::<i32>() {
            
            if acertou_o_alvo(palpite, numero_secreto) {
                let distancia = if palpite > numero_secreto {
                    palpite - numero_secreto
                } else {
                    numero_secreto - palpite
                };

                println!("Parabens, voce acertou o alvo!");
                println!("Voce ficou a apenas {} unidade(s) do numero secreto ({}).", distancia, numero_secreto);
                break;
            } else {
                println!("Voce passou longe! Tente novamente.");
            }
            
        }
    }
}

https://onecompiler.com/rust/44zz7p3zn
