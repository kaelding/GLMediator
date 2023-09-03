//
//  ModuleAViewController.swift
//  GLMediator
//
//  Created by Kael Ding on 2023/8/29.
//

import UIKit

class ModuleAViewController: UIViewController {
    
    lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var returnButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Return", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(didTappedReturnButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        configUI()
    }
    
    func configUI() {
        view.backgroundColor = .lightGray
        
        view.addSubview(valueLabel)
        view.addSubview(imageView)
        view.addSubview(returnButton)
        
        NSLayoutConstraint.activate([
            valueLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        NSLayoutConstraint.activate([
            returnButton.widthAnchor.constraint(equalToConstant: 100),
            returnButton.heightAnchor.constraint(equalToConstant: 100),
            returnButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            returnButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    @objc func didTappedReturnButton(_ sender: UIButton) {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
    
}
