//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 김용환 on 13/09/2019.
//  Copyright © 2019 brightface. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager = BookManager();
    //메모리 어떻게 연결 하느냐?weak 가 
    @IBOutlet weak var outputTextView : UITextView!
    @IBOutlet weak var nameTextField : UITextField!
    @IBOutlet weak var authorTextField : UITextField!
    @IBOutlet weak var genreTextField : UITextField!
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author:"해밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author:"톨스토이")
  
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //IB 는 인터페이스 빌더의 약자이다. 그래서 연결을 해야해
    @IBAction func registerAction(_ sender: Any){
        var bookTemp = Book()
        bookTemp.name = nameTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        //강제 언맵핑
        //그리고 묶어주기
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTextField.text!) has been registered."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func searchBookAction(_sender : Any){
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if(resultBook != nil){
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "we don't have book that you search"
        }
    }
    @IBAction func removeAction(_sender : Any){
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text="\(nameTextField.text!) is removed."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func showAllBookAction(_ sender: Any){
//        print("showAllBookAction")
//        outputTextView.text = "showAllBookAction"
          outputTextView.text = myBookManager.showAllBooks()
        
    }
    
}

