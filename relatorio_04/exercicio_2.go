package main

import "fmt"

func main() {
	var tri1, tri2, tri3 int

	fmt.Print("Digite as vendas do 1º trimestre: ")
	fmt.Scanln(&tri1)
	fmt.Print("Digite as vendas do 2º trimestre: ")
	fmt.Scanln(&tri2)
	fmt.Print("Digite as vendas do 3º trimestre: ")
	fmt.Scanln(&tri3)

	total := tri1 + tri2 + tri3

	if total < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		fmt.Printf("Total de vendas: %d unidades\n", total)
		fmt.Print("Classificação: ")

		switch {
		case total >= 250:
			fmt.Println("Categoria Top Seller")
		case total >= 180 && total <= 249:
			fmt.Println("Categoria Sênior")
		case total >= 100 && total <= 179:
			fmt.Println("Categoria Pleno")
		}
	}
}

https://onecompiler.com/go/452mcv9as
