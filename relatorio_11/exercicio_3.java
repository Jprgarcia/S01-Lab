// https://onecompiler.com/java/45848bzgb

import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println("O alienigena " + nome + " apareceu num disco voador!");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println("O espirito " + nome + " atravessou a parede e deu um grito assustador!");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println("Investigando " + local + " - O local esta tranquilo, nada suspeito.");
        } else {
            System.out.println("Investigando " + local + " - Cuidado!");
            ser.manifestar();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Alienigena serpo = new Alienigena("Serpo");
        EspiritoYoukai turbo = new EspiritoYoukai("Turbo Granny");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        
        mapa.registrar("Escola Secundaria", serpo);
        mapa.registrar("Tunel Abandonado", turbo);

        System.out.println("=== Registros de Investigacao ===");
        mapa.investigar("Escola Secundaria");
        mapa.investigar("Tunel Abandonado");
        mapa.investigar("Parque da Cidade");
    }
}
