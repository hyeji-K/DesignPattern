//
//  mainView.swift
//  DesignPattern
//
//  Created by heyji on 2023/10/26.
//

import UIKit

class mainView: UIView {

    var catImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        return imageView
    }()
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "고양이이름"
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    var nextButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("다음", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeCat(_ imageName: String, _ name: String) {
        catImageView.image = UIImage(named: imageName)
        nameLabel.text = name
    }
    
    private func setupView() {
        self.backgroundColor = .white
        
        addSubview(catImageView)
        catImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            catImageView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            catImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 90),
            catImageView.widthAnchor.constraint(equalToConstant: 300),
            catImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: catImageView.bottomAnchor, constant: 30)
        ])
        
        addSubview(nextButton)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -150),
            nextButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }

}
