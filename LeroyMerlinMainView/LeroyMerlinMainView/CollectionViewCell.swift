//
//  CollectionViewCell.swift
//  LeroyMerlinMainView
//
//  Created by Жадаев Алексей on 27.04.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var goodImage: UIImageView!
    @IBOutlet weak var good2Image: UIImageView!
    
    @IBOutlet weak var priceRub: UITextField!
    @IBOutlet weak var priceKop: UITextField!
    @IBOutlet weak var priceValutePcs: UITextField!
    @IBOutlet weak var goodDescription: UITextView!
}
