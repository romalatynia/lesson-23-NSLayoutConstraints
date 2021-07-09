//
//  ViewController.swift
//  NSLayoutConstraints
//
//  Created by Harbros47 on 26.02.21.
//

import UIKit

private enum Constants {
    static let rowHeight: CGFloat = 44
    static let outgoingCell = "OutgoingCell"
    static let outgoingCellIdentifier = "outgoingMessage"
    static let incomingCell = "IncomingCell"
    static let incomingCellIdentifier = "incomingMessage"
    static let borderWidth: CGFloat = 2
    static let helpVelueAnchor: CGFloat = 40
}

class ViewController: UIViewController {
    
    var tableView = UITableView()
    var arrayMassege = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayMassege = Model.createMassege()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        createTableView()
    }
    
    func createTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = Constants.rowHeight
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(
            equalTo: view.topAnchor,
            constant: Constants.helpVelueAnchor
        ).isActive = true
        tableView.bottomAnchor.constraint(
            equalTo: view.bottomAnchor,
            constant: -Constants.helpVelueAnchor
        ).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        tableView.register(
            UINib(
                nibName: Constants.outgoingCell,
                bundle: nil
            ),
            forCellReuseIdentifier: Constants.outgoingCellIdentifier
        )
        tableView.register(
            UINib(
                nibName: Constants.incomingCell,
                bundle: nil
            ),
            forCellReuseIdentifier: Constants.incomingCellIdentifier
        )
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayMassege.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: Constants.outgoingCellIdentifier,
                for: indexPath
            ) as? OutgoingCell else { return UITableViewCell() }
            
            let text = arrayMassege[indexPath.row]
            cell.layer.borderWidth = Constants.borderWidth
            cell.layer.borderColor = UIColor.white.cgColor
            cell.massegeLabel.text = text.capitalized
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: Constants.incomingCellIdentifier,
                for: indexPath
            ) as? IncomingCell else { return UITableViewCell() }
            let text = arrayMassege[indexPath.row]
            cell.layer.borderWidth = Constants.borderWidth
            cell.layer.borderColor = UIColor.white.cgColor
            cell.messageLabel.text = text.capitalized
            
            return cell
        }
    }
}
