//
//  FeedCell.swift
//  WorkAround
//
//  Created by gowri anguraj on 01/10/19.
//  Copyright © 2019 gowri anguraj. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet var namelbl: UILabel!
    @IBOutlet var url: UILabel!
    @IBOutlet var imageURL : UIImageView!
    
    var albumModels:AlbumModels!{
        didSet{
            namelbl.text = albumModels.title
            url.text = albumModels.url
           
           /*
            if let imageURL = URL(string: albumModels.thumbnailUrl!){
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            self.imageURL.image = image
                        }
                    }
                }
            }*/

        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
