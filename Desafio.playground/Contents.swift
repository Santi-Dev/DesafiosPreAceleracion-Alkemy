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

let streetOne: Street = ["streetName":"Avenida", "number":"3", "numberOne":"4", "numberTwo":"76"]
let addressOne: Address = ("Cucuta", "Norte de Santander", streetOne, "Colombia", 345, "Apartamento", "Julioert", 2)

let streetTwo: Street = ["streetName":"Calle", "number":"3", "numberOne":"4", "numberTwo":"5"]
let addressTwo: Address = ("Cucuta", "Norte de Santander", streetTwo, "Colombia", 345, "Casa", "popie", nil)

let streetThree: Street = ["streetName":"Avenida", "number":"3", "numberOne":"4", "numberTwo":"5"]
let addressThree: Address = ("Cucuta", "Norte de Santander", streetThree, "Colombia", 345, "Apartamento", "diered", 23)


func printAddress(addressIn: Address){
    if addressIn.houseType != nil && addressIn.apartmentFloor != nil {
        switch addressIn.houseType {
        case "Casa":
            print("La direccion ingresada es \(addressIn.streetN["streetName"]!) \(addressIn.streetN["number"]!) # \(addressIn.streetN["numberOne"]!)-\(addressIn.streetN["numberTwo"]!)  ubicada en \(addressIn.city),\(addressIn.state),\(addressIn.country) ")
        case "Apartamento":
            print("La direccion ingresada es \(addressIn.streetN["streetName"]!) \(addressIn.streetN["number"]!) # \(addressIn.streetN["numberOne"]!)-\(addressIn.streetN["numberTwo"]!), Edificio \(addressIn.buildingName) piso # \(addressIn.apartmentFloor!); ubicado en \(addressIn.city), \(addressIn.state), \(addressIn.country)")
        default:
            print("jajajaja")
        }
    }else{
        print("Algun valor entre Tipo de casa y piso del apartamento")
    }
        
}

printAddress(addressIn: addressOne)
          


func returnApartmentFloorAndBuildingName(setString: [Address]) -> String{
    var stringReturn: [String] = []
    if setString[0].houseType != nil && setString[0].apartmentFloor != nil{
        stringReturn.append(contentsOf: setString[0].houseType!)
        stringReturn.append(contentsOf: setString[0].apartmentFloor!)
    }
    return stringReturn
}
    
var stringAddress: [Address] = []
stringAddress.insert(addressOne, at: 0)
stringAddress.insert(addressTwo, at: 1)
stringAddress.insert(addressThree, at: 2)

print(returnApartmentFloorAndBuildingName(setString: stringAddress))

