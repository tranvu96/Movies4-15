//
//  HomeData.swift
//  Real_DeAn
//
//  Created by TranVu on 15/03/2022.
//

import Foundation
struct HomeData
{
    let sectionType: String
    let iDs: [Int]
    let imageMovies : [String]
    let nameMovies: [String]
    let urlMovies: [String]
    let yearMovies: [String]
    let nhaSx: [String]
    let rating: [String]
    let quocGia: [String]
    let gthieu: [String]
}

var arrMovies = [HomeData(sectionType: "Trending Movies",
                          iDs: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
                          imageMovies: ["Freaks Out", "Gabriel's Inferno Part III ", "gold", "halo", "Hyttinro 6", "Jeepers Creepers- Reborn", "John Wynn's One Hour", "Kingsman- Khởi Nguồn", "Last Days in the Desert", "Ma Trận", "mocn kingt", "MoonFall", "Morbius"],
                          nameMovies: ["Freaks Out", "Gabriel's Inferno Part III ", "Gold", "Halo", "Hyttinro 6", "Jeepers Creepers- Reborn", "John Wynn's One Hour", "Kingsman- Khởi Nguồn", "Last Days in the Desert", "Ma Trận", "Mocn Kingt", "MoonFall", "morbius"],
                          urlMovies: ["https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FFREAKS%20OUT%20by%20Gabriele%20Mainetti%20(2021)%20-%20Full%20Trailer%20Eng%20Sub.mp4?alt=media&token=283a2061-c815-4226-81f5-97eaac0f0312", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FGabriel's%20Inferno%20Part%20III%20-%20Official%20Teaser%20%232%20(PASSIONFLIX).mp4?alt=media&token=f98628a1-c815-433e-be63-0791bf1cd134", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FGOLD%20Trailer%20(2022).mp4?alt=media&token=427923aa-565a-4770-8ceb-ef4c41a23c52", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FHalo%20The%20Series%20(2022)%20-%20Official%20Trailer%20-%20Paramount%2B.mp4?alt=media&token=5e8807a8-0747-4f88-9c4f-b33cb689bdb6", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FHYTTI%20NRO%206%20-%20Officie%CC%88le%20NL%20trailer.mp4?alt=media&token=473a0379-c50b-49ce-892c-8b2d70a999bf", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FJeepers%20Creepers%20Reborn%20-Trailer%20%232%20Movie%202022%20Teaser%20Concept.mp4?alt=media&token=780539a2-5e03-49f9-829b-8d87483efe89", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FJohn%20Wynn's%20One%20Hour%20(2022)%20OFFICIAL%20TRAILER%20-%20The%20Wynn%20Network.mp4?alt=media&token=296b3b08-d78d-4449-b02e-b831756090e9","https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FKingsman-%20Kho%CC%9B%CC%89i%20Nguo%CC%82%CC%80nu%20ra%CC%A3p%202021.mp4?alt=media&token=ae7144de-5a1b-4add-8270-fd33d9f9c772", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FLast%20Days%20in%20The%20Desert%20-%20Official%20Trailer%20(HD).mp4?alt=media&token=1dc0738e-eceb-4d4a-bfb6-3f8ef94ad717", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FMaTran.mp4?alt=media&token=c747e285-762e-4f6b-a03e-6cf1d195f010", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FMarvel%20Studios%E2%80%99%20Moon%20Knight%20-%20Official%20Trailer%20-%20Disney%2B.mp4?alt=media&token=e02b9546-696e-4d28-9dbf-aea398d337fb", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FMoonfall%20(2022%20Movie)%20Official%20Trailer%20%E2%80%93%20Halle%20Berry%2C%20Patrick%20Wilson%2C%20John%20Bradley.mp4?alt=media&token=c0a63433-fccf-40f3-bf94-c85fca444475", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FMORBIUS%20-%20Official%20Trailer%20(HD).mp4?alt=media&token=bb086e2f-8482-486d-b17b-2fa35ddce309"],
                         yearMovies: ["2019", "2020", "2018", "2022", "2020", "2022", "2019", "2020", "2018", "2022", "2020", "2022", "2020"],
                         nhaSx: ["Kyle Killen", "Steven Kane", "Jeremy Slater", "Steven Spielberg", "Peter Jackson", "Michael Bay", "James Cameron", "Christopher Nolan", "Tim Burton", "Jon Favreau", "Robert Zemeckis", "Ron Howard","James Cameron"],
                          rating: ["7.8", "7.7", "9.0", "6.7", "8.6", "5.9", "7.6", "6.5", "7.8", "7.8", "6.9", "8.0", "6.7"],
                         quocGia: ["Hoa Kỳ", "Canada", "Úc", "Hoa Kỳ", "Úc", "Ấn Độ", "Trung Quốc", "Việt Nam", "Hoa Kỳ", "Argentina", "Venezuela", "Somalia", "Turkmenistan"],
                         gthieu: ["Amanda và con gái sống một cuộc sống yên tĩnh tại một trang trại ở Mỹ, nhưng khi hài cốt của người mẹ ghẻ lạnh từ Hàn Quốc đến, Amanda trở nên ám ảnh bởi nỗi sợ hãi biến thành mẹ ruột của mình.",
                                  "Sau khi gặp tai nạn rơi máy bay vào năm 2022, phi công chiến cơ du hành thời gian Adam Reed bắt tay với chính mình lúc 12 tuổi trong nhiệm vụ cứu tương lai.",
                                  "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                  "Một phi công chiến đấu du hành ngược thời gian để cứu thế giới tương lai khỏi thảm họa môi trường, nhưng một tác dụng phụ khiến cô ấy trẻ lại và không ai coi trọng cô ấy",
                                  "Đúng 10 năm sau, Mặt Trăng đột nhiên rời khỏi quỹ đạo và dần trên đường va chạm với Trái Đất. Chuyện dường như có liên quan tới tai nạn năm xưa",
                                  "Leonard là một thợ may người Anh, người từng đóng những bộ quần áo trên phố Savile Row nổi tiếng thế giới ở London",
                                  "Trong một tương lai không xa, hai người trôi dạt trên sa mạc tình cờ gặp được kho vàng lớn nhất từng được tìm thấy và ước mơ giàu có cùng lòng tham đã vụt tắt. Họ nảy ra một kế hoạch khai quật tiền thưởng của mình",
                                  "Sau khi tìm thấy cơ thể vật chủ trong tay phóng viên điều tra Eddie Brock, người ngoài hành tinh symbiote phải đối mặt với kẻ thù mới, Carnage, bản ngã thay thế của kẻ giết người hàng loạt Cletus Kasady",
                                  "Bị quấy rầy bởi những ký ức kỳ lạ, cuộc đời của Neo có một bước ngoặt bất ngờ khi anh thấy mình trở lại bên trong Ma trận",
                                  "con Trevor và Phoebe. Vì gia đình bị phá sản, họ đành chuyển về khu nông trại hẻo lánh do ông mình để lại ở vùng ngoại ô Summerville",
                                  "Chủng Tộc Bất Tử (The Eternals) là một nhóm gồm những người ngoài hành tinh cổ đại đã sống bí mật trên Trái đất trong hàng nghìn năm",
                                  "Một băng đảng khét tiếng xuất hiện ở Birmingham, Anh Quốc năm 1919. Cầm đầu băng là Tommy Shelby, tên trùm tội phạm khét tiếng muốn nổi lên bằng mọi giá.",
                                  "Là một tập hợp những tên bạo chúa và những kẻ chủ mưu tội phạm tồi tệ nhất trong lịch sử tập hợp lại để âm mưu một cuộc chiến quét sạch hàng triệu người, một người đàn ông phải chạy đua với thời gian để ngăn chặn chúng"]),
                 HomeData(sectionType: "Coming Soon",
                          iDs: [14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26],
                          imageMovies: ["attank on titan", "batman", "Biệt Đội Săn Ma", "Bóng ma anh quốc", "Captain Nova", "Chủng Tộc Bất Tử", "Cuốn Sách Của Boba Fett", "Death the nil", "Dự Án Adam", "Dual ", "Dumbledore ", "Father Stu"],
                          nameMovies: ["Attank On Titan", "The Batman", "Biệt Đội Săn Ma", "Bóng ma anh quốc", "Captain Nova", "Chủng Tộc Bất Tử", "Cuốn Sách Của Boba Fett", "Death the nil", "Dự Án Adam", "Dual ", "Dumbledore ", "Father Stu"],
                          urlMovies: ["https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FAttack%20on%20Titan%20Season%204%20Part%202%20-%20Official%20Trailer.mp4?alt=media&token=c5769866-6d49-4b69-a556-72d75f3e51c9", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FTHE%20BATMAN%20%E2%80%93%20Main%20Trailer.mp4?alt=media&token=c1eb2bd7-48ad-4568-b0b0-41d4933fb078", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FBie%CC%A3%CC%82t%20%C4%90o%CC%A3%CC%82i%20Sa%CC%86n%20Ma-%20Chuye%CC%82%CC%89n%20Kie%CC%82%CC%81p.mp4?alt=media&token=9bac71c1-1ac0-4a2b-8d4e-f4d9c8668065", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FBo%CC%81ng%20ma%20anh%20quo%CC%82%CC%81c.mp4?alt=media&token=ba21a44c-9de8-4d44-814c-bb92d85ebf1b", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FCaptain%20Nova%20-%20Netflix%20Trailer.mp4?alt=media&token=fa4e2b51-3346-42ef-bcf7-a8f3fdafad25", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FChu%CC%89ng%20To%CC%A3%CC%82c%20Ba%CC%82%CC%81t%20Tu%CC%9B%CC%89.mp4?alt=media&token=a843b8e3-d8af-4d47-95a2-d2f1ab99b3e4", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FCuo%CC%82%CC%81n%20Sa%CC%81ch%20Cu%CC%89a%20Boba%20Fett%20.mp4?alt=media&token=eeec825e-301a-4f0d-933d-d9d39994ed5c", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FOfficial%20Trailer%20-%20Death%20on%20the%20Nile%20-%2020th%20Century%20Studios.mp4?alt=media&token=c01e7ab5-9753-4af2-80ed-19aac8d9c928", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FDu%CC%9B%CC%A3%20a%CC%81n%20Adam%20-%20Trailer%20chi%CC%81nh%20thu%CC%9B%CC%81c%20-%20Netflix.mp4?alt=media&token=e50114a2-91f8-428a-ae4e-e90f91d08b32", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FDUAL%20Trailer%20(2022)%20Karen%20Gillan%2C%20Theo%20James%2C%20Aaron%2C%20Paul%20Movie.mp4?alt=media&token=b915269a-661e-4e83-a5f2-16d55f5935bb", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FFantastic%20Beasts-%20The%20Secrets%20of%20Dumbledore%20%E2%80%93%20Official%20Trailer%202.mp4?alt=media&token=9b28e1ab-64cf-4e27-a0a7-2e70fbd02a21", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FFATHER%20STU%20Trailer%20(2022)%20Mel%20Gibson%2C%20Mark%20Wahlberg%2C%20Drama%20Movie.mp4?alt=media&token=b3d5c96d-b47d-48b8-9c87-82b6566621c3"],
                          yearMovies: ["2019", "2020", "2018", "2022", "2020", "2022", "2019", "2020", "2018", "2022", "2020", "2022", "2020"],
                          nhaSx: ["Kyle Killen", "Steven Kane", "Jeremy Slater", "Steven Spielberg", "Peter Jackson", "Michael Bay", "James Cameron", "Christopher Nolan", "Tim Burton", "Jon Favreau", "Robert Zemeckis", "Ron Howard"],
                           rating: ["7.8", "7.7", "9.0", "6.7", "8.6", "5.9", "7.6", "6.5", "7.8", "7.8", "6.9", "8.0", "6.7"],
                          quocGia: ["Hoa Kỳ", "Canada", "Úc", "Hoa Kỳ", "Úc", "Ấn Độ", "Trung Quốc", "Việt Nam", "Hoa Kỳ", "Argentina", "Venezuela", "Somalia", "Turkmenistan"],
                          gthieu: ["Amanda và con gái sống một cuộc sống yên tĩnh tại một trang trại ở Mỹ, nhưng khi hài cốt của người mẹ ghẻ lạnh từ Hàn Quốc đến, Amanda trở nên ám ảnh bởi nỗi sợ hãi biến thành mẹ ruột của mình.",
                                   "Sau khi gặp tai nạn rơi máy bay vào năm 2022, phi công chiến cơ du hành thời gian Adam Reed bắt tay với chính mình lúc 12 tuổi trong nhiệm vụ cứu tương lai.",
                                   "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                   "Một phi công chiến đấu du hành ngược thời gian để cứu thế giới tương lai khỏi thảm họa môi trường, nhưng một tác dụng phụ khiến cô ấy trẻ lại và không ai coi trọng cô ấy",
                                   "Đúng 10 năm sau, Mặt Trăng đột nhiên rời khỏi quỹ đạo và dần trên đường va chạm với Trái Đất. Chuyện dường như có liên quan tới tai nạn năm xưa",
                                   "Leonard là một thợ may người Anh, người từng đóng những bộ quần áo trên phố Savile Row nổi tiếng thế giới ở London",
                                   "Trong một tương lai không xa, hai người trôi dạt trên sa mạc tình cờ gặp được kho vàng lớn nhất từng được tìm thấy và ước mơ giàu có cùng lòng tham đã vụt tắt. Họ nảy ra một kế hoạch khai quật tiền thưởng của mình",
                                   "Sau khi tìm thấy cơ thể vật chủ trong tay phóng viên điều tra Eddie Brock, người ngoài hành tinh symbiote phải đối mặt với kẻ thù mới, Carnage, bản ngã thay thế của kẻ giết người hàng loạt Cletus Kasady",
                                   "Bị quấy rầy bởi những ký ức kỳ lạ, cuộc đời của Neo có một bước ngoặt bất ngờ khi anh thấy mình trở lại bên trong Ma trận",
                                   "con Trevor và Phoebe. Vì gia đình bị phá sản, họ đành chuyển về khu nông trại hẻo lánh do ông mình để lại ở vùng ngoại ô Summerville",
                                   "Chủng Tộc Bất Tử (The Eternals) là một nhóm gồm những người ngoài hành tinh cổ đại đã sống bí mật trên Trái đất trong hàng nghìn năm",
                                   "Một băng đảng khét tiếng xuất hiện ở Birmingham, Anh Quốc năm 1919. Cầm đầu băng là Tommy Shelby, tên trùm tội phạm khét tiếng muốn nổi lên bằng mọi giá.",
                                   "Là một tập hợp những tên bạo chúa và những kẻ chủ mưu tội phạm tồi tệ nhất trong lịch sử tập hợp lại để âm mưu một cuộc chiến quét sạch hàng triệu người, một người đàn ông phải chạy đua với thời gian để ngăn chặn chúng"]),
                 HomeData(sectionType: "Popular",
                          iDs: [27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39],
                          imageMovies: ["Người Nhện", "Scream", "Shawshank", "the flash", "The Jack in the Box- Awakening", "The Outfit", "The Requin", "Thợ Săn Cổ Vật", "Umma", "Venom", "XacSong"],
                          nameMovies: ["Người Nhện", "Scream", "Shawshank", "The Flash", "The Jack in the Box- Awakening", "The Outfit", "The Requin", "Thợ Săn Cổ Vật", "Umma", "Venom", "XacSong"],
                          urlMovies: ["https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FNgu%CC%9Bo%CC%9B%CC%80i%20Nhe%CC%A3%CC%82n-%20Kho%CC%82ng%20Co%CC%80n%20Nha%CC%80.mp4?alt=media&token=671c639d-8959-451b-b9ed-c98fbd54620f", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FScream.mp4?alt=media&token=b6e979c1-a98c-4eb1-bebf-1116bb45e7d8", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FThe%20Shawshank%20Redemption%20-%20Trailer%20-%20(1994)%20-%20HQ.mp4?alt=media&token=77f91af3-4b3a-4a61-b1a3-3bba80b2c52a", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FTHE%20FLASH%20Trailer%20(2022).mp4?alt=media&token=f60ef48a-a197-4fad-a0fb-90b555b1fc93", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FThe%20Jack%20in%20the%20Box-%20Awakening.mp4?alt=media&token=aea63e1e-1a7c-4255-a1e4-a523a1726a3d", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FTHE%20OUTFIT%20-%20Official%20Trailer%20-%20Only%20in%20Theaters%20March%2018.mp4?alt=media&token=926eb27e-9c7f-42f7-a4f4-df0a0e74a63f", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FThe%20Requin.mp4?alt=media&token=5b8ec45d-93a4-4fdd-9119-e309ca262dea", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FTho%CC%9B%CC%A3%20Sa%CC%86n%20Co%CC%82%CC%89%20Va%CC%A3%CC%82t.mp4?alt=media&token=5dafac5f-2741-442a-b346-0fe467cfd4dd", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FUMMA%20Official%20Trailer%20(2022).mp4?alt=media&token=fa7dc3fe-06e2-4c8d-bf7d-82c51333182e", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/Video%2FVenom-%20%C4%90o%CC%82%CC%81i%20Ma%CC%A3%CC%86t%20Tu%CC%9B%CC%89%20Thu%CC%80.mp4?alt=media&token=fd0a1480-30b1-4465-bbcf-6d228f379d87", "https://firebasestorage.googleapis.com/v0/b/readmovies-3b6d5.appspot.com/o/download%2FNgo%CC%82i%20tru%CC%9Bo%CC%9B%CC%80ng%20xa%CC%81c%20so%CC%82%CC%81ng%20-%20Trailer%20chi%CC%81nh%20thu%CC%9B%CC%81c%20-%20Netflix.mp4?alt=media&token=b447bdbf-c4d7-48ba-a92f-ef143b2cf2e1"],
                          yearMovies: ["2019", "2020", "2018", "2022", "2020", "2022", "2019", "2020", "2018", "2022", "2020", "2022", "2020"],
                          nhaSx: ["Kyle Killen", "Steven Kane", "Jeremy Slater", "Steven Spielberg", "Peter Jackson", "Michael Bay", "James Cameron", "Christopher Nolan", "Tim Burton", "Jon Favreau", "Robert Zemeckis"],
                           rating: ["7.8", "7.7", "9.0", "6.7", "8.6", "5.9", "7.6", "6.5", "7.8", "7.8", "6.9", "8.0", "6.7"],
                          quocGia: ["Hoa Kỳ", "Canada", "Úc", "Hoa Kỳ", "Úc", "Ấn Độ", "Trung Quốc", "Việt Nam", "Hoa Kỳ", "Argentina", "Venezuela", "Somalia"],
                          gthieu: ["Câu chuyện có thật về võ sĩ quyền anh, Cha Stuart Long, người có hành trình từ tự hủy hoại đến cứu chuộc đã truyền cảm hứng cho vô số người trên đường đi",
                                   "Amanda và con gái sống một cuộc sống yên tĩnh tại một trang trại ở Mỹ, nhưng khi hài cốt của người mẹ ghẻ lạnh từ Hàn Quốc đến, Amanda trở nên ám ảnh bởi nỗi sợ hãi biến thành mẹ ruột của mình.",
                                   "Sau khi gặp tai nạn rơi máy bay vào năm 2022, phi công chiến cơ du hành thời gian Adam Reed bắt tay với chính mình lúc 12 tuổi trong nhiệm vụ cứu tương lai.",
                                   "Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm chiến đấu với bọn Titan khổng lồ đang đe dọa hủy diệt loài người",
                                   "Một phi công chiến đấu du hành ngược thời gian để cứu thế giới tương lai khỏi thảm họa môi trường, nhưng một tác dụng phụ khiến cô ấy trẻ lại và không ai coi trọng cô ấy",
                                   "Đúng 10 năm sau, Mặt Trăng đột nhiên rời khỏi quỹ đạo và dần trên đường va chạm với Trái Đất. Chuyện dường như có liên quan tới tai nạn năm xưa",
                                   "Leonard là một thợ may người Anh, người từng đóng những bộ quần áo trên phố Savile Row nổi tiếng thế giới ở London",
                                   "Trong một tương lai không xa, hai người trôi dạt trên sa mạc tình cờ gặp được kho vàng lớn nhất từng được tìm thấy và ước mơ giàu có cùng lòng tham đã vụt tắt. Họ nảy ra một kế hoạch khai quật tiền thưởng của mình",
                                   "Sau khi tìm thấy cơ thể vật chủ trong tay phóng viên điều tra Eddie Brock, người ngoài hành tinh symbiote phải đối mặt với kẻ thù mới, Carnage, bản ngã thay thế của kẻ giết người hàng loạt Cletus Kasady",
                                   "Bị quấy rầy bởi những ký ức kỳ lạ, cuộc đời của Neo có một bước ngoặt bất ngờ khi anh thấy mình trở lại bên trong Ma trận",
                                   "con Trevor và Phoebe. Vì gia đình bị phá sản, họ đành chuyển về khu nông trại hẻo lánh do ông mình để lại ở vùng ngoại ô Summerville",
                                   "Chủng Tộc Bất Tử (The Eternals) là một nhóm gồm những người ngoài hành tinh cổ đại đã sống bí mật trên Trái đất trong hàng nghìn năm"])]
