//
//  MainMenu.swift
//  bouncing
//
//  Created by Mustafa Bedir Tapkan on 2/12/16.
//  Copyright © 2016 Mustafa Bedir Tapkan. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let Game: GameScene = GameScene(fileNamed: "GameScene")!
        Game.scaleMode = .AspectFill
        let transition : SKTransition = SKTransition.crossFadeWithDuration(1.0)
        
        self.view?.presentScene(Game, transition: transition)
        
    }
}
