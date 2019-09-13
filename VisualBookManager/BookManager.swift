//
//  BookManager.swift
//  VisualBookManager
//
//  Created by 김용환 on 13/09/2019.
//  Copyright © 2019 brightface. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]();
    
    func registerBook(bookObject:Book)
    {
        bookList += [bookObject];
    }

    func showAllBooks()->String
    {
        var strTemp=""
        for bookTemp in bookList
        {
            strTemp += "Name :\(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "---------------\n"
        }
        return strTemp
    }
    func countBooks() -> Int {
        return bookList.count
    }
    func searchBook(name:String)->String? //nil값도 들어갈수 있기 때문에 optional value로 ? 로 해주었다
    {
        var strTemp=""
        for bookTemp in bookList
        {
            if bookTemp.name==name
            {
                strTemp += "Name :\(bookTemp.name!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "Author : \(bookTemp.author!)\n"
                strTemp += "---------------\n"
                return strTemp
            }
        }
        return nil
    }
    func removeBook(name : String)
    {
        for(index,value) in bookList.enumerated(){
            if(value.name! == name){
                bookList.remove(at:index)
            }
        }
    }
}

