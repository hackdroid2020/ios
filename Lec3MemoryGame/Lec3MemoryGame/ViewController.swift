//
//  ViewController.swift
//  Lec3MemoryGame
//
//  Created by HACKERU on 01/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var memoryCards: [UIButton]!
    
    
    let back = #imageLiteral(resourceName: "card-back")
    var previous: UIButton?
    @IBAction func cardTapped(_ sender: UIButton) {
        let image = sender.image(for: .highlighted) // the image that was hidden
        sender.setImage(image, for: .normal)
        
        //if it's the first time:
        if previous == nil{
            previous = sender
            return
        }
        
        if previous?.image(for: .normal) == image{
            print("Match") //score += 10
        }else{
            print("No Match :)")
            //flip both cards back
            previous?.setImage(back, for: .normal)
            sender.setImage(back, for: .normal)
        }
        previous = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //view -> subViews
//        let subs = view.subviews
//        let verticalStack = subs[0] as! UIStackView
//        let hStacks = verticalStack.subviews as! [UIStackView]
//
//
//        let btn = UIButton()
//        verticalStack.addArrangedSubview(btn)
        initGame()
    }


    func initGame(){
        //poc print image names:
        //bundle of our app contains all files in the app
        
        var paths = Bundle.main.paths(
            forResourcesOfType: ".png",
        inDirectory: nil) +
            Bundle.main.paths(
                forResourcesOfType: ".jpg",
        inDirectory: nil)
 
        var images:[UIImage?] = []
        for _ in 0..<memoryCards.count / 2 {
            let rand = Int.random(in: 0..<paths.count)
            let randomPath = paths.remove(at: rand)
            //image from file
            let image = UIImage(contentsOfFile: randomPath) // UIImage
            images.append(image)
        }
        
        images = images + images
        images.shuffle()

        for i in 0..<memoryCards.count{
            let btn = memoryCards[i]  // UIButton
            btn.setImage(images[i], for: .highlighted)
        }
    }
}

