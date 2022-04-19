//
//  CommingViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 14/03/2022.
//

import UIKit
import SwiftUI


class CommingViewController: UIViewController {

    @IBOutlet weak var commingSunTableView: UITableView!
    
    var downloadList = [Int]()
    var id = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        navigationItem.title = " Danh Sách Phim Yêu Thích "
        view.backgroundColor = .white
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.downloadList = UserDefaults.standard.object(forKey: "FAVORITE_FIMLS") as? [Int] ?? []
        self.commingSunTableView.reloadData()
    }
    
    func configTableView() {
        commingSunTableView.dataSource = self
        commingSunTableView.delegate = self
        commingSunTableView.register(UINib(nibName: "commingSunTableViewCell", bundle: nil), forCellReuseIdentifier: "commingSunTableViewCell")
    }
}

extension CommingViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return downloadList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commingSunTableViewCell", for: indexPath) as! commingSunTableViewCell
        var tag = 0
        var indexFilm = 0
        for indexHomeData in 0...arrMovies.count - 1 {
            let iDs = arrMovies[indexHomeData].iDs
            for index in 0...iDs.count - 1 {
                if(downloadList[indexPath.row] == iDs[index]){
                    tag = indexHomeData
                    indexFilm = index
                    self.id = iDs[index]
                    break
                }
            }
        }
        
        cell.imageMovies.image = UIImage(named: arrMovies[tag].imageMovies[indexFilm])
        cell.nameMovies.text = arrMovies[tag].nameMovies[indexFilm]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { [weak self] (_, _, _) in
            guard let self = self else { return }            
            self.downloadList.remove(at: indexPath.row)
            UserDefaults.standard.set(self.downloadList, forKey: "FAVORITE_FIMLS")
            tableView.deleteRows(at: [indexPath], with: .middle)
        }
        return UISwipeActionsConfiguration(actions: [delete])
    }
}
