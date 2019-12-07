//
//  Producto.swift
//  CannaMed
//
//  Created by user148984 on 10/28/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import Foundation
import UIKit

class Producto {
    
    var imagen: UIImage
    var marca: String
    var nombre: String
    var precio: String
    var descripcion: String
    
    init(imagen: UIImage, marca: String, nombre: String, precio: String, descripcion: String) {
        self.imagen = imagen
        self.marca = marca
        self.nombre = nombre
        self.precio = precio
        self.descripcion = descripcion
    }
    
    class func createArrayProductos() -> [Producto] {
        var tempProductos: [Producto] = []
        
        let producto1 = Producto(imagen: UIImage(named: "aceite-cannabis_1")!,
                                 marca: "Canopy Growth",
                                 nombre: "Aceite de extracto de THC",
                                 precio: "S/ 98.50",
                                 descripcion: "Alto en vaciloncito.")
        let producto2 = Producto(imagen: UIImage(named: "aceite-cannabis_2")!,
                                 marca: "Plena",
                                 nombre: "Aceite de extracto de CBD",
                                 precio: "S/ 110.50",
                                 descripcion: "Alto en control de ansiedad y estrés.")
        let producto3 = Producto(imagen: UIImage(named: "crema-cannabis_01")!,
                                 marca: "Canopy Growth",
                                 nombre: "Pomada de extracto de THC",
                                 precio: "S/ 75.90",
                                 descripcion: "Alto en hinchones sin dolor.")
        let producto4 = Producto(imagen: UIImage(named: "pildoras-cannabis_01")!,
                                 marca: "Canopy Growth",
                                 nombre: "Píldoras con 0.3 mg de THC",
                                 precio: "S/ 85.50",
                                 descripcion: "Bajo en calorías, pero mucha bajona.")
        let producto5 = Producto(imagen: UIImage(named: "aceite-cannabis_1")!,
                                 marca: "Canopy Growth",
                                 nombre: "Píldoras con 0.3 mg de THC",
                                 precio: "S/ 85.50",
                                 descripcion: "Bajo en calorías, pero mucha bajona.")
        
        tempProductos.append(producto1)
        tempProductos.append(producto2)
        tempProductos.append(producto3)
        tempProductos.append(producto4)
        tempProductos.append(producto5)
        
        return tempProductos
    }
}
