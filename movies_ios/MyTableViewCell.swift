//
//  MyTableViewCell.swift
//  movies_ios
//
//  Created by Nguyen Huy Dong on 7/6/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mData[myCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionView
        
        cell.myImage.image = UIImage(named: mData[myCollectionView.tag].image[indexPath.row])
        return cell
    }
    
    
}
