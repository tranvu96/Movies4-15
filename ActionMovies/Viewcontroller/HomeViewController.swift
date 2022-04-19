//
//  HomeViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 15/03/2022.
//

import UIKit



class HomeViewController: UIViewController {
    
    let headerImage = ["Season 1", "Season 2", "Season 3", "Season 4", "Season 6", "Season 7", "Season 8", "Season 9"]
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var headerCollectionView: UICollectionView!
    
    var timer = Timer()
    var currenTime = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
       
        
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(setUpSlideToNext), userInfo: nil, repeats: true)
       
        configcell()
        view.backgroundColor = .white
    }
    
    @objc func setUpSlideToNext() {
        if currenTime < headerImage.count - 1 {
            currenTime = currenTime + 1
        } else {
            currenTime = 0
        }
        headerCollectionView.scrollToItem(at: IndexPath(item: currenTime, section: 0), at: .right, animated: true)
  }
    func configcell()
    {
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        
        headerCollectionView.dataSource = self
        headerCollectionView.delegate = self
        headerCollectionView.register(UINib(nibName: "HeaderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HeaderCollectionViewCell")
    }

   
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return headerImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCollectionViewCell", for: indexPath) as! HeaderCollectionViewCell
        cell.headerImage.image = UIImage(named: headerImage[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height*4/3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 0
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.collectionView.tag = indexPath.section
        cell.delegate = self
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 220
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return arrMovies.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return arrMovies[section].sectionType
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 28
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
            header.textLabel?.textColor = UIColor.black
            header.textLabel?.font = UIFont.boldSystemFont(ofSize: 23)
            header.textLabel?.frame = header.bounds
        header.textLabel?.textAlignment = .left
    }
}
extension HomeViewController: PushViewControllerDelegate {
    func pushView(id: Int,
                  name: String,
                  image: UIImage,
                  url: String,
                  rating: String,
                  nhaSX: String,
                  year: String,
                  gthieu: String,
                  quocGia: String) {
        let detaiVc = DetaiViewController()
        detaiVc.id = id
        detaiVc.getName = name
        detaiVc.getUrl = url
        detaiVc.getImage = image
        detaiVc.gthieu = gthieu
        detaiVc.rating = rating
        detaiVc.year = year
        detaiVc.nhaSX = nhaSX
        detaiVc.quocGiaSX = quocGia
        navigationController?.pushViewController(detaiVc, animated: true)
    }
}

