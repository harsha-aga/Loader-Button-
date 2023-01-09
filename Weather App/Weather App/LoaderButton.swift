//
//  LoaderButton.swift
//  Weather App
//
//  Created by Harsha Agarwal on 09/01/23.
//

import UIKit

class LoaderButton: UIButton {
    
    var spinner = UIActivityIndicatorView()
    
    var isLoading = false {
        didSet {
            updateView()
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        spinner.color = .white
        spinner.style = .large
        spinner.hidesWhenStopped = true
        addSubview(spinner)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([spinner.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     spinner.centerYAnchor.constraint(equalTo: self.centerYAnchor)
                                    ])
    }
    
    func updateView() {
        if isLoading {
            spinner.startAnimating()
            titleLabel?.alpha = 0
            imageView?.alpha = 0
            isEnabled = false
        } else {
            spinner.stopAnimating()
            isEnabled = true
            titleLabel?.alpha = 1
            imageView?.alpha = 0
        }
    }

}
