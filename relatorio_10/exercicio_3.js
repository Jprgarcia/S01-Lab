// https://onecompiler.com/javascript/457dv37eq

class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `Criatura: ${this.criatura} | Nivel de Perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas;

    constructor(numero) {
        this.numero = numero;
        this.#fichas = [];
    }

    anotar(criatura, nivelDePerigo) {
        this.#fichas.push(new FichaDeCriatura(criatura, nivelDePerigo));
    }

    exibirFichas() {
        console.log(`\n=== Lendo o Diario Numero ${this.numero} ===`);
        this.#fichas.forEach(ficha => {
            console.log(ficha.descrever());
        });
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios;

    constructor(dono) {
        this.dono = dono;
        this.#funcionarios = [];
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`\n=== A Cabana do Misterio do ${this.dono} esta aberta! ===`);
        console.log("Funcionarios de plantao:");
        this.#funcionarios.forEach(func => {
            console.log(`- ${func.nome} (${func.cargo})`);
        });
    }
}

// Main
const diario3 = new DiarioMisterioso(3);
diario3.anotar('Gnomos', 'Baixo');
diario3.anotar('Multi-Urso', 'Medio');
diario3.exibirFichas();

const dipper = new Funcionario('Dipper Pines', 'Caixa');
const wendy = new Funcionario('Wendy Corduroy', 'Atendente');

const cabana = new CabanaDoMisterio('Stan Pines');
cabana.contratar(dipper);
cabana.contratar(wendy);
cabana.abrirAsPortas();
