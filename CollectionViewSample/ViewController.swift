//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by Payal Gupta on 8/11/17.
//  Copyright © 2017 pdiosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionCell
    }
}

class CustomCollectionCell : UICollectionViewCell
{
    @IBOutlet weak var centerHeart: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.centerHeart.alpha = 0.0
    }
    
    @IBAction func onTapHeartButton(_ sender: UIButton)
    {
        UIView.animate(withDuration: 0.5, animations: { 
            self.centerHeart.alpha = 1.0
        }) { (completed) in
            if completed
            {
                UIView.animate(withDuration: 0.5, animations: { 
                    self.centerHeart.alpha = 0.0
                })
            }
        }
    }
}


