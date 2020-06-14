//
//  ConsultasTableViewCell.swift
//  N2020
//
//  Created by Matheus Alves Albuquerque on 14/06/20.
//  Copyright © 2020 arty. All rights reserved.
//

import UIKit

class ConsultasTableViewCell: UITableViewCell {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var diaLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var doutorLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    @IBOutlet weak var viewExterna: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewExterna.layer.cornerRadius = 10
        viewExterna.layer.masksToBounds = true
        
        btn1.layer.cornerRadius = 5
        btn1.layer.masksToBounds = true
        
        btn2.layer.cornerRadius = 5
        btn2.layer.masksToBounds = true
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
