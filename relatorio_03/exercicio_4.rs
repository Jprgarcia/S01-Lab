use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    let npt = (prova1 + prova2) / 2.0;
    let pf = (npt * 0.6) + (redacao * 0.4);

    if pf >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
    } else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }
    pf
}

fn ler_f64(msg: &str) -> f64 {
    let mut resultado = 0.0;
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
    let p1 = ler_f64("Digite a nota da Prova Teorica 1:");
    let p2 = ler_f64("Digite a nota da Prova Teorica 2:");
    let red = ler_f64("Digite a nota da Redacao:");

    let final_pf = calcular_pontuacao(p1, p2, red);
    println!("Pontuacao Final: {:.2}", final_pf);
}

https://onecompiler.com/rust/44zz8vh9y
