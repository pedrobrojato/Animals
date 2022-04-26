//
//  AnimalCell.swift
//  Animals
//
//  Created by Pedro Brojato on 26/04/22.
//

import UIKit

class AnimalCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var ageLabel: UILabel!
    
    func config(item: Animal) {
        nameLabel.text = "Nome: \(item.name)"
        ageLabel.text = "Idade: \(item.age)"
        colorView.backgroundColor = item.color
        colorView.layer.cornerRadius = 50/2
    }
}
