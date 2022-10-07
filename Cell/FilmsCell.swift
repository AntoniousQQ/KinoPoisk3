//
//  FilmsCell.swift
//  KinoPoisk
//
//  Created by Admin on 4.10.22.
//
import Foundation
import UIKit

struct FilmsCellViewModel {
    let logoUrl: String?
    let filmName: String
    let rating: Double
}

class FilmsCell: UICollectionViewCell {
    @IBOutlet weak var filmImage: UIImageView!
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var filmName: UILabel!
    var model: Film?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        filmImage.clipsToBounds = true
        filmImage.layer.cornerRadius = 5
        
        filmName.clipsToBounds = true
        filmName.layer.cornerRadius = 5
        
        ratingLabel.clipsToBounds = true
        ratingLabel.layer.cornerRadius = 5
        ratingLabel.backgroundColor = UIColor(white: 255, alpha: 0.5)
    }
    
    static let identifire = "FilmsCell"
    
    func setup(with viewModel: FilmsCellViewModel ) {
        if let url = URL(string: viewModel.logoUrl ?? "http://risovach.ru/thumb/upload/200s400/2014/09/generator/ty-hochesh-skazat_60447768_orig_.jpeg?c0e92") {
            URLSession.shared.dataTask(with: url) { [ weak self] data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self?.filmImage.image = UIImage(data: data)
                        self?.filmName.text = viewModel.filmName
                        self?.ratingLabel.text = "\(viewModel.rating)"
                    }
                }
            }
            .resume()
        }
    }

}
