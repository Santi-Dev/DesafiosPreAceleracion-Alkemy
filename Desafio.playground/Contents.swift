import UIKit
import Foundation

/*
 Consigna desafío 1

 Para esta instancia de entrega, deberán desarrollar los puntos que se enumeran a continuación y entregarlo a través de un URL que redireccione al repo sobre el cual ustedes hayan trabajado.

 1. Definir una tupla que describa una dirección, con campos como ciudad, partido, provincia, calle, pais, codigoPostal, etc. Siéntanse libres de colocar todos los campos que consideren relevantes. Usar un diccionario para la calle con los campos nombreDeCalle, numero, entrecalle1 y entrecalle2.
 2. Dentro de la dirección, definir algunos tipos de datos opcionales, entre ellos piso y departamento.
 3. Definir tres direcciones en constantes.
 4. Escribir una función que reciba una dirección y la imprima como un String bien formateado. Hacer uso de la interpolación.
 5. Escribir una función que reciba un Array de direcciones y devuelva un String que contenga "piso: \(piso) ; depto: \(departamento)", SOLO para las direcciones que tengan definidos tanto un piso como un departamento.
*/

// Solucion 1

// Tipos para las constantes de calle y direccion
typealias Street = ([String:String])
typealias Address = (city: String, state: String, streetN: [String:String], country: String, postalCode: Int, houseType: String?, buildingName: String, apartmentFloor: Int?)

// Direcciones constantes
let streetOne: Street = ["streetName":"Avenida", "number":"3", "numberOne":"4", "numberTwo":"76"]
let addressOne: Address = ("Cucuta", "Norte de Santander", streetOne, "Colombia", 3452, "Apartamento", "Continental", 2)

let streetTwo: Street = ["streetName":"Transversal", "number":"70", "numberOne":"83", "numberTwo":"21"]
let addressTwo: Address = ("Medellin", "Antioquia", streetTwo, "Colombia", 4365, "Casa", "Casa Familiar", nil)

let streetThree: Street = ["streetName":"Calle", "number":"98", "numberOne":"12", "numberTwo":"33"]
let addressThree: Address = ("Bogota", "Cundinamarca", streetThree, "Colombia", 9896, "Apartamento", "Holiday Inn", 23)

// Funcion de impresion de una Direccion
func printAddress(addressIn: Address){
    if addressIn.houseType != nil || addressIn.apartmentFloor != nil {
        switch addressIn.houseType {
        case "Casa":
            print("La direccion ingresada es \(addressIn.streetN["streetName"]!) \(addressIn.streetN["number"]!) # \(addressIn.streetN["numberOne"]!)-\(addressIn.streetN["numberTwo"]!), Casa; ubicada en \(addressIn.city), \(addressIn.state), \(addressIn.country) ")
        case "Apartamento":
            print("La direccion ingresada es \(addressIn.streetN["streetName"]!) \(addressIn.streetN["number"]!) # \(addressIn.streetN["numberOne"]!)-\(addressIn.streetN["numberTwo"]!), Edificio \(addressIn.buildingName) piso # \(addressIn.apartmentFloor!); ubicado en \(addressIn.city), \(addressIn.state), \(addressIn.country)")
        default:
            print("No es un tipo de inmueble esperado")
        }
    }else{
        print("Algun valor entre Tipo de casa y Piso del apartamento es nulo, asegurate de revisar")
    }
        
}

printAddress(addressIn: addressTwo)
          

// Funcion de impresion parametros apartamento y piso de una Direccion
func returnApartmentFloorAndBuildingName(setString: [Address]) -> [String]{
    var stringReturn: [String] = []
    if setString[0].houseType != nil && setString[0].apartmentFloor != nil{
        stringReturn.append(setString[0].houseType!)
        stringReturn.append(String(setString[0].apartmentFloor!))
    }
    if setString[1].houseType != nil && setString[1].apartmentFloor != nil{
        stringReturn.append(setString[1].houseType!)
        stringReturn.append(String(setString[1].apartmentFloor!))
    }
    if setString[2].houseType != nil && setString[2].apartmentFloor != nil{
        stringReturn.append(setString[2].houseType!)
        stringReturn.append(String(setString[2].apartmentFloor!))
    }
    return stringReturn
    
}
 
// Creacion de string para enviar a la funcion
var stringAddress: [Address] = []
stringAddress.insert(addressOne, at: 0)
stringAddress.insert(addressTwo, at: 1)
stringAddress.insert(addressThree, at: 2)

print(returnApartmentFloorAndBuildingName(setString: stringAddress))

