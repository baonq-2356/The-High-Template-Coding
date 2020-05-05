//
//  Repo.swift
//  RxSwift-Template
//
//  Created by nguyen.the.trinh on 4/22/20.
//  Copyright © 2020 nguyen.the.trinh. All rights reserved.
//

import ObjectMapper

struct Repo {
    var id = 0
    var name = ""
    var fullname = ""
    var urlString = ""
    var starCount = 0
    var folkCount = 0
    var avatarURLString = ""
}

extension Repo: Then, Equatable { }

extension Repo: Mappable {
    
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        fullname <- map["full_name"]
        urlString <- map["html_url"]
        starCount <- map["stargazers_count"]
        folkCount <- map["forks"]
        avatarURLString <- map["owner.avatar_url"]
    }
}
