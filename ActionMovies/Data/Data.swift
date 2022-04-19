//
//  SearchData.swift
//  Real_DeAn
//
//  Created by TranVu on 15/03/2022.
//

import Foundation
import UIKit
import AVFoundation
class moviesData {
    var id: Int
    var nameMovies: String
    var imageMovies: String
    var playVideo: String
    let yearMovies: String
    let nhaSx: String
    let rating: String
    let quocGia: String
    let gthieu: String
    var favotite: Bool
    var like: Bool
    
    init() {
        id = 0
        nameMovies = ""
        imageMovies = ""
        playVideo = ""
        yearMovies = ""
        nhaSx = ""
        rating = ""
        quocGia = ""
        gthieu = ""
        favotite = false
        like = false
    }
    
    init(id: Int,
         nMovies: String,
         iMovies: String,
         pVideo: String,
         year: String,
         nhaSX:String,
         rating: String,
         quocGia: String,
         gthieu: String,
         favotite: Bool,
         like: Bool
    ){
        self.id = id
        self.nameMovies = nMovies
        self.imageMovies = iMovies
        self.playVideo = pVideo
        self.gthieu = gthieu
        self.nhaSx = nhaSX
        self.quocGia = quocGia
        self.rating = rating
        self.yearMovies = year
        self.favotite = favotite
        self.like = like
    }
}




