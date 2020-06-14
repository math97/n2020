//
//  ConsultasViewController.swift
//  N2020
//
//  Created by Matheus Alves Albuquerque on 14/06/20.
//  Copyright © 2020 arty. All rights reserved.
//

import UIKit

class ConsultasViewController: UIViewController {


    @IBOutlet weak var consultasTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Consultas"
        consultasTableView.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
        
        consultasTableView.register(UINib(nibName: "ConsultasTableViewCell", bundle: nil), forCellReuseIdentifier: "ConsultasTableViewCell")

        setUpCollection()
        
    }

    func setUpCollection(){
        consultasTableView.delegate = self
        consultasTableView.dataSource = self
    }
}

extension ConsultasViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 2
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200 //UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = consultasTableView.dequeueReusableCell(withIdentifier:  "ConsultasTableViewCell") as! ConsultasTableViewCell
        if indexPath.row == 1 {
            cell.diaLabel.text = "Terça"
            cell.dataLabel.text = "14 Julho"
            cell.tituloLabel.text = "Consulta | Dores de cabeça"
            cell.enderecoLabel.text = ""
            cell.doutorLabel.text = "Dra. Maria Julia - Neurologia"
        }
        return cell
    }
    

    
}

