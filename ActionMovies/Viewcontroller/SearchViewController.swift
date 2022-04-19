//
//  SearchViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 11/03/2022.
//

import UIKit
import AVKit
import AVFoundation

class SearchViewController: UIViewController {
    
    var player = AVPlayer()
    var searching = false
    var listMovieSearch = [moviesData]()
    var fullMovies = [moviesData]()
    private let refreshControl = UIRefreshControl()
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchBarMovie: UISearchBar!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupCollectionView()
       arrSearchData()
        confingSearchController()
        navigationItem.title = " Search Bar "
    }
    
    func arrSearchData()
    {
        let moviesItem1 = moviesData(id: 1,
                                     nMovies: "Biệt Đội Săn Ma",
                                     iMovies: "Biệt Đội Săn Ma",
                                     pVideo:"https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FBie%CC%A3%CC%82t%20%C4%90o%CC%A3%CC%82i%20Sa%CC%86n%20Ma-%20Chuye%CC%82%CC%89n%20Kie%CC%82%CC%81p.mp4?alt=media&token=9bac71c1-1ac0-4a2b-8d4e-f4d9c8668065",
                                     year: "2018",
                                     nhaSX: "Jeremy Slater",
                                     rating: "9.0",
                                     quocGia: "Úc",
                                     gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem1)
        let moviesItem2 = moviesData(id: 2,
                                     nMovies: "Bóng ma anh quốc",
                                     iMovies: "Bóng ma anh quốc",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FBo%CC%81ng%20ma%20anh%20quo%CC%82%CC%81c.mp4?alt=media&token=ba21a44c-9de8-4d44-814c-bb92d85ebf1b",
                                     year: "2022",
                                     nhaSX: "Steven Spielberg",
                                     rating: "6.7",
                                     quocGia: "Hoa Kỳ",
                                     gthieu: "Một phi công chiến đấu du hành ngược thời gian để cứu thế giới tương lai khỏi thảm họa môi trường, nhưng một tác dụng phụ khiến cô ấy trẻ lại và không ai coi trọng cô ấy",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem2)
        let moviesItem3 = moviesData(id: 3,
                                     nMovies: "Chủng Tộc Bất Tử",
                                     iMovies: "Chủng Tộc Bất Tử",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FChu%CC%89ng%20To%CC%A3%CC%82c%20Ba%CC%82%CC%81t%20Tu%CC%9B%CC%89.mp4?alt=media&token=a843b8e3-d8af-4d47-95a2-d2f1ab99b3e4",
                                     year: "2022",
                                     nhaSX: "Michael Bay",
                                     rating: "5.9",
                                     quocGia: "Ấn Độ",
                                     gthieu: "Leonard là một thợ may người Anh, người từng đóng những bộ quần áo trên phố Savile Row nổi tiếng thế giới ở London",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem3)
        let moviesItem4 = moviesData(id: 4,
                                     nMovies: "Cuốn Sách Của Boba Fett",
                                     iMovies: "Cuốn Sách Của Boba Fett",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FCuo%CC%82%CC%81n%20Sa%CC%81ch%20Cu%CC%89a%20Boba%20Fett%20.mp4?alt=media&token=eeec825e-301a-4f0d-933d-d9d39994ed5c",
                                     year: "2019",
                                     nhaSX: "James Cameron",
                                     rating: "7.6",
                                     quocGia: "Trung Quốc",
                                     gthieu: "Trong một tương lai không xa, hai người trôi dạt trên sa mạc tình cờ gặp được kho vàng lớn nhất từng được tìm thấy và ước mơ giàu có cùng lòng tham đã vụt tắt. Họ nảy ra một kế hoạch khai quật tiền thưởng của mình",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem4)
        let moviesItem5 = moviesData(id: 5,
                                     nMovies: "Kingsman- Khởi Nguồn",
                                     iMovies: "Kingsman- Khởi Nguồn",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FKingsman-%20Kho%CC%9B%CC%89i%20Nguo%CC%82%CC%80nu%20ra%CC%A3p%202021.mp4?alt=media&token=ae7144de-5a1b-4add-8270-fd33d9f9c772",
                                     year: "2020",
                                     nhaSX: "Christopher Nolan",
                                     rating: "6.5",
                                     quocGia: "Việt Nam",
                                     gthieu: "Sau khi tìm thấy cơ thể vật chủ trong tay phóng viên điều tra Eddie Brock, người ngoài hành tinh symbiote phải đối mặt với kẻ thù mới, Carnage, bản ngã thay thế của kẻ giết người hàng loạt Cletus Kasady",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem5)
        let moviesItem6 = moviesData(id: 6,
                                     nMovies: "Ma Trận- Hồi Sinh",
                                     iMovies: "Ma Trận",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FMaTran.mp4?alt=media&token=c747e285-762e-4f6b-a03e-6cf1d195f010",
                                     year: "2022",
                                     nhaSX: "Jon Favreau",
                                     rating: "7.8",
                                     quocGia: "Argentina",
                                     gthieu: "con Trevor và Phoebe. Vì gia đình bị phá sản, họ đành chuyển về khu nông trại hẻo lánh do ông mình để lại ở vùng ngoại ô Summerville",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem6)
        let moviesItem7 = moviesData(id: 7,
                                     nMovies: "Người Nhện- Không Còn Nhà",
                                     iMovies: "Người Nhện",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FNgu%CC%9Bo%CC%9B%CC%80i%20Nhe%CC%A3%CC%82n-%20Kho%CC%82ng%20Co%CC%80n%20Nha%CC%80.mp4?alt=media&token=671c639d-8959-451b-b9ed-c98fbd54620f",
                                     year: "2019",
                                     nhaSX: "Kyle Killen",
                                     rating: "7.8",
                                     quocGia: "Hoa Kỳ",
                                     gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem7)
        let moviesItem8 = moviesData(id: 8,
                                     nMovies: "Scream",
                                     iMovies: "Scream",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FScream.mp4?alt=media&token=b6e979c1-a98c-4eb1-bebf-1116bb45e7d8",
                                     year: "2020",
                                     nhaSX: "Steven Kane",
                                     rating: "7.7",
                                     quocGia: "Canada",
                                     gthieu: "Sau khi gặp tai nạn rơi máy bay vào năm 2022, phi công chiến cơ du hành thời gian Adam Reed bắt tay với chính mình lúc 12 tuổi trong nhiệm vụ cứu tương lai." ,
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem8)
        let moviesItem9 = moviesData(id: 9,
                                     nMovies: "The Jack in the Box- Awakening",
                                     iMovies: "The Jack in the Box- Awakening",
                                     pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FThe%20Jack%20in%20the%20Box-%20Awakening.mp4?alt=media&token=aea63e1e-1a7c-4255-a1e4-a523a1726a3d",
                                     year: "2020",
                                     nhaSX: "Peter Jackson",
                                     rating: "8.6",
                                     quocGia: "Úc",
                                     gthieu: "Đúng 10 năm sau, Mặt Trăng đột nhiên rời khỏi quỹ đạo và dần trên đường va chạm với Trái Đất. Chuyện dường như có liên quan tới tai nạn năm xưa",
                                     favotite: false,
                                     like: false
        )
        fullMovies.append(moviesItem9)
        let moviesItem10 = moviesData(id: 10,
                                      nMovies: "The Requin",
                                      iMovies: "The Requin",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FThe%20Requin.mp4?alt=media&token=5b8ec45d-93a4-4fdd-9119-e309ca262dea",
                                      year: "2019",
                                      nhaSX: "James Cameron",
                                      rating: "7.6",
                                      quocGia: "Trung Quốc",
                                      gthieu: "Trong một tương lai không xa, hai người trôi dạt trên sa mạc tình cờ gặp được kho vàng lớn nhất từng được tìm thấy và ước mơ giàu có cùng lòng tham đã vụt tắt. Họ nảy ra một kế hoạch khai quật tiền thưởng của mình",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem10)
        let moviesItem11 = moviesData(id: 11,
                                      nMovies: "Thợ Săn Cổ Vật",
                                      iMovies: "Thợ Săn Cổ Vật",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FTho%CC%9B%CC%A3%20Sa%CC%86n%20Co%CC%82%CC%89%20Va%CC%A3%CC%82t.mp4?alt=media&token=5dafac5f-2741-442a-b346-0fe467cfd4dd",
                                      year: "2020",
                                      nhaSX: "Christopher Nolan",
                                      rating: "6.5",
                                      quocGia: "Việt Nam",
                                      gthieu: "Sau khi tìm thấy cơ thể vật chủ trong tay phóng viên điều tra Eddie Brock, người ngoài hành tinh symbiote phải đối mặt với kẻ thù mới, Carnage, bản ngã thay thế của kẻ giết người hàng loạt Cletus Kasady",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem11)
        let moviesItem12 = moviesData(id: 12,
                                      nMovies: "Venom- Đối Mặt Tử Thù",
                                      iMovies: "Venom",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FVenom-%20%C4%90o%CC%82%CC%81i%20Ma%CC%A3%CC%86t%20Tu%CC%9B%CC%89%20Thu%CC%80.mp4?alt=media&token=fd0a1480-30b1-4465-bbcf-6d228f379d87",
                                      year: "2022",
                                      nhaSX: "Jon Favreau",
                                      rating: "7.8",
                                      quocGia: "Argentina",
                                      gthieu: "con Trevor và Phoebe. Vì gia đình bị phá sản, họ đành chuyển về khu nông trại hẻo lánh do ông mình để lại ở vùng ngoại ô Summerville",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem12)
        let moviesItem13 = moviesData(id: 13,
                                      nMovies: "Attack on Titan",
                                      iMovies: "attank on titan",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FAttack%20on%20Titan%20Season%204%20Part%202%20-%20Official%20Trailer.mp4?alt=media&token=c5769866-6d49-4b69-a556-72d75f3e51c9",
                                      year: "2019",
                                      nhaSX: "Kyle Killen",
                                      rating: "7.8",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem13)
        let moviesItem14 = moviesData(id: 14,
                                      nMovies: "THE BATMAN",
                                      iMovies: "batman",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FTHE%20BATMAN%20%E2%80%93%20Main%20Trailer.mp4?alt=media&token=c1eb2bd7-48ad-4568-b0b0-41d4933fb078",
                                      year: "2020",
                                      nhaSX: "Steven Kane",
                                      rating: "6.7",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem14)
        let moviesItem15 = moviesData(id: 15,
                                      nMovies: "Captain Nova",
                                      iMovies: "Captain Nova",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FCaptain%20Nova%20-%20Netflix%20Trailer.mp4?alt=media&token=fa4e2b51-3346-42ef-bcf7-a8f3fdafad25",
                                      year: "2020",
                                      nhaSX: "Peter Jackson",
                                      rating: "8.6",
                                      quocGia: "Úc",
                                      gthieu: "Đúng 10 năm sau, Mặt Trăng đột nhiên rời khỏi quỹ đạo và dần trên đường va chạm với Trái Đất. Chuyện dường như có liên quan tới tai nạn năm xưa",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem15)
        let moviesItem16 = moviesData(id: 16,
                                      nMovies: "Death on the Nile",
                                      iMovies: "Death the nil",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FOfficial%20Trailer%20-%20Death%20on%20the%20Nile%20-%2020th%20Century%20Studios.mp4?alt=media&token=c01e7ab5-9753-4af2-80ed-19aac8d9c928",
                                      year: "2020",
                                      nhaSX: "Christopher Nolan",
                                      rating: "6.5",
                                      quocGia: "Việt Nam",
                                      gthieu: "Sau khi tìm thấy cơ thể vật chủ trong tay phóng viên điều tra Eddie Brock, người ngoài hành tinh symbiote phải đối mặt với kẻ thù mới, Carnage, bản ngã thay thế của kẻ giết người hàng loạt Cletus Kasady",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem16)
        let moviesItem17 = moviesData(id: 17,
                                      nMovies: "Dự án Adam",
                                      iMovies: "Dự Án Adam",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FDu%CC%9B%CC%A3%20a%CC%81n%20Adam%20-%20Trailer%20chi%CC%81nh%20thu%CC%9B%CC%81c%20-%20Netflix.mp4?alt=media&token=e50114a2-91f8-428a-ae4e-e90f91d08b32",
                                      year: "2018",
                                      nhaSX: "Tim Burton",
                                      rating: "7.8",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Bị quấy rầy bởi những ký ức kỳ lạ, cuộc đời của Neo có một bước ngoặt bất ngờ khi anh thấy mình trở lại bên trong Ma trận",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem17)
        let moviesItem18 = moviesData(id: 18,
                                      nMovies: "DUAL",
                                      iMovies: "Dual ",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FDUAL%20Trailer%20(2022)%20Karen%20Gillan%2C%20Theo%20James%2C%20Aaron%2C%20Paul%20Movie.mp4?alt=media&token=b915269a-661e-4e83-a5f2-16d55f5935bb",
                                      year: "2022",
                                      nhaSX: "Jon Favreau",
                                      rating: "7.8",
                                      quocGia: "Argentina",
                                      gthieu: "con Trevor và Phoebe. Vì gia đình bị phá sản, họ đành chuyển về khu nông trại hẻo lánh do ông mình để lại ở vùng ngoại ô Summerville",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem18)
        let moviesItem19 = moviesData(id: 19,
                                      nMovies: "Dumbledore",
                                      iMovies: "Dumbledore ",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FFantastic%20Beasts-%20The%20Secrets%20of%20Dumbledore%20%E2%80%93%20Official%20Trailer%202.mp4?alt=media&token=9b28e1ab-64cf-4e27-a0a7-2e70fbd02a21",
                                      year: "2020",
                                      nhaSX: "Robert Zemeckis",
                                      rating: "6.9",
                                      quocGia: "Venezuela",
                                      gthieu: "Chủng Tộc Bất Tử (The Eternals) là một nhóm gồm những người ngoài hành tinh cổ đại đã sống bí mật trên Trái đất trong hàng nghìn năm",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem19)
        let moviesItem20 = moviesData(id: 20,
                                      nMovies: "FATHER STU",
                                      iMovies: "Father Stu",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FFATHER%20STU%20Trailer%20(2022)%20Mel%20Gibson%2C%20Mark%20Wahlberg%2C%20Drama%20Movie.mp4?alt=media&token=b3d5c96d-b47d-48b8-9c87-82b6566621c3",
                                      year: "2022",
                                      nhaSX: "Ron Howard",
                                      rating: "8.0",
                                      quocGia: "Somalia",
                                      gthieu: "Một băng đảng khét tiếng xuất hiện ở Birmingham, Anh Quốc năm 1919. Cầm đầu băng là Tommy Shelby, tên trùm tội phạm khét tiếng muốn nổi lên bằng mọi giá.",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem20)
        let moviesItem21 = moviesData(id: 21,
                                      nMovies: "FREAKS OUT",
                                      iMovies: "Freaks Out",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FFREAKS%20OUT%20by%20Gabriele%20Mainetti%20(2021)%20-%20Full%20Trailer%20Eng%20Sub.mp4?alt=media&token=283a2061-c815-4226-81f5-97eaac0f0312",
                                      year: "2019",
                                      nhaSX: "Kyle Killen",
                                      rating: "7.8",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Amanda và con gái sống một cuộc sống yên tĩnh tại một trang trại ở Mỹ, nhưng khi hài cốt của người mẹ ghẻ lạnh từ Hàn Quốc đến, Amanda trở nên ám ảnh bởi nỗi sợ hãi biến thành mẹ ruột của mình.",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem21)
        let moviesItem22 = moviesData(id: 22,
                                      nMovies: "Gabriel's Inferno Part III",
                                      iMovies: "Gabriel's Inferno Part III ",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FGabriel's%20Inferno%20Part%20III%20-%20Official%20Teaser%20%232%20(PASSIONFLIX).mp4?alt=media&token=f98628a1-c815-433e-be63-0791bf1cd134",
                                      year: "2020",
                                      nhaSX: "Steven Kane",
                                      rating: "7.7",
                                      quocGia: "Canada",
                                      gthieu: "Sau khi gặp tai nạn rơi máy bay vào năm 2022, phi công chiến cơ du hành thời gian Adam Reed bắt tay với chính mình lúc 12 tuổi trong nhiệm vụ cứu tương lai.",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem22)
        let moviesItem23 = moviesData(id: 23,
                                      nMovies: "GOLD",
                                      iMovies: "gold",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FGOLD%20Trailer%20(2022).mp4?alt=media&token=427923aa-565a-4770-8ceb-ef4c41a23c52",
                                      year: "2018",
                                      nhaSX: "Jeremy Slater",
                                      rating: "9.0",
                                      quocGia: "Úc",
                                      gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem23)
        let moviesItem24 = moviesData(id: 24,
                                      nMovies: "Halo",
                                      iMovies: "halo",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FHalo%20The%20Series%20(2022)%20-%20Official%20Trailer%20-%20Paramount%2B.mp4?alt=media&token=5e8807a8-0747-4f88-9c4f-b33cb689bdb6",
                                      year: "2022",
                                      nhaSX: "Steven Spielberg",
                                      rating: "6.7",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Một phi công chiến đấu du hành ngược thời gian để cứu thế giới tương lai khỏi thảm họa môi trường, nhưng một tác dụng phụ khiến cô ấy trẻ lại và không ai coi trọng cô ấy",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem24)
        let moviesItem25 = moviesData(id: 25,
                                      nMovies: "HYTTI NRO 6",
                                      iMovies: "Hyttinro 6",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FHYTTI%20NRO%206%20-%20Officie%CC%88le%20NL%20trailer.mp4?alt=media&token=473a0379-c50b-49ce-892c-8b2d70a999bf",
                                      year: "2020",
                                      nhaSX: "Peter Jackson",
                                      rating: "8.6",
                                      quocGia: "Úc",
                                      gthieu: "Đúng 10 năm sau, Mặt Trăng đột nhiên rời khỏi quỹ đạo và dần trên đường va chạm với Trái Đất. Chuyện dường như có liên quan tới tai nạn năm xưa",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem25)
        let moviesItem26 = moviesData(id: 26,
                                      nMovies: "Jeepers Creepers Reborn",
                                      iMovies: "Jeepers Creepers- Reborn",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FJeepers%20Creepers%20Reborn%20-Trailer%20%232%20Movie%202022%20Teaser%20Concept.mp4?alt=media&token=780539a2-5e03-49f9-829b-8d87483efe89",
                                      year: "2022",
                                      nhaSX: "Michael Bay",
                                      rating: "5.9",
                                      quocGia: "Ấn Độ",
                                      gthieu: "Leonard là một thợ may người Anh, người từng đóng những bộ quần áo trên phố Savile Row nổi tiếng thế giới ở London",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem26)
        let moviesItem27 = moviesData(id: 27,
                                      nMovies: "John Wynn's One Hour",
                                      iMovies: "John Wynn's One Hour",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FJohn%20Wynn's%20One%20Hour%20(2022)%20OFFICIAL%20TRAILER%20-%20The%20Wynn%20Network.mp4?alt=media&token=296b3b08-d78d-4449-b02e-b831756090e9",
                                      year: "2019",
                                      nhaSX: "James Cameron",
                                      rating: "7.6",
                                      quocGia: "Trung Quốc",
                                      gthieu: "Trong một tương lai không xa, hai người trôi dạt trên sa mạc tình cờ gặp được kho vàng lớn nhất từng được tìm thấy và ước mơ giàu có cùng lòng tham đã vụt tắt. Họ nảy ra một kế hoạch khai quật tiền thưởng của mình",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem27)
        let moviesItem28 = moviesData(id: 28,
                                      nMovies: "Last Days in The Desert",
                                      iMovies: "Last Days in the Desert",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FLast%20Days%20in%20The%20Desert%20-%20Official%20Trailer%20(HD).mp4?alt=media&token=1dc0738e-eceb-4d4a-bfb6-3f8ef94ad717",
                                      year: "2018",
                                      nhaSX: "Tim Burton",
                                      rating: "7.8",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Bị quấy rầy bởi những ký ức kỳ lạ, cuộc đời của Neo có một bước ngoặt bất ngờ khi anh thấy mình trở lại bên trong Ma trận",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem28)

        let moviesItem29 = moviesData(id: 29,
                                      nMovies: "Marvel Studios’ Moon Knight",
                                      iMovies: "mocn kingt",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FMarvel%20Studios%E2%80%99%20Moon%20Knight%20-%20Official%20Trailer%20-%20Disney%2B.mp4?alt=media&token=e02b9546-696e-4d28-9dbf-aea398d337fb",
                                      year: "2020",
                                      nhaSX: "Robert Zemeckis",
                                      rating: "6.9",
                                      quocGia: "Venezuela",
                                      gthieu: "Chủng Tộc Bất Tử (The Eternals) là một nhóm gồm những người ngoài hành tinh cổ đại đã sống bí mật trên Trái đất trong hàng nghìn năm",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem29)
        let moviesItem30 = moviesData(id: 30,
                                      nMovies: "Moonfall",
                                      iMovies: "MoonFall",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FMoonfall%20(2022%20Movie)%20Official%20Trailer%20%E2%80%93%20Halle%20Berry%2C%20Patrick%20Wilson%2C%20John%20Bradley.mp4?alt=media&token=c0a63433-fccf-40f3-bf94-c85fca444475",
                                      year: "2022",
                                      nhaSX: "Ron Howard",
                                      rating: "8.0",
                                      quocGia: "Somalia",
                                      gthieu: "Một băng đảng khét tiếng xuất hiện ở Birmingham, Anh Quốc năm 1919. Cầm đầu băng là Tommy Shelby, tên trùm tội phạm khét tiếng muốn nổi lên bằng mọi giá.",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem30)
        let moviesItem31 = moviesData(id: 31,
                                      nMovies: "MORBIUS",
                                      iMovies: "morbius",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FMORBIUS%20-%20Official%20Trailer%20(HD).mp4?alt=media&token=bb086e2f-8482-486d-b17b-2fa35ddce309",
                                      year: "2020",
                                      nhaSX: "James Cameron",
                                      rating: "6.7",
                                      quocGia: "Turkmenistan",
                                      gthieu: "Là một tập hợp những tên bạo chúa và những kẻ chủ mưu tội phạm tồi tệ nhất trong lịch sử tập hợp lại để âm mưu một cuộc chiến quét sạch hàng triệu người, một người đàn ông phải chạy đua với thời gian để ngăn chặn chúng",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem31)
        let moviesItem32 = moviesData(id: 32,
                                      nMovies: "The Shawshank Redemption",
                                      iMovies: "Shawshank",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FThe%20Shawshank%20Redemption%20-%20Trailer%20-%20(1994)%20-%20HQ.mp4?alt=media&token=77f91af3-4b3a-4a61-b1a3-3bba80b2c52a",
                                      year: "2018",
                                      nhaSX: "Jeremy Slater",
                                      rating: "9.0",
                                      quocGia: "Úc",
                                      gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem32)
        let moviesItem33 = moviesData(id: 33,
                                      nMovies: "THE FLASH",
                                      iMovies: "the flash",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FTHE%20FLASH%20Trailer%20(2022).mp4?alt=media&token=f60ef48a-a197-4fad-a0fb-90b555b1fc93",
                                      year: "2022",
                                      nhaSX: "Steven Spielberg",
                                      rating: "6.7",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Một phi công chiến đấu du hành ngược thời gian để cứu thế giới tương lai khỏi thảm họa môi trường, nhưng một tác dụng phụ khiến cô ấy trẻ lại và không ai coi trọng cô ấy",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem33)
        let moviesItem34 = moviesData(id: 34,
                                      nMovies: "THE OUTFIT",
                                      iMovies: "The Outfit",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FTHE%20OUTFIT%20-%20Official%20Trailer%20-%20Only%20in%20Theaters%20March%2018.mp4?alt=media&token=926eb27e-9c7f-42f7-a4f4-df0a0e74a63f",
                                      year: "2022",
                                      nhaSX: "Michael Bay",
                                      rating: "5.9",
                                      quocGia: "Ấn Độ",
                                      gthieu: "Leonard là một thợ may người Anh, người từng đóng những bộ quần áo trên phố Savile Row nổi tiếng thế giới ở London",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem34)
        let moviesItem35 = moviesData(id: 35,
                                      nMovies: "UMMA",
                                      iMovies: "Umma",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FUMMA%20Official%20Trailer%20(2022).mp4?alt=media&token=fa7dc3fe-06e2-4c8d-bf7d-82c51333182e",
                                      year: "2018",
                                      nhaSX: "Tim Burton",
                                      rating: "7.8",
                                      quocGia: "Hoa Kỳ",
                                      gthieu: "Bị quấy rầy bởi những ký ức kỳ lạ, cuộc đời của Neo có một bước ngoặt bất ngờ khi anh thấy mình trở lại bên trong Ma trận",
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem35)
        let moviesItem36 = moviesData(id: 36,
                                      nMovies: "Ngôi trường xác sống ",
                                      iMovies: "XacSong",
                                      pVideo: "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FNgo%CC%82i%20tru%CC%9Bo%CC%9B%CC%80ng%20xa%CC%81c%20so%CC%82%CC%81ng%20-%20Trailer%20chi%CC%81nh%20thu%CC%9B%CC%81c%20-%20Netflix.mp4?alt=media&token=b447bdbf-c4d7-48ba-a92f-ef143b2cf2e1",
                                      year: "2020",
                                      nhaSX: "Robert Zemeckis",
                                      rating: "6.9",
                                      quocGia: "Venezuela",
                                      gthieu: "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người" ,
                                      favotite: false,
                                      like: false
         )
        fullMovies.append(moviesItem36)
        self.listMovieSearch = fullMovies
    }
    
    private func searchName(nameMovie: String) {
        self.listMovieSearch = nameMovie.isEmpty
        ? fullMovies : fullMovies.filter { $0.nameMovies.contains(nameMovie) }
        collectionView.reloadData()
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "Search", bundle: nil), forCellWithReuseIdentifier: "Search")
    }
    
    func confingSearchController() {
        searchBarMovie.delegate = self
        refreshControl.attributedTitle = NSAttributedString()
        refreshControl.addTarget(self,
                                 action: #selector(refresh(_:)),
                                 for: .valueChanged)
        collectionView.addSubview(refreshControl)
    }
    
    @objc private func refresh(_ sender: AnyObject) {
        refreshControl.endRefreshing()
    }
   
}
extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Search", for: indexPath) as! Search
        cell.searchLable.text = listMovieSearch[indexPath.row].nameMovies
        cell.searchImage.image = UIImage(named: listMovieSearch[indexPath.row].imageMovies)
        cell.namSX.text = listMovieSearch[indexPath.row].yearMovies
        cell.nhaSX.text = listMovieSearch[indexPath.row].nhaSx
        cell.diemFilm.text = listMovieSearch[indexPath.row].rating
        cell.gthieuFilm.text = listMovieSearch[indexPath.row].gthieu
        cell.quocGia.text = listMovieSearch[indexPath.row].quocGia

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listMovieSearch.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let size = (collectionView.frame.size.width)
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let urlVideo  = listMovieSearch[indexPath.row].playVideo
        let url = URL(string: urlVideo)
        player = AVPlayer(url: url!)
        let playerViewcontroller = AVPlayerViewController()
        playerViewcontroller.player = player
        playerViewcontroller.modalPresentationStyle = .fullScreen
        DispatchQueue.main.async
        {
            self.present(playerViewcontroller, animated: true)
            {
                DispatchQueue.main.async
                {
                    self.player.play()
                }
            }
        }
        
//        let detaiVC = DetaiViewController()
//        detaiVC.getImage = UIImage(named: listMovieSearch[indexPath.row].imageMovies)!
//        detaiVC.getName = listMovieSearch[indexPath.row].nameMovies
//        detaiVC.getUrl = listMovieSearch[indexPath.row].playVideo
//        detaiVC.year = listMovieSearch[indexPath.row].yearMovies
//        detaiVC.gthieu = listMovieSearch[indexPath.row].gthieu
//        detaiVC.nhaSX = listMovieSearch[indexPath.row].nhaSx
//        detaiVC.rating = listMovieSearch[indexPath.row].rating
//        self.navigationController?.pushViewController(detaiVC, animated: true)
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        guard let name = searchBar.searchTextField.text else {return}
        searchName(nameMovie: name)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        searchBar.endEditing(true)
        guard let name = searchBar.searchTextField.text else {return}
        searchName(nameMovie: name)
    }
}
