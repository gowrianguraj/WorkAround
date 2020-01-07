//
//  FeedViewModel.swift
//  WorkAround
//
//  Created by gowri anguraj on 01/10/19.
//  Copyright © 2019 gowri anguraj. All rights reserved.
//

import Foundation

struct AlbumModels {
    let albumId:Int?
    let id:Int?
    let title:String?
    let url:String?
    let thumbnailUrl:String?
    
    init(albums:AlbumObject) {
        self.albumId = albums.albumId
        self.id = albums.id
        self.title = albums.title
        self.url = albums.url
        self.thumbnailUrl = albums.thumbnailUrl
    }
}
