//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Robert Varga on 16/10/2017.
//  Copyright © 2017 Robert Varga. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderedButton!
    @IBOutlet weak var mensBtn: BorderedButton!
    @IBOutlet weak var womensBtn: BorderedButton!
    @IBOutlet weak var coedBtn: BorderedButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
        
    }
    
    
    func selectLeague(leagueType: String) {
        player.dessiredLeague = leagueType
        
        mensBtn.isHighlighted = (leagueType == "mens" ? true : false)
        womensBtn.isHighlighted = (leagueType == "womens" ? true : false)
        coedBtn.isHighlighted = (leagueType == "coed" ? true : false)
        
        print(mensBtn.isHighlighted)
        
        
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
