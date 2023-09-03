//
//  ViewController.swift
//  GLMediatorDemo
//
//  Created by Kael Ding on 2023/8/27.
//

import UIKit
import GLMediator

let kCellIdentifier = "kCellIdentifier"

class ViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: kCellIdentifier)
        return tableView
    }()
    
    let dataSource = [
        "present detail view controller",
        "push detail view controller",
        "present image",
        "show alert",
        "Module B"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier, for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let moduleA = GLMediator.module(ModuleAService.self)
        if indexPath.row == 0 {
            if let vc = moduleA?.viewControllerForDetail() {
                present(vc, animated: true)
            }
        } else if indexPath.row == 1 {
            if let vc = moduleA?.viewControllerForDetail() {
                navigationController?.pushViewController(vc, animated: true)
            }
        } else if indexPath.row == 2 {
            moduleA?.presentImage(UIImage(named: "image"))
        } else if indexPath.row == 3 {
            moduleA?.showAlert("Title", message: "Message", cancelCallback: { info in
                if let info = info {
                    print("++++\(info)")
                }
            }, confirmCallback: { info in
                if let info = info {
                    print("++++\(info)")
                }
            })
        } else if indexPath.row == 4 {
            if let vc = GLMediator.module(ModuleBService.self)?.viewController() {
                present(vc, animated: true)
            }
        }
    }
}

