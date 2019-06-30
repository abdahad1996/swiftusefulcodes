//
//  FeaturedTableViewCell.swift
//  TravelApp
//
//

import UIKit

class FeaturedTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var topLocationsData: [LocationModel] = [LocationModel]() {
        
        didSet {
            
            collectionView.reloadData()
            
        }
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.dataSource = self
        
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "TopLocationCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TopLocationCollectionViewCell")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return topLocationsData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = UICollectionViewCell()
        
        return cell
        
        /*
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopLocationCollectionViewCell", for: indexPath) as! TopLocationCollectionViewCell
        
        let location = topLocationsData[indexPath.row]
        
        cell.locationImage.image = location.locationImage
        
        cell.locationSubTitle.text = location.locationSubTitle
        
        cell.locationTitle.text = location.locationTitle
        
        cell.price.text = location.locationPrice
        
        return cell
         
        */
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 345, height: 370)
        
    }
    
}
