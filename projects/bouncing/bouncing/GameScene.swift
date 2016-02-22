//
//  GameScene.swift
//  bouncing
//
//  Created by Mustafa Bedir Tapkan on 2/12/16.
//  Copyright (c) 2016 Mustafa Bedir Tapkan. All rights reserved.
//

import SpriteKit

let wallMask : UInt32 = 0x1 << 0 // 1
let ballMask : UInt32 = 0x1 << 1 // 2
let pegMask : UInt32 = 0x1 << 2 // 4
let squareMask : UInt32 = 0x1 << 3 // 8
let orangePegMask : UInt32 = 0x1 << 4 // 16

class GameScene: SKScene , SKPhysicsContactDelegate {
    
    var cannon: SKSpriteNode!
    var block: SKSpriteNode!
    var touchLocation: CGPoint = CGPointZero
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        cannon = self.childNodeWithName("cannon") as! SKSpriteNode
        block = self.childNodeWithName("block") as! SKSpriteNode
        self.physicsWorld.contactDelegate = self
        
        let degrees = 90.0
        let rads = degrees * M_PI / 180.0
        let action = SKAction.rotateByAngle(CGFloat(rads), duration: 3)
        block.runAction(SKAction.repeatActionForever(action))
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        touchLocation = touches.first!.locationInNode(self)
        
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        touchLocation = touches.first!.locationInNode(self)
       
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let ball: SKSpriteNode = SKScene(fileNamed: "ball")!.childNodeWithName("ball")! as! SKSpriteNode
        ball.removeFromParent()
        self.addChild(ball)
        ball.zPosition = 0
        ball.position = cannon.position
        let angleInRadians = Float(cannon.zPosition)
        let speed = CGFloat(75.0)
        let vx: CGFloat = CGFloat(cosf(angleInRadians)) * speed
        let vy: CGFloat = CGFloat(sinf(angleInRadians)) * speed
        ball.physicsBody?.applyImpulse(CGVectorMake(vx, vy))
        ball.physicsBody?.collisionBitMask = wallMask | ballMask | pegMask | orangePegMask
        ball.physicsBody?.contactTestBitMask = ball.physicsBody!.collisionBitMask | squareMask
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        let percent = touchLocation.x / size.width
        let newAngle = percent * 180 - 180
        cannon.zRotation = CGFloat(newAngle) * CGFloat(M_PI) / 180.0
    }
    
    func didBeginContact(contact: SKPhysicsContact) {
        let ball = (contact.bodyA.categoryBitMask == ballMask ) ? contact.bodyA : contact.bodyB
        let other = (ball == contact.bodyA) ? contact.bodyB : contact.bodyA
        
        if other.categoryBitMask == pegMask || other.categoryBitMask == orangePegMask {
            self.didHitPeg(other)
        }else if other.categoryBitMask == squareMask {
            print("hit square!")
        }else if other.categoryBitMask == wallMask {
            print("hit wall!")
        }else if other.categoryBitMask == ballMask {
            print("hit ball!")
        }
        
    }
    
    func didHitPeg(peg:SKPhysicsBody){
        let spark:SKEmitterNode = SKEmitterNode(fileNamed: "SparkParticle")!
        spark.position = peg.node!.position
        self.addChild(spark)
        peg.node?.removeFromParent()
    }
}
