//
//  ViewController.swift
//  ScatterandGather
//
//  Created by Niranjan Kumar on 11/5/19.
//  Copyright © 2019 Nar Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var l: UILabel!
    @IBOutlet weak var a: UILabel!
    @IBOutlet weak var m: UILabel!
    @IBOutlet weak var b: UILabel!
    @IBOutlet weak var d: UILabel!
    @IBOutlet weak var a2: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Properties

    var isScattered: Bool = false
    
    
    // MARK: - View LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Actions

    @IBAction func toggleButtonPressed(_ sender: UIBarButtonItem) {
         if isScattered {
                gather()
            } else {
                scatter()
            }
            isScattered.toggle()
        }

    
    private func gather() {
        // GATHER:
        UIView.animateKeyframes(withDuration: 3, delay: 0, options: [], animations: {
            
            // Lambda Image Reappears
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.imageView.alpha = 1.0
            }
            
            // Letters Gather
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.l.frame = CGRect(x: 87, y: 140, width: 17, height: 29)
                self.a.frame = CGRect(x: 119, y: 140, width: 17, height: 29)
                self.m.frame = CGRect(x: 147, y: 140, width: 21, height: 29)
                self.b.frame = CGRect(x: 188, y: 140, width: 16, height: 29)
                self.d.frame = CGRect(x: 218, y: 140, width: 17, height: 29)
                self.a2.frame = CGRect(x: 251, y: 140, width: 17, height: 29)
                
                //                        self.l.transform = .identity
                //                        self.a.transform = .identity
                //                        self.m.transform = .identity
                //                        self.b.transform = .identity
                //                        self.d.transform = .identity
                //                        self.a2.transform = .identity
                
                
                
                self.l.textColor = .black
                self.a.textColor = .black
                self.m.textColor = .black
                self.b.textColor = .black
                self.d.textColor = .black
                self.a2.textColor = .black
                
                self.l.backgroundColor = .white
                self.a.backgroundColor = .white
                self.m.backgroundColor = .white
                self.b.backgroundColor = .white
                self.d.backgroundColor = .white
                self.a2.backgroundColor = .white
            }
            
        }, completion: nil)
    }
    
    
    
    private func scatter() {
        // SCATTER:
        UIView.animateKeyframes(withDuration: 3, delay: 0, options: [], animations: {
            
            // Lambda Image Disappears
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.imageView.alpha = 0.0
            }
            
            // Letters scatter
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.l.textColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                 green: CGFloat.random(in: 0...255)/255,
                                                 blue: CGFloat.random(in: 0...255)/255,
                                                 alpha: 1.0)
                
                self.l.backgroundColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                       green: CGFloat.random(in: 0...255)/255,
                                                       blue: CGFloat.random(in: 0...255)/255,
                                                       alpha: 1.0)
                
                self.l.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 180)
                
                self.l.frame = CGRect(x: Int.random(in: 100...400),
                                            y: Int.random(in: 100...800),
                                            width: Int.random(in: 40...50),
                                            height: Int.random(in: 40...50))
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.a.textColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                 green: CGFloat.random(in: 0...255)/255,
                                                 blue: CGFloat.random(in: 0...255)/255,
                                                 alpha: 1.0)
                
                self.a.backgroundColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                       green: CGFloat.random(in: 0...255)/255,
                                                       blue: CGFloat.random(in: 0...255)/255,
                                                       alpha: 1.0)
                
                self.a.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 180)
                
                self.a.frame = CGRect(x: Int.random(in: 100...400),
                                            y: Int.random(in: 100...800),
                                            width: Int.random(in: 40...50),
                                            height: Int.random(in: 40...50))
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.m.textColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                 green: CGFloat.random(in: 0...255)/255,
                                                 blue: CGFloat.random(in: 0...255)/255,
                                                 alpha: 1.0)
                
                self.m.backgroundColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                       green: CGFloat.random(in: 0...255)/255,
                                                       blue: CGFloat.random(in: 0...255)/255,
                                                       alpha: 1.0)
                
                self.m.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 180)
                
                self.m.frame = CGRect(x: Int.random(in: 100...400),
                                            y: Int.random(in: 100...800),
                                            width: Int.random(in: 40...50),
                                            height: Int.random(in: 40...50))
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.b.textColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                 green: CGFloat.random(in: 0...255)/255,
                                                 blue: CGFloat.random(in: 0...255)/255,
                                                 alpha: 1.0)
                
                self.b.backgroundColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                       green: CGFloat.random(in: 0...255)/255,
                                                       blue: CGFloat.random(in: 0...255)/255,
                                                       alpha: 1.0)
                
                self.b.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 180)
                
                self.b.frame = CGRect(x: Int.random(in: 100...400),
                                            y: Int.random(in: 100...800),
                                            width: Int.random(in: 40...50),
                                            height: Int.random(in: 40...50))
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.d.textColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                 green: CGFloat.random(in: 0...255)/255,
                                                 blue: CGFloat.random(in: 0...255)/255,
                                                 alpha: 1.0)
                
                self.d.backgroundColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                       green: CGFloat.random(in: 0...255)/255,
                                                       blue: CGFloat.random(in: 0...255)/255,
                                                       alpha: 1.0)
                
                self.d.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 180)
                
                self.d.frame = CGRect(x: Int.random(in: 100...400),
                                            y: Int.random(in: 100...800),
                                            width: Int.random(in: 40...50),
                                            height: Int.random(in: 40...50))
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 3) {
                self.a2.textColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                  green: CGFloat.random(in: 0...255)/255,
                                                  blue: CGFloat.random(in: 0...255)/255,
                                                  alpha: 1.0)
                
                self.a2.backgroundColor = UIColor(red: CGFloat.random(in: 0...255)/255,
                                                        green: CGFloat.random(in: 0...255)/255,
                                                        blue: CGFloat.random(in: 0...255)/255,
                                                        alpha: 1.0)
                
                self.a2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 180)
                
                self.a2.frame = CGRect(x: Int.random(in: 100...400),
                                             y: Int.random(in: 100...800),
                                             width: Int.random(in: 40...50),
                                             height: Int.random(in: 40...50))
            }
            
        }, completion: nil)
    }
    
}

 
