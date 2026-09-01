use std::io;

fn validar_placa(placa: &str) -> bool {
    let mut maiusculas = 0;
    let mut numeros = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase() {
            maiusculas += 1;
        } else if c.is_numeric() {
            numeros += 1;
        }
    }

    placa.len() >= 7 && maiusculas >= 4 && numeros >= 2
}

fn main() {
    for _ in 0..10 {
        println!("Digite a placa do veiculo:");
        
        let mut placa = String::new();
        io::stdin().read_line(&mut placa).expect("Erro ao ler entrada");
        
        let placa_limpa = placa.trim();

        if validar_placa(placa_limpa) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida. Tente novamente!");
        }
    }
}

https://onecompiler.com/rust/44zz6btq2
