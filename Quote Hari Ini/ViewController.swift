//
//  ViewController.swift
//  Quote Hari Ini
//
//  Created by Arrinal Sholifadliq on 08/02/22.
//

import UIKit









class ViewController: UIViewController {
    
//    var viewModel = QuoteViewModel()
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(quoteIconOpen)
        view.addSubview(quoteIconClose)
        view.addSubview(quoteTextView)
        
        quoteIconOpen.bottomAnchor.constraint(equalTo: quoteTextView.topAnchor, constant: -50).isActive = true
        quoteIconOpen.leadingAnchor.constraint(equalTo: quoteTextView.leadingAnchor).isActive = true
        quoteTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        quoteTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        quoteTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50).isActive = true
        quoteTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        quoteIconClose.topAnchor.constraint(equalTo: quoteTextView.bottomAnchor, constant: 50).isActive = true
        quoteIconClose.trailingAnchor.constraint(equalTo: quoteTextView.trailingAnchor).isActive = true
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

