//
//  ProductosListado.swift
//  CannaMed
//
//  Created by user148984 on 10/28/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit

class ProductosListado: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Enlace para el DataSource y el Delegate
    @IBOutlet weak var tableView: UITableView!
    
    // Listado de productos
    var productos: [Producto] = []
   

    override func viewDidLoad() {
        super.viewDidLoad()
        productos = Producto.createArrayProductos()
        
        
        
    }
    
    // Pintado de celdas de la tabla de productos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let producto = productos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductoCelda", for: indexPath) as! ProductoCelda
        cell.setProducto(producto: producto)
        return cell
    }
    

    // Envío de data de ProductosListado a DetalleProducto
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let producto = productos[indexPath.row]
        performSegue(withIdentifier: "ProductoToDetalle", sender: producto)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProductoToDetalle" {
            let destVC = segue.destination as! DetalleProducto
            destVC.producto = sender as? Producto 
        }
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
    
    @IBAction func addNo(_ sender: Any) {
        
        let alert = UIAlertController(title: "Lo sentimos", message: "Aún no existe esta sección", preferredStyle: .alert)
        let addNo = UIAlertAction(title: "Aceptar", style: .default, handler: self.no)
        let cancelButton = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(addNo)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    func no(alert: UIAlertAction!)
    {
        print("Producto agregado")
    }
    
    
}
