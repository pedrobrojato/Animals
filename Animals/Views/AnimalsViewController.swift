//
//  AnimalsViewController.swift
//  Animals
//
//  Created by Pedro Brojato on 26/04/22.
//

import UIKit

class AnimalsViewController: UIViewController {
    
    let animals = [
        Animal(name: "Lion", age: 30, color: UIColor.yellow),
        Animal(name: "Aligator", age: 20, color: UIColor.green)
    ]
    
    private let cellName = "AnimalCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        let nib = UINib(nibName: cellName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellName)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AnimalsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension AnimalsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! AnimalCell
        let animal = animals[indexPath.row]
        cell.config(item: animal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
}


