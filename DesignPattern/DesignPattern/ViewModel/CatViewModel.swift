//
//  CatViewModel.swift
//  DesignPattern
//
//  Created by heyji on 2023/10/26.
//

import UIKit

class CatViewModel {
    private let cats: [Cat] = Cat.list
    private var count: Int = 0
    
    let catImageView: Observable<String> = Observable("")
    let name: Observable<String> = Observable("")
    
    init() {
        self.catImageView.value = cats[count].image
        self.name.value = cats[count].name
    }
    
    func nextButtonTapped() {
        count += 1
        if count <= (cats.count - 1) {
            self.catImageView.value = cats[count].image
            self.name.value = cats[count].name
        } else {
            count = 0
            self.catImageView.value = cats[count].image
            self.name.value = cats[count].name
        }
    }
    
}
