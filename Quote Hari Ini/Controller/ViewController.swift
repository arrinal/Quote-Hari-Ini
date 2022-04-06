//
//  ViewController.swift
//  Quote Hari Ini
//
//  Created by Arrinal Sholifadliq on 08/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var quoteListVM = QuoteListVM()
    
    let quoteIconOpen: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "quote-open-icon")?.resize(70, 70)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let quoteIconClose: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "quote-close-icon")?.resize(70, 70)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()

    let quoteTextView: UILabel = {
        let label = UILabel()
        label.text = "Kebanggaan kita yang terbesar adalah bukan tidak pernah gagal, tetapi bangkit kembali setiap kali kita jatuh. \n(Confusius)"
        label.font = UIFont(name: "Nunito-Bold", size: 15)
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let buttonRandom: UIButton = {
       let button = UIButton()
        button.setTitle("Other Quote", for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 15)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.layer.borderColor = CGColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let quoteStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 0
        stackView.layer.borderColor = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        stackView.layer.borderWidth = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
        
        
    }

    func setupUI() {
        quoteStackView.addSubview(quoteIconOpen)
        quoteStackView.addSubview(quoteTextView)
        quoteStackView.addSubview(quoteIconClose)
        view.addSubview(quoteStackView)
        view.addSubview(buttonRandom)
        
        quoteStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        quoteStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        quoteStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        quoteStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        quoteStackView.topAnchor.constraint(equalTo: quoteIconOpen.topAnchor).isActive = true
        quoteStackView.bottomAnchor.constraint(equalTo: quoteIconClose.bottomAnchor).isActive = true
        
        quoteIconOpen.bottomAnchor.constraint(equalTo: quoteTextView.topAnchor, constant: -50).isActive = true
        quoteIconOpen.leadingAnchor.constraint(equalTo: quoteTextView.leadingAnchor).isActive = true
        
        quoteTextView.centerXAnchor.constraint(equalTo: quoteStackView.centerXAnchor).isActive = true
        quoteTextView.centerYAnchor.constraint(equalTo: quoteStackView.centerYAnchor).isActive = true
        quoteTextView.leadingAnchor.constraint(equalTo: quoteStackView.leadingAnchor,constant: 50).isActive = true
        quoteTextView.trailingAnchor.constraint(equalTo: quoteStackView.trailingAnchor, constant: -50).isActive = true
        
        quoteIconClose.topAnchor.constraint(equalTo: quoteTextView.bottomAnchor, constant: 50).isActive = true
        quoteIconClose.trailingAnchor.constraint(equalTo: quoteTextView.trailingAnchor).isActive = true
        
        buttonRandom.topAnchor.constraint(equalTo: quoteStackView.bottomAnchor, constant: 30).isActive = true
        buttonRandom.centerXAnchor.constraint(equalTo: quoteStackView.centerXAnchor).isActive = true
        buttonRandom.widthAnchor.constraint(equalToConstant: 130).isActive = true
        buttonRandom.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonRandom.addTarget(self, action: #selector(otherQuote), for: .touchUpInside)
    }
    
    @objc func otherQuote() {
        quoteTextView.text = quoteListVM.quoteList[0].text
    }
    
}

extension UIImage {
    func resize(_ width: CGFloat, _ height:CGFloat) -> UIImage? {
        let widthRatio  = width / size.width
        let heightRatio = height / size.height
        let ratio = widthRatio > heightRatio ? heightRatio : widthRatio
        let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}

