//
//  Cat.swift
//  DesignPattern
//
//  Created by heyji on 2023/10/26.
//

import Foundation

struct Cat {
    let name: String
    let image: String
}

extension Cat {
    static let list = [
        Cat(name: "뭉치", image: "mong"),
        Cat(name: "삐용", image: "ppyoug")
    ]
}
