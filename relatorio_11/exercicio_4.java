// https://onecompiler.com/java/45848ftus

import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Ferver ate virar uma gelatina consistente com limao e pimenta.";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cortar a raiz em rodelas e fritar em fogo baixo como batata.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Banquete servido por " + nome + " preparado na panela de " + panela.getMaterial());
        for (Monstro monstro : ingredientes) {
            System.out.println("Prato: " + monstro.getNome());
            System.out.println("Preparo: " + monstro.receita());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime Verde");
        Mandragora mandra = new Mandragora("Mandragora Grande");

        Cozinheiro senshi = new Cozinheiro("Senshi", "Ferro Batido");
        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandra);

        senshi.servirBanquete();
    }
}
