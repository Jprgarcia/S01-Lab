// https://onecompiler.com/csharp/455jkmdd9

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem confirmada da criatura: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        // A farmada de aura abaixo
        Console.WriteLine($"A entidade {Nome} emergiu das profundezas obscuras do oceano, exalando um cheiro de maresia e decadencia!");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        // Ignore o texto lindo kk
        base.Manifestar();
        Console.WriteLine($"A estranha entidade fungoide {Nome} voou pelos ceus batendo suas asas zumbidoras!");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        _catalogo.Add(e);
        Console.WriteLine($"[Registro] {Nome} anotou os dados de {e.Nome} em seu diario.");
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n=== Leitura do Diario de {Nome} ===");
        foreach (var ser in _catalogo)
        {
            Console.WriteLine("");
            ser.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Pesquisador prof = new Pesquisador("Dr. Armitage");

        EntidadeCosmica cthulhu = new EntidadeCosmica("Cthulhu");
        
        Profundo dagon = new Profundo("Dagon");
        dagon.Origem = "Fossa de Y'ha-nthlei";
        
        MiGo alien = new MiGo("Trabalhador Yuggothiano");
        alien.Origem = "Yuggoth (Plutao)";

        Console.WriteLine("=== Expedicao Iniciada ===\n");
        prof.Catalogar(cthulhu);
        prof.Catalogar(dagon);
        prof.Catalogar(alien);

        prof.LerCatalogo();
    }
}
