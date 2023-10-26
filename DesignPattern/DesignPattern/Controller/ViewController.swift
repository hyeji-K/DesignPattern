//
//  ViewController.swift
//  DesignPattern
//
//  Created by heyji on 2023/10/26.
//

import UIKit

class ViewController: UIViewController {

    private let customView: mainView = mainView()
    
    private var count: Int = 0
    private let cats: [Cat] = Cat.list
    
    override func loadView() {
        super.loadView()
        
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.changeCat(cats[count].image, cats[count].name)
        customView.nextButton.addTarget(self, action: #selector(nextButton), for: .touchUpInside)
    }

    @objc func nextButton(_ sender: UIButton) {
        count += 1
        if count <= (cats.count - 1) {
            customView.changeCat(cats[count].image, cats[count].name)
        } else {
            count = 0
            customView.changeCat(cats[count].image, cats[count].name)
        }
    }
}

