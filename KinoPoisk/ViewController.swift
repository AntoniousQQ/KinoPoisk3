//
//  ViewController.swift
//  KinoPoisk
//
//  Created by Admin on 3.10.22.
//

import UIKit



class ViewController: UIViewController {

    
    @IBOutlet private weak var colectionView: UICollectionView!
    
  
    
   static var film: Film?
    var posterArray: [String] = []
    
    private var viewModel = [FilmsCellViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        session()
        self.colectionView.register(UINib(nibName: "FilmsCell", bundle: nil), forCellWithReuseIdentifier: "FilmsCell")
        self.colectionView.dataSource = self
        self.colectionView.delegate = self
        self.colectionView.reloadData()
    }

    
    let url = URL(string: "https://api.kinopoisk.dev/movie?field=rating.kp&search=7-10&token=1HGAM56-CFZM33W-HR9ECJK-REH9X31")!
    
    func session() {
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request)  {[weak self] data, response, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else {return}
            
            DispatchQueue.main.async  {
                do {
                    let date = try JSONDecoder().decode(Film.self, from: data)
                    ViewController.film = date
                    guard let film = ViewController.film else { return }
                    film.docs.forEach({ i in
                        self?.posterArray.append(i.poster?.url ?? "")
                    })
                    self?.viewModel = film.docs.compactMap({
                        FilmsCellViewModel(logoUrl: $0.poster?.url, filmName: $0.name ?? "none", rating: $0.rating.imdb )
                    })
                    
                   
                    
                    self?.colectionView.reloadData()
                }catch {
                    print(error)
                }
            }
        }.resume()
        
    }
}

extension ViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilmsCell", for: indexPath) as! FilmsCell
        cell.setup(with: viewModel[indexPath.row])
        return cell
        }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.height / 2)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0 , right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
       let vc = storyboard?.instantiateViewController(withIdentifier: "InfoFilmVC") as! InfoFilmVC
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}



  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
