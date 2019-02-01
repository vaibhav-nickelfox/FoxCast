//
//  ProfileViewModel.swift
//  FoxCast
//
//  Created by Vaibhav Parmar on 01/02/19.
//  Copyright © 2019 Nickelfox. All rights reserved.
//

import Foundation

struct Feed {
    var name: String
    var title: String
    var feedImage: String
    var profileImage: String
}

class ProfileViewModel {
    
    var sectionModel = SectionModel()
    
    init() {
        self.prepareModel()
    }
    
    private func prepareModel() {
        
        let cellModels = self.feeds.map {
            CollectionCellModel.init(name: $0.name, title: $0.title,
                                     image: $0.feedImage, profileImage: $0.profileImage)
        }
        self.sectionModel = SectionModel(cellModels: cellModels)
    }
    
    var rowCount: Int {
        return self.sectionModel.cellModels.count
    }
    
    func cellModel(at indexPath: IndexPath) -> Any {
        return self.sectionModel.cellModels[indexPath.row]
    }
    
    var feeds = [
        Feed(name: "Night King", title: "First White Walker",
             feedImage: "night_feed", profileImage: "night_king"),
        Feed(name: "Jon Snow", title: "Knower of Nothing",
             feedImage: "jon_feed", profileImage: "jon_snow"),
        Feed(name: "Daenerys Targaryen", title: "Mother of Dragons",
             feedImage: "daenerys_feed", profileImage: "daenerys"),
        Feed(name: "Arya Stark", title: "The no one",
             feedImage: "arya_littlefinger", profileImage: "arya_stark"),
        Feed(name: "Tyrion Lannister", title: "The Imp",
             feedImage: "tyrion_feed", profileImage: "tyrion"),
        Feed(name: "Bran Stark", title: "Three eyed Raven",
             feedImage: "bran_feed", profileImage: "bran_stark")
    ]
    
}
