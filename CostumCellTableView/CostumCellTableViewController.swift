//
//  CostumCellTableViewController.swift
//  CostumCellTableView
//
//  Created by SMK IDN MI on 10/19/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class CostumCellTableViewController: UITableViewController {
    
    let category:[String] = ["Sejarah", "Aqidah", "Science", "Fiqh", "Islam"]
    
    let tglData : [String] = ["Minggu, 22 October 2017", "Senen 23 October 2017", "Selasa 24 October 2017", "Rabu 25 October 2017", "Kamis 26 October 2017",]
    let judulBerita : [String] = ["Iblis Termasuk Malaikat?", "Penduduk Surga Ingat Kehidupan Dunia?", "Tanda Taubat Diterima", "Berdoa itu Wajib?", "Apakah ada Musik di Surga?"]
    
    let isiBerita : [String] = ["Dalam al-Quran ada banyak keterangan,'Semua malaikat sujud, kecuali Iblis'. Sementara dalam kaidah bahasa, kata yang dikecualikan dengan kata yang terkecualikan haruslah sejenis. Apakah ini berarti bahwa Iblis adalah Malaikat?Dan (ingatlah) ketika Kami berfirman kepada para malaikat: Sujudlah kamu kepada Adam, maka sujudlah mereka kecuali Iblis. Dia adalah dari golongan jin, maka ia mendurhakai perintah Tuhannya. (QS. Al-Kahfi: 50)Allah menegaskan, bahwa Iblis dari golongan jin dan bukan Malaikat. Dan seperti yang kita tahu, Jin adalah jenis makhluk yang diciptakan dari Api, sementara Malaikat diciptakan dari nur (cahaya).", "Penduduk surga itu saling berhadap-hadapan satu sama lain sambil bercakap-cakap. Berkatalah salah seorang di antara mereka,Sesungguhnya aku dahulu (di dunia) pernah mempunyai seorang teman yang berkata,Apakah sesungguhnya kamu termasuk orang-orang yang membenarkan (hari berbangkit)? Apabila kita telah mati dan telah menjadi tanah dan tulang-belulang, apakah kita benar-benar (akan dibangkitkan) untuk diberi pembalasan? (QS. As-Shoffat : 50 -53).", "Ada 2 hal yang perlu kita bedakan terkait nilai amal,[1] Syarat sah amal[2] Diterimanya amalUntuk yang pertama, syarat sah amalManusia bisa mengukur, karena ini sifatnya dzahir. Seseorang bisa mempelajari apa saja syarat sah amal tersebut, sehingga mereka bisa menilai, apakah amal yang dia kerjakan telah diterima atau tidak.", "Tuhanmu berfirman: Berdoalah kepada-Ku, niscaya akan Kuperkenankan bagimu. Sesungguhnya orang-orang yang bersikap sombong dari menyembah-Ku akan masuk neraka Jahannam dalam keadaan hina dina. (QS. Ghafir: 60)Diantara makna bersikap sombong dari menyembah-Ku adalah tidak mau berdoa kepada-Ku.Artinya, orang yang tidak mau berdoa kepada Allah akan diancam dengan neraka. (Zadul Masir, Ibnul Jauzi, 5/296)", "Di dalam surga mereka saling memperebutkan piala (gelas) yang isinya tidak (menimbulkan) kata-kata yang tidak berfaedah dan tiada pula perbuatan dosa. (QS. At-Thur: 23)Ketika penjelasan tentang musik, apakah kelak ada di surga, Lembaga Fatwa Syabakah Islamiyah menjelaskan hukum musik,oleh karena itu, tidak layak musik ada si surga. Karena dosa dan bunyi sia-sia atau semacamnya tidak ada tempat di surga.. dan juga, surga adalah negeri yang baik, penghuninya orang-orang baik, dan mereka tidak menginginkan kecuali kebaikan. (Fatawa Syabakah Islamiyah, no. 257992)"]
    
    let gambarBerita : [String] = ["1.png", "2.png", "3.png", "4.png", "5.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // seting height table view
        tableView.estimatedRowHeight = 650.0
        tableView.rowHeight = UITableViewAutomaticDimension

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return judulBerita.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {       let cell = tableView.dequeueReusableCell(withIdentifier: "cellBerita", for: indexPath) as! BeritaTableViewCell

        // Configure the cell...
        
        cell.judulBerita.text = judulBerita[indexPath.row]
        cell.labeltanggalBerita.text = tglData[indexPath.row]
        cell.labelKategory.text = category[indexPath.row]
        cell.isiBerita.text = isiBerita[indexPath.row]
        
        let dataImage :UIImage = UIImage(named: gambarBerita[indexPath.row])!

       cell.imgGambar.image = dataImage

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
