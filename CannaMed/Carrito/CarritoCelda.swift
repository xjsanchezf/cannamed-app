//
//  CarritoCeldaTableViewCell.swift
//  CannaMed
//
//  Created by TIP on 11/29/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class CarritoCelda: UITableViewCell {

    @IBOutlet weak var CarritoImagen: UIImageView!
    @IBOutlet weak var CarritoMarca: UILabel!
    @IBOutlet weak var CarritoNombre: UILabel!
    @IBOutlet weak var CarritoPrecio: UILabel!
    @IBOutlet weak var CarritoCantidad: UILabel!
    
    func setCarrito(carrito: Carrito) {
        CarritoImagen.image = carrito.imagen
        CarritoMarca.text = carrito.marca
        CarritoNombre.text = carrito.nombre
        CarritoPrecio.text = carrito.precio
        CarritoCantidad.text = "Llevas: " + carrito.cantidad
    }

}
