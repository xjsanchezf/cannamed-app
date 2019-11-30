//
//  CarritoListado.swift
//  CannaMed
//
//  Created by TIP on 11/29/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class CarritoListado: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Enlace para el DataSource y el Delegate
    @IBOutlet weak var tableView: UITableView!
    
    // Listado de productos
    var compras: [Carrito] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        compras = Carrito.createArrayCompras()
    }
    
    // Pintado de celdas de la tabla de productos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return compras.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carrito = compras[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarritoCelda", for: indexPath) as! CarritoCelda
        cell.setCarrito(carrito: carrito)
        return cell
    }

}
