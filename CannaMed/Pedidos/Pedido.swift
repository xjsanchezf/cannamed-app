//
//  Pedido.swift
//  CannaMed
//
//  Created by TIP on 11/29/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import Foundation
import UIKit

class Pedido {

    var fecha: String
    var subtotal: String
    var cantidad: String
    
    init(fecha: String, subtotal: String, cantidad: String) {
        self.fecha = fecha
        self.subtotal = subtotal
        self.cantidad = cantidad
    }
    
    class func createArrayPedidos() -> [Pedido] {
        var tempPedidos: [Pedido] = []
        
        let pedido1 = Pedido(fecha: "Sábado, 7 de setiembre del 2019",
                             subtotal: "98.50",
                             cantidad: "1 producto")
        
        tempPedidos.append(pedido1)
        
        return tempPedidos
    }
}
