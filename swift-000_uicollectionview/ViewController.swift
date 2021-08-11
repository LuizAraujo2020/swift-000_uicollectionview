//
//  ViewController.swift
//  swift-000_uicollectionview
//
//  Created by Luiz Carlos da Silva Araujo on 11/08/21.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "id")
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1    //qtde of sessoes
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 30
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "id", for: indexPath)
        
        cell.backgroundColor = UIColor.yellow
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
    }
}

