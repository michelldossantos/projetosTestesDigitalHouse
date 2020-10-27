import UIKit
import Foundation
//
//
////função com retorno boll
//func entendeu() -> Bool{
//    return true
//}
//
//
////função sem retorno, sem imprime na tela algo
//func ola(){
//    print("Oi, tudo bem?")
//}
//
//
////função com retorno e recebendo parâmetros!
//func retorneEsseNumero(nun:Int) -> Int {
//    return nun
//}
//
//// utilizando a função com retorno boll
//print(entendeu())
//
////utilizando a função sem retorno, sem imprime na tela algo
//ola()
//
//
//// utilizando a função com retorno e recebendo parâmetros!
//print(retorneEsseNumero(nun: 22))
//
//
//
//1. Definir três métodos que imprimam saudações diferentes em tela e sejam executados da seguinte forma:
//cumprimentarA(pessoa: “João”) cumprimentar(a: “João”) cumprimentarA(“João”)

//Maneira 1
//func cumprimentarA(pessoa: String) {
//    print("Olá \(pessoa)")
//
//}
//
////Maneira 2
//
//func cumprimentar(a: String) {
//    print("Bom dia \(a)")
//
//}
//
////Maneira 3, pouco utilizado
//func cumprimentarA(_ nome : String){ // não precisa declalar o nome do parâmetro
//    print("Tudo bem , \(nome) ?")
//}
//
//
//
//cumprimentarA(pessoa: "Michel")
//cumprimentar(a: "Michel")
//cumprimentarA("Michel")






////2. Escrever o método eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool deve usar dois números inteiros como parâmetros e retornar true se o primeiro número for menor que o segundo número ou false , caso contrário.
////• Invocar o método com os números 3 e 5 e imprimir na tela o resultado.
////• Invocar o método com os números 7 e 5 e imprimir na tela o resultado.
////• Invocar o método com os números 10 e 10; e imprimir na tela o resultado.
//
//
//
//func  eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool{
//        return oPrimeiro<oSegundo
////    if oPrimeiro<oSegundo {
////        return true
////    }else{
////        return false
////    }
//}
//
//
//print(eMenor(oPrimeiro: 3, oSegundo: 5 ))
//print(eMenor(oPrimeiro: 7, oSegundo: 5 ))
//print(eMenor(oPrimeiro: 10, oSegundo: 10 ))







//3. Escrever o método eImparMaiorQueDez(umNumero: Int) -> Bool que deve analisar um número inteiro como parâmetro e retornar true se o número for ímpar e maior do que dez e false, caso contrário.
//• Invocar o método com o número 3 e imprimir na tela o resultado.
//• Invocar o método com o número 4 e imprimir na tela o resultado.
//• Invocar o método com o número 13 e imprimir na tela o resultado. • Invocar o método com o número 14 e imprimir na tela o resultado.
//Ajuda: o operador % calcula o resto da divisão entre dois números inteiros. (Ex.: “5 % 2” dá 1 como resultado; enquanto “4 % 2” dá 0 como resultado).


//func eImparMaiorQueDez(umNumero: Int) -> Bool{
//    if umNumero%2==1 && umNumero>10 {
//
//            return true
//    }
//    return false
//}
//
//
//print(eImparMaiorQueDez(umNumero: 3))
//print(eImparMaiorQueDez(umNumero: 4))
//print(eImparMaiorQueDez(umNumero: 13))
//print(eImparMaiorQueDez(umNumero: 14))
//print(eImparMaiorQueDez(umNumero: 15))

//1. Imprima na tela a soma dos primeiros dez números naturais ÍMPARES elevados ao quadrado

//func somaImparQuadrado() -> Int {
//    var index:Int = 1 // index para saber se o número é impar ou par
//    var valores = [Int]() // array vazio para os números impar
//
//
//    while valores.count < 10{ // laço enquanto o tamanho do array for menor que dez
//        if index%2 != 0 {
//            valores.append((index * index) ) // adicina o valor do index ao quadrado no array
//        }
//        index+=1
//
//    }
//
//    return valores.reduce(0, +) // soma de todos os valores dentro de um array
//}
//
//
//print(somaImparQuadrado())



//2. Imprimir números aleatórios entre 0 e 5, até que se imprima um 3. Ajuda: A função arc4random_uniform(_ n: Int) (definida na biblioteca Faundation) retorna um número aleatório entre 0 e o parâmetro, exemplo.
//var numero = arc4random_uniform(5)


func aleatorioAte3() {

    var nunAleatorio: Int = 0 // cria var que irá receber os números sorteados

    while nunAleatorio != 3 { // enquanto o número for diferente de 3
        nunAleatorio = Int(arc4random_uniform(5)) //sorteia um numero até 5
        print(nunAleatorio) // imprime na tela
    }

}


aleatorioAte3() // chama a função


var idade : Int? = 0

print(idade)






