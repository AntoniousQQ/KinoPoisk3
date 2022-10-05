//
//  ViewController.swift
//  KinoPoisk
//
//  Created by Admin on 3.10.22.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet private weak var colectionView: UICollectionView!
    

    var film: Film?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        session()
        
        self.colectionView.register(UINib(nibName: "FilmsCell", bundle: nil), forCellWithReuseIdentifier: "FilmsCell")
        self.colectionView.dataSource = self
        self.colectionView.delegate = self
    }
 
    
    let imgaeURL = URL(string: "https://st.kp.yandex.net/images/film_big/845186.jpg")
    let url = URL(string: "https://api.kinopoisk.dev/movie?field=rating.kp&search=7-10&token=1HGAM56-CFZM33W-HR9ECJK-REH9X31")!
    
    func session() {
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else {return}
            
            DispatchQueue.main.async  { [self] in
                do {
                    let date = try JSONDecoder().decode(Film.self, from: data)
                    
                    film = date
                
                    print("\((film?.docs[1].poster.url)!)")
                }catch {
                   print(error)
                }
            }
        }.resume()
      
        }
    
    }

extension ViewController:  UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (film?.docs.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
    


