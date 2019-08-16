//
//  LikedListTableViewController.swift
//  Card
//
//  Created by 原田悠嗣 on 2019/08/10.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit

class LikedListTableViewController: UITableViewController {

    // いいね」された名前、職業、出身地の一覧
    var likedName: [String] = []
    var likedJob: [String] = []
    var likedFrom: [String] = []

    // XIBTableViewCellのファイルを読み込む
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }

    // MARK: - Table view data source

    // 必須:セルの数を返すメソッド
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // いいねされたユーザーの数
        return likedName.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

    // 必須:セルの設定(型をXIBTableViewCellにする)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! XIBTableViewCell

        // いいねされた名前、職業、出身地をセルのラベルに表示
        cell.nameLabel.text = likedName[indexPath.row]
        cell.jobLabel.text = likedJob[indexPath.row]
        cell.fromLabel.text = likedFrom[indexPath.row]
        cell.xibImage.image = UIImage(named: likedName[indexPath.row])

        return cell
    }

}
