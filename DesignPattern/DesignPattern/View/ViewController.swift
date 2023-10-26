//
//  ViewController.swift
//  DesignPattern
//
//  Created by heyji on 2023/10/26.
//

import UIKit

class ViewController: UIViewController {

    private let customView: mainView = mainView()
    private let catViewModel: CatViewModel = CatViewModel()
    
    override func loadView() {
        super.loadView()
        
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind()
        customView.nextButton.addTarget(self, action: #selector(nextButton), for: .touchUpInside)
    }
    
    func bind() {
        catViewModel.catImageView.bind { imageName in
            self.customView.catImageView.image = UIImage(named: imageName)
        }
        
        catViewModel.name.bind { name in
            self.customView.nameLabel.text = name
        }
    }

    @objc func nextButton(_ sender: UIButton) {
        catViewModel.nextButtonTapped()
    }
}

