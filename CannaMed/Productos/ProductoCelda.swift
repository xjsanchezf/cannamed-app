//
//  ProductoCelda.swift
//  CannaMed
//
//  Created by user148984 on 10/28/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class ProductoCelda: UITableViewCell {

    @IBOutlet weak var ProductoImagen: UIImageView!
    @IBOutlet weak var ProductoMarca: UILabel!
    @IBOutlet weak var ProductoNombre: UILabel!
    @IBOutlet weak var ProductoPrecio: UILabel!
    
    func setProducto(producto: Producto) {
        ProductoImagen.image = producto.imagen
        ProductoMarca.text = producto.marca
        ProductoNombre.text = producto.nombre
        ProductoPrecio.text = producto.precio
    }
}
