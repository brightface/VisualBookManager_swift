//
//  Books.swift
//  BookManager
//
//  Created by 김용환 on 12/09/2019.
//  Copyright © 2019 brightface. All rights reserved.
//

struct Book {
    //nil 값이 들어갈수 있도록 optional 로 바꾼다.
    var name : String?
    var genre : String?
    var author: String?
    
    func bookPrint(){ //optional ? 로 변수 만들면 !로 해줘야한다.
        print("Name :\(name!)")
        print("Genre :\(genre!)")
        print("Author :\(author!)")
    }
}

