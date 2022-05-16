import Foundation

//let mayorAMenor = {(s1: String, s2: String) in return s1>s2}
let palabras = ["abcde","wxyz"]
//let palabrasOrdenadasAlRevez = palabras.sorted(by: mayorAMenor)
//print(palabrasOrdenadasAlRevez)

// ASIGNAR UN CLOSURE A UNA VARIABLE

func ordenaAlReves(palabras: [String]) -> [String]{
    let mayorAMenor = {(s1: String, s2: String) in return s1>s2}
    return palabras.sorted(by: mayorAMenor)
}

print(ordenaAlReves(palabras: palabras))
// En este ejemplo el closure fue asignado a mayorAMenor

// INFERENCIA DE TIPOS POR CONCEPTO
    
func ordenaAlRevesOne(palabras: [String]) -> [String]{
    return palabras.sorted(by: {(s1: String, s2: String) in return s1>s2})
}

print(ordenaAlRevesOne(palabras: palabras))
// En este ejemplo la inferencia de datos hacer tener un codigo corto y limpio

// RETORNO IMPLICITO

func oredenaAlRevesTwo(palabras: [String]) -> [String]{
    return palabras.sorted(by:{s1,s2 in s2<s1})
}

print(oredenaAlRevesTwo(palabras: palabras))
 
// TRAILING CLOSURE

func ordenaAlRevesThree(palabras: [String]) -> [String]{
    return palabras.sorted(by: {$1<$0})
}

print(ordenaAlRevesThree(palabras: palabras))

/* REPASO:
 Actividad de repaso
 Sobre la base del contenido abordado, podemos afirmar que las
 funciones pueden recibir como parámetro otras funciones. Sin
 embargo, esto no equivale a recibir una closure como parámetro de
 una función.
 Verdadero.
 Falso.
 Justificación: vimos durante el desarrollo de este tema que las
 funciones pueden recibir como parámetro otras funciones, y esto es
 igual a recibir una closure como parámetro de una función.
*/

/* REPASO:
 Ejercitación 1 (en el Playground de Xcode)
 max(by:) es una función de Swift para arreglos que retorna el
 elemento máximo de la secuencia usando la comparación indicada en
 la closure que recibe como parámetro.
 Según esto y dada la siguiente función, lleva a cabo las tareas
 asignadas a continuación.

 func obtenerMaximo(arreglo: [String]) -> String? {
 func compararMaximo(s1: String, s2: String) -> Bool {
 return s1.count < s2.count
 }
 return arreglo.max(by: compararMaximo(s1:s2))
 }

 1. Cambia la sintaxis para que max(by:) reciba una closure con nombre
 y no una función.
 2. Modifica la closure del punto anterior para que utilice nombres de
 argumentos abreviados.
 3. Modifica la closure del punto anterior para que tenga retorno
 implícito.
 4. Cambia la sintaxis de la closure que recibe max(by:) del punto
 anterior a trailing closure.
 */

/*func obtenerMaximo(arreglo: [String]) -> String? {
    func compararMaximo(s1: String, s2: String) -> Bool {
        return s1.count < s2.count
    }
    return arreglo.max(by: compararMaximo(s1:s2))!
}

print(obtenerMaximo(arreglo: palabras)) */

func obtenerMaximo(palabras: [String]) -> String{
    let compararMaximo = {(s1: String, s2: String) in return s1.count < s2.count}
    return palabras.max(by: compararMaximo) ?? "0"
}
print(palabras[0].count)
print(palabras[1].count)

print(obtenerMaximo(palabras: palabras))
