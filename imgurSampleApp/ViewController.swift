//
//  ViewController.swift
//  imgurSampleApp
//
//  Created by Wagner Gil Junior on 19/02/20.
//  Copyright © 2020 Wagner Gil Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionData = ["1 😀", "2 ☠️", "3 👁", "4 🧠", "5 🧛🏻‍♂️", "6 🤦🏻‍♂️", "7 🐸", "8 🐷", "9 🇧🇷", "10 💰", "11 🎈", "12 🎭"]

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let width = (view.frame.size.width - 20)  / 3
        let width = (UIScreen.main.bounds.width - 20) / 3
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        layout.minimumInteritemSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseCell", for: indexPath) as! CollectionViewCellController
        
        cell.imgDescription.text = collectionData[indexPath.row]
        
        return cell
    }
    

}

