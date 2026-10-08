// https://onecompiler.com/csharp/455jk3z3c

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"O grimorio foi aberto. O feitico de preparo e: {FeiticoFavorito}.");
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"- {Nome}, o {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio GrimorioPessoal { get; set; }

    private List<Companheiro> _grupo;

    public Maga(string nome)
    {
        this.Nome = nome;
        this.GrimorioPessoal = new Grimorio();
        this._grupo = new List<Companheiro>();
    }

    public void Recrutar(Companheiro c)
    {
        this._grupo.Add(c);
        Console.WriteLine($"{Nome} recrutou {c.Nome} para a jornada.");
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo atual da maga {Nome}:");
        foreach (var aliado in _grupo)
        {
            aliado.Apresentar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Companheiro c1 = new Companheiro("Fern", "Aprendiz");
        Companheiro c2 = new Companheiro("Stark", "Guerreiro");

        Maga frieren = new Maga("Frieren");
        
        frieren.Recrutar(c1);
        frieren.Recrutar(c2);

        frieren.GrimorioPessoal.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        Console.WriteLine("");
        frieren.GrimorioPessoal.Abrir();
    }
}
