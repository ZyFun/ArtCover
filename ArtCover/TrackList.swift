//
//  TrackList.swift
//  ArtCover
//
//  Created by Дмитрий Данилин on 17.07.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class TrackList: UITableViewController {

    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
                          "Dave Wincent - Red Eye (Original Mix)",
                          "E-Spectro - End Station (Original Mix)",
                          "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                          "Ilija Djokovic - Delusion (Original Mix)",
                          "John Baptiste - Mycelium (Original Mix)",
                          "Lane 8 - Fingerprint (Original Mix)",
                          "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                          "Metodi Hristov, Gallya - Badmash (Original Mix)",
                          "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }
    
    // Устанавливаем высоту ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    // Подготавливаем переносимые данные на экран ShowDetail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            // Создаём крнстанту и присваиваем индекс выбранной строки
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // Создаем экземпляр класса DetailVC
                let detailsVC = segue.destination as! DetailVC
                // Присваиваем экземпляру значение выюранной строки
                detailsVC.trackTitle = imageNameArray[indexPath.row]
            }
        }
    }
}
