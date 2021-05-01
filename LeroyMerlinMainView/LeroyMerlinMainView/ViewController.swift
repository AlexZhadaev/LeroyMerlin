//
//  ViewController.swift
//  LeroyMerlinMainView
//
//  Created by Жадаев Алексей on 25.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    
    var goods: [Good] = []
    var goods2: [Good] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateGoods()
    }
    
    private func generateGoods() {
        let good1 = Good(image: UIImage(named: "good1"), priceRub: nil, priceKop: nil, priceValutePcs: nil, goodDescription: nil)
        let good2 = Good(image: UIImage(named: "good2"), priceRub: nil, priceKop: nil, priceValutePcs: nil, goodDescription: nil)
        let good3 = Good(image: UIImage(named: "good3"), priceRub: nil, priceKop: nil, priceValutePcs: nil, goodDescription: nil)
        let good4 = Good(image: UIImage(named: "good4"), priceRub: nil, priceKop: nil, priceValutePcs: nil, goodDescription: nil)
        goods = [good1, good2, good3, good4]
        
        let good5 = Good(image: UIImage(named: "good5"), priceRub: "930,", priceKop: "60", priceValutePcs: "Р/кор.", goodDescription: "Ламинат Artens «Тангай» 33 кла...")
        let good6 = Good(image: UIImage(named: "good6"), priceRub: "930,", priceKop: "60", priceValutePcs: "Р/кор.", goodDescription: "Ламинат Artens «Тангай» 33 кла...")
        let good7 = Good(image: UIImage(named: "good7"), priceRub: "930,", priceKop: "60", priceValutePcs: "Р/кор.", goodDescription: "Ламинат Artens «Тангай» 33 кла...")
        let good8 = Good(image: UIImage(named: "good8"), priceRub: "930,", priceKop: "60", priceValutePcs: "Р/кор.", goodDescription: "Ламинат Artens «Тангай» 33 кла...")
        goods2 = [good5, good6, good7, good8]
        
        collectionView1.reloadData()
        collectionView2.reloadData()
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == collectionView1 {
            return goods.count
        } else {
            return goods2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionView1 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCellKey", for: indexPath) as! CollectionViewCell
            let good = goods[indexPath.section]
            cell1.goodImage.image = good.image
            return cell1
        }
        else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCellKey", for: indexPath) as! CollectionViewCell
            let good = goods2[indexPath.section]
            cell2.good2Image.image = good.image
            cell2.priceRub.text = good.priceRub
            cell2.priceKop.text = good.priceKop
            cell2.priceValutePcs.text = good.priceValutePcs
            cell2.goodDescription.text = good.goodDescription
            return cell2
        }
    }
    
}
