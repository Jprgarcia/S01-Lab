// https://onecompiler.com/csharp/455jj2t53

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"\nCombatente: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");
        
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Equipamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Forcas de Minas Tirith ===");

        CombatenteDeGondor soldado1 = new CombatenteDeGondor("Boromir", "Homens", "Capitao");
        CombatenteDeGondor soldado2 = new CombatenteDeGondor("Faramir", "Homens", "Guardaeiro");
        CombatenteDeGondor soldado3 = new CombatenteDeGondor("Beregond", "Homens", "Guarda da Cidadela");

        soldado1.Equipar("Espada Larga e Escudo");
        soldado3.Equipar("Lanca Longa");

        soldado1.ApresentarUnidade();
        soldado2.ApresentarUnidade();
        soldado3.ApresentarUnidade();
    }
}
