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
    @IBOutlet weak var addCart: UIButton!
    
    var producto: Producto?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
        addCart.layer.cornerRadius = 25
        
    }
    
    func setUI() {
        ProductoImagen.image = producto?.imagen
        ProductoMarca.text = producto?.marca
        ProductoNombre.text = producto?.nombre
        ProductoPrecio.text = producto?.precio
        ProductoDescripcion.text = producto?.descripcion
    }
    
    @IBAction func addToCart(_ sender: Any) {
        
        let alert = UIAlertController(title: "Agregar producto", message: "¿Quieres agregar este producto al carrito?", preferredStyle: .alert)
        let addButton = UIAlertAction(title: "Aceptar", style: .default, handler: self.add)
        let cancelButton = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(addButton)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    func add(alert: UIAlertAction!)
    {
        print("Producto agregado")
    }
    
    
    
}
