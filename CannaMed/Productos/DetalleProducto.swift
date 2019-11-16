//
//  DetalleProducto.swift
//  CannaMed
//
//  Created by user148984 on 10/28/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class DetalleProducto: UIViewController {
    
    @IBOutlet weak var ProductoImagen: UIImageView!
    @IBOutlet weak var ProductoMarca: UILabel!
    @IBOutlet weak var ProductoNombre: UILabel!
    @IBOutlet weak var ProductoPrecio: UILabel!
    @IBOutlet weak var ProductoDescripcion: UILabel!
    
    var producto: Producto?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        ProductoImagen.image = producto?.imagen
        ProductoMarca.text = producto?.marca
        ProductoNombre.text = producto?.nombre
        ProductoPrecio.text = producto?.precio
        ProductoDescripcion.text = producto?.descripcion
    }
}
