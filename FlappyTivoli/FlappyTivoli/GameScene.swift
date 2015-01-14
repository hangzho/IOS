//
//  GameScene.swift
//  FlappyTivoli
//
//  Created by Johan on 7/1/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var birdImg:SKSpriteNode = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        //physics
        self.physicsWorld.gravity = CGVectorMake(0.0, -5.0)
        
        //bird
        var birdTexture = SKTexture(imageNamed:"bird")
        birdTexture.filteringMode = SKTextureFilteringMode.Nearest
        birdImg = SKSpriteNode(texture: birdTexture)
        birdImg.setScale(0.5)
        birdImg.position = CGPoint(x: self.frame.size.width * 0.35, y: self.frame.size.height * 0.6)
        
        birdImg.physicsBody = SKPhysicsBody(circleOfRadius: birdImg.size.height / 2.0)
        birdImg.physicsBody.dynamic = true
        birdImg.physicsBody.allowsRotation = false
        
        self.addChild(birdImg)
        
        //ground
        var groundTexture = SKTexture(imageNamed: "ground")
        
        var sprite = SKSpriteNode(texture: groundTexture)
        sprite.setScale(2.0)
        sprite.position = CGPointMake(self.size.width/2.0, sprite.size.height/2.0)
        self.addChild(sprite)
        
        var ground = SKNode()
        ground.position = CGPointMake(0.0, groundTexture.size().height)
        ground.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, groundTexture.size().height * 2.0))
        
        ground.physicsBody.dynamic = false
        self.addChild(ground)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            
            let location = touch.locationInNode(self)
            
            birdImg.physicsBody.velocity = CGVectorMake(0, 0)
            birdImg.physicsBody.applyImpulse(CGVectorMake(0, 25))
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
