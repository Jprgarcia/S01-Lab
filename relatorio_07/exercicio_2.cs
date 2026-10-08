// https://onecompiler.com/csharp/455jjtfe3

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} (Lv.{Nivel}) usou um ataque comum!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Especie} (Lv.{Nivel}) atacou usando Folha Navalha!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel) { }

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"E em seguida, soltou uma imensa descarga eletrica!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Batalha de Exibicao ===");

        List<Pokemon> equipe = new List<Pokemon>();
        
        equipe.Add(new Pokemon("Eevee", 10));
        equipe.Add(new TipoPlanta("Bulbasaur", 12));
        equipe.Add(new TipoEletrico("Pikachu", 15));

        foreach (var poke in equipe)
        {
            Console.WriteLine("");
            poke.Atacar();
        }
    }
}
