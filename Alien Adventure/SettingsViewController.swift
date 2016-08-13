//
//  SettingsViewController.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - SettingsViewController: UIViewController

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var showBadgesLabel: UILabel!    
    @IBOutlet weak var showBadgesSwitch: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributesDictionary: [String:AnyObject] = [
            NSFontAttributeName: UIFont(name: Settings.Common.Font, size: 18)!
        ]
        
        titleLabel.font = UIFont(name: Settings.Common.Font, size: 32)
        showBadgesLabel.font = UIFont(name: Settings.Common.Font, size: 20)
        showBadgesSwitch.onTintColor = UIColor.magentaColor()
        levelSegmentedControl.setTitleTextAttributes(attributesDictionary, forState: .Normal)
        Settings.Common.Level = levelSegmentedControl.selectedSegmentIndex
        startGameButton.titleLabel?.font = UIFont(name: Settings.Common.Font, size: 20)
        
        addTargets()
    }
//    if the value changes for the showBadgesSwitch, then call the showBadges method. Since the showBadges method takes one parameter, you'll need to use Selector("showBadges:")—the colon after showBadges indicates that the method takes one parameter.
    
    // MARK: Add Targets
    func addTargets() {
        startGameButton.addTarget(self,
                           action: #selector(startGame),
                           forControlEvents: .TouchUpInside)
        showBadgesSwitch.addTarget(self, action: #selector(showBadges(_:)), forControlEvents: .ValueChanged)
        levelSegmentedControl.addTarget(self, action: #selector(switchLevel(_:)), forControlEvents: .ValueChanged)
    }
    
    // MARK: Implementing Actions
    
    func switchLevel(segmentControl: UISegmentedControl) {
        Settings.Common.Level = segmentControl.selectedSegmentIndex
        print("level control has changed! \(segmentControl.selectedSegmentIndex)")
    }
    
    func showBadges(switchControl: UISwitch) {
        Settings.Common.ShowBadges = true
    }
    
    func startGame() {
        let alienAdventureViewController = self.storyboard!.instantiateViewControllerWithIdentifier("AlienAdventureViewController")
            as! AlienAdventureViewController
        
        self.presentViewController(alienAdventureViewController, animated: true, completion: nil)
    }
}