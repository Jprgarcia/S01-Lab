// https://onecompiler.com/javascript/457durfm6

class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida -= pontos;
        if (this.#vida < 0) {
            this.#vida = 0;
        }
        console.log(`${this.apelido} sofreu dano! Vida restante: ${this.#vida}`);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usou um ataque generico!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Agua', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} disparou um Jato de Agua!`);
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usou o Chicote de Vinha!`);
        alvo.sofrerDano(15);
    }
}

// Deixando Main aqui
const meuSquirtle = new Squirtle('Zeca', 40);
const meuBulbasaur = new Bulbasaur('Buba', 30);

console.log("=== Batalha Pokemon Iniciada ===");
meuBulbasaur.atacar(meuSquirtle);
meuSquirtle.atacar(meuBulbasaur);
meuSquirtle.atacar(meuBulbasaur);

console.log("\n--- Relatorio de Vida ---");
console.log(`${meuSquirtle.apelido}: ${meuSquirtle.vida} HP`);
console.log(`${meuBulbasaur.apelido}: ${meuBulbasaur.vida} HP`);
