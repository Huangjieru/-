//
//  ComicCollectionViewController.swift
//  照片牆
//
//  Created by jr on 2022/9/11.
//

import UIKit

//private let reuseIdentifier = "Cell"

class ComicCollectionViewController: UICollectionViewController {

    let comics = [
        Comic(pic: "pic1_1",page: "1_1"),
        Comic(pic: "pic1_2",page: "1_2"),
        Comic(pic: "pic1_3",page: "1_3"),
        Comic(pic: "pic1_4",page: "1_4"),
        Comic(pic: "pic1_5",page: "1_5"),
        Comic(pic: "pic1_6",page: "1_5"),
        Comic(pic: "pic1_7",page: "1_7"),
        Comic(pic: "pic1_8",page: "1_8"),
        Comic(pic: "pic1_9",page: "1_9"),
        Comic(pic: "pic2_1",page: "2_1"),
        Comic(pic: "pic2_2",page: "2_2"),
        Comic(pic: "pic2_3",page: "2_3"),
        Comic(pic: "pic2_4",page: "2_4"),
        Comic(pic: "pic2_5",page: "2_5"),
        Comic(pic: "pic2_6",page: "2_6"),
        Comic(pic: "pic2_7",page: "2_7"),
        Comic(pic: "pic2_8",page: "2_8"),
        Comic(pic: "pic2_9",page: "2_9")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return comics.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ComicCollectionViewCell.reuseIdentitfier, for: indexPath) as! ComicCollectionViewCell
    
        // Configure the cell
        let comic = comics[indexPath.item]
        cell.picImageView.image = UIImage(named: comic.pic)
        cell.pageLabel.text = comic.page
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
