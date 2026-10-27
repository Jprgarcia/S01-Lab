// https://onecompiler.com/javascript/457duwprw

class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola); 
    }

    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} precisa implementar a propria habilidade!`);
    }

    entrarEmCombate() {
        console.log(`[${this.codinome}] puxou a ${this.#pistola.modelo} e preparou: ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return "Cortina de Fumaca";
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return "Flecha Rastreadora";
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return "Avanco Explosivo";
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes = []) {
        this.nome = nome;
        this.#agentes = agentes; 
    }

    iniciarPartida() {
        console.log(`\n=== Esquadrao ${this.nome} entrando em acao! ===`);
        this.#agentes.forEach(agente => agente.entrarEmCombate());
    }

    listarControladores() {
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}

// Main aqui
const omen = new Controlador('Omen', 'Ghost');
const viper = new Controlador('Viper', 'Frenzy');
const sova = new Iniciador('Sova', 'Sheriff');
const jett = new Duelista('Jett', 'Classic');

const timeAlpha = new Esquadrao('Alpha', [omen, viper, sova, jett]);

timeAlpha.iniciarPartida();

console.log("\n--- Controladores da Partida ---");
timeAlpha.listarControladores().forEach(c => console.log(`- ${c.codinome}`));
