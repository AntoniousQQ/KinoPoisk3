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
}

class FilmsCell: UICollectionViewCell {
    @IBOutlet weak var filmImage: UIImageView!
    
    var model: Film?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
    }
    
    static let identifire = "FilmsCell"
    
    func setup(with viewModel: FilmsCellViewModel ) {
        if let url = URL(string: viewModel.logoUrl ?? "http://risovach.ru/thumb/upload/200s400/2014/09/generator/ty-hochesh-skazat_60447768_orig_.jpeg?c0e92") {
            URLSession.shared.dataTask(with: url) { [ weak self] data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self?.filmImage.image = UIImage(data: data)
                    }
                }
            }
            .resume()
        }
    }

}
