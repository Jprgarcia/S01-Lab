// https://onecompiler.com/javascript/457dvbccm

class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} concentrou aura e atacou ${alvo.nome} da Trupe Fantasma!`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`[Intensificador] ${this.nome} usou um soco reforcado com aura devastadora contra ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`[Transmutador] ${this.nome} moldou sua aura em eletricidade letal e disparou em ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`[Materializador] ${this.nome} conjurou correntes invisiveis para prender ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\n--- Trupe Fantasma vista em ${this.cidade} ---`);
        this.#aranhas.forEach(aranha => {
            console.log(`Membro #${aranha.numero}: ${aranha.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(aranha => aranha.numero === numero);
    }
}

// Main
const chrollo = new Aranha('Chrollo Lucilfer', 0);
const hisoka = new Aranha('Hisoka Morow', 4);

const trupeYorknew = new TrupeFantasma('Yorknew City', [chrollo, hisoka]);
trupeYorknew.revelarAranhas();

const alvo = trupeYorknew.buscarAranha(0);

const gon = new Intensificador('Gon Freecss');
const killua = new Transmutador('Killua Zoldyck');
const kurapika = new Materializador('Kurapika');

const equipeHunters = [gon, killua, kurapika];

console.log("\n=== Combate Iniciado ===");
equipeHunters.forEach(hunter => {
    hunter.atacar(alvo); 
});
