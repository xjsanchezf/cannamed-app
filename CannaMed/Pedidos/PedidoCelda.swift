//
//  PedidoCell.swift
//  CannaMed
//
//  Created by TIP on 11/29/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class PedidoCelda: UITableViewCell {

    @IBOutlet weak var PedidoFecha: UILabel!
    @IBOutlet weak var PedidoSubtotal: UILabel!
    @IBOutlet weak var PedidoCantidad: UILabel!
    
    func setPedido(pedido: Pedido) {
        PedidoFecha.text = pedido.fecha
        PedidoSubtotal.text = "Total: S/" + pedido.subtotal
        PedidoCantidad.text = "Llevaste " + pedido.cantidad
    }

}
