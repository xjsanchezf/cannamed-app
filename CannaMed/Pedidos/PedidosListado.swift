//
//  PedidosListado.swift
//  CannaMed
//
//  Created by TIP on 11/29/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class PedidosListado: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Enlace para el DataSource y el Delegate
    @IBOutlet weak var tableView: UITableView!
    
    // Listado de productos
    var pedidos: [Pedido] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pedidos = Pedido.createArrayPedidos()
    }
    
    // Pintado de celdas de la tabla de productos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pedidos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pedido = pedidos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PedidoCelda", for: indexPath) as! PedidoCelda
        cell.setPedido(pedido: pedido)
        return cell
    }

}
