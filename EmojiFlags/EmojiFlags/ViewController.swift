//
//  ViewController.swift
//  EmojiFlags
//
//  Created by 김진우 on 2022/10/03.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lname: UILabel!
    @IBOutlet var lcode: UILabel!
    @IBOutlet var lemoji: UIImageView!
    @IBOutlet var lunicode: UILabel!
    @IBOutlet var limage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData()
    {
        let url = URL(string: "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/index.json")
        let task = URLSession.shared.dataTask(with: url!, completionHandler: {(data, response, error) in
            
            guard let data = data, error == nil else
            {
                print("Error Occured While Accessing Data")
                return
            }
            //StudentData = EmojiFlag
            print(data)
            var EmojiFlagObject:EmojiFlag?
            do
            {
                EmojiFlagObject = try JSONDecoder().decode(EmojiFlag.self, from: data)
            }
            catch
            {
                print("Error While Decoding JSON into Swift Structure \(error)")
            }
            guard let sData = EmojiFlagObject else
            {
                return
            }
            print("Received Data \(sData)")
            
            DispatchQueue.main.async {
                self.lname.text = "Name : \(EmojiFlagObject!.name)"
                self.lcode.text = "Code : \(EmojiFlagObject!.code)"
            //    self.lemoji.text = "Emoji : \(EmojiFlagObject!.emoji)"
                self.lunicode.text = "Unicode : \(EmojiFlagObject!.unicode)"
                let urlImage = URL(string: EmojiFlagObject!.image)
                self.limage.downloadImage(from:urlImage!)
            }
            
            
        })
        task.resume()
        
    }
}
extension UIImageView
{
    func downloadImage(from url:URL)
    {
        contentMode = .scaleToFill
        let dataTask = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
            guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200, let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                  let data = data, error == nil,
                  let image = UIImage(data: data)
            else
            {
                return
            }
            DispatchQueue.main.async {
                self.image = image
            }
            
        })
        dataTask.resume()
        
    }
}
