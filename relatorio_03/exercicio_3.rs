use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    println!("Numeros no intervalo terminados em {} ---", digito);
    for i in limite_inferior..=limite_superior {
        if i % 10 == digito {
            println!("{}", i);
        }
    }
}

fn ler_i32(msg: &str) -> i32 {
    let mut resultado = 0;
    for _ in 0..10 {
        println!("{}", msg);
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Erro");
        
        if let Ok(num) = input.trim().parse() {
            resultado = num;
            break;
        }
    }
    resultado
}

fn main() {
    let digito = ler_i32("Digite o digito final desejado (0 a 9):");
    let inf = ler_i32("Digite o limite inferior:");
    let sup = ler_i32("Digite o limite superior:");

    imprimir_terminados_em(digito, inf, sup);
}

https://onecompiler.com/rust/44zz8pkdh
