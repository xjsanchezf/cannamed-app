//
//  Carrito.swift
//  CannaMed
//
//  Created by TIP on 11/29/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import Foundation
import UIKit

class Carrito {
    
    var imagen: UIImage
    var marca: String
    var nombre: String
    var precio: String
    var descripcion: String
    var cantidad: String
    
    init(imagen: UIImage, marca: String, nombre: String, precio: String, descripcion: String, cantidad: String) {
        self.imagen = imagen
        self.marca = marca
        self.nombre = nombre
        self.precio = precio
        self.descripcion = descripcion
        self.cantidad = cantidad
    }
    
    class func createArrayCompras() -> [Carrito] {
        var tempCompras: [Carrito] = []
        
        let carrito1 = Carrito(imagen: UIImage(named: "aceite-cannabis_1")!,
                                 marca: "Canopy Growth",
                                 nombre: "Aceite de extracto de THC",
                                 precio: "S/ 98.50",
                                 descripcion: "Alto en vaciloncito.",
                                 cantidad: "1")
        
        tempCompras.append(carrito1)
        
        return tempCompras
    }
}
