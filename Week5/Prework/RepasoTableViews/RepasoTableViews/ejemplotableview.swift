//
//  ejemplotableview.swift
//  RepasoTableViews
//
//  Created by Apple Device 18 on 11/2/19.
//  Copyright © 2019 Tonipocket. All rights reserved.
//

import UIKit

//MODELO VISTA CONTROLADOR

class EjemploTableViewController: UITableViewController {
    //definicion del modelo (es mejor poner un archivo con una clase aparte con el modelo
    let data  = ["Dallas Cowboys",
                 "Baltimore Ravens",
                 "Arizona Cardinals",
                 "Buffalo Bills"]
    //se ejecuta cada que se carga la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //numero de rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    //qu'e poner cellforrowat
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //definir celda
        let cell = tableView.dequeueReusableCell(withIdentifier: "nflTeams", for: indexPath)
        //contenido de la celda
        
    }
    
}
