// https://onecompiler.com/java/45847z6gq

abstract class Morador {
    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void apresentar();
}

class Mago extends Morador {
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e uso o feitico " + feitico);
    }
}

class DemonioDoFogo extends Morador {
    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o demonio " + getNome() + " e eu faco o castelo andar.");
    }
}

public class Main {
    public static void main(String[] args) {
        Morador m1 = new Mago("Howl", "Disfarce");
        Morador m2 = new DemonioDoFogo("Calcifer");

        m1.apresentar();
        m2.apresentar();
    }
}
