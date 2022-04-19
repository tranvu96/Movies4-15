//
//  HomeTableViewCell.swift
//  Real_DeAn
//
//  Created by TranVu on 15/03/2022.
//

import UIKit
import SwiftUI

protocol PushViewControllerDelegate {
    func pushView(id: Int,
                  name : String,
                  image: UIImage,
                  url: String,
                  rating: String,
                  nhaSX: String,
                  year: String,
                  gthieu: String,
                  quocGia: String)
}

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var delegate: PushViewControllerDelegate?

    override func awakeFromNib()
    {
        super.awakeFromNib()
        confingcell()
    }
    func confingcell()
    {
        //let layout = UICollectionViewFlowLayout()
      //  layout.scrollDirection = .horizontal
       // self.collectionView.collectionViewLayout = layout
        collectionView.dataSource = self
        collectionView.delegate = self
       
        collectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }
}

extension HomeTableViewCell: UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.imageCollection.image = UIImage(named: arrMovies[collectionView.tag].imageMovies[indexPath.row])
        cell.nameCollection.text = (arrMovies[collectionView.tag].nameMovies[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arrMovies[collectionView.tag].imageMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let pussData = arrMovies[collectionView.tag]
//        delegate?.pushView(name: arrMovies[collectionView.tag].nameMovies[indexPath.row],
//                           image: UIImage(named: arrMovies[collectionView.tag].imageMovies[indexPath.row])!,
//                           url: arrMovies[collectionView.tag].urlMovies[indexPath.row])
        
        
        delegate?.pushView(id: pussData.iDs[indexPath.row],
                           name: pussData.nameMovies[indexPath.row],
                           image: UIImage(named: pussData.imageMovies[indexPath.row])!,
                           url: pussData.urlMovies[indexPath.row],
                           rating: pussData.rating[indexPath.row],
                           nhaSX: pussData.nhaSx[indexPath.row],
                           year: pussData.yearMovies[indexPath.row],
                           gthieu: pussData.gthieu[indexPath.row],
                           quocGia: pussData.quocGia[indexPath.row])
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {

        return CGSize(width: 150, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
    

