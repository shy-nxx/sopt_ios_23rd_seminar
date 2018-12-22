//
//  ViewController.swift
//  ARKitExample
//
//  Created by shineeseo on 2018. 12. 7..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit
import SpriteKit
import ARKit

class ViewController: UIViewController, ARSKViewDelegate {
    
    @IBOutlet var sceneView: ARSKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and node count
        sceneView.showsFPS = true
        sceneView.showsNodeCount = true
        
        // Load the SKScene from 'Scene.sks'
        if let scene = SKScene(fileNamed: "Scene") {
            sceneView.presentScene(scene)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    // MARK: - ARSKViewDelegate
    
    func view(_ view: ARSKView, nodeFor anchor: ARAnchor) -> SKNode? {
        // Create and configure a node for the anchor added to the view's session.
//        let labelNode = SKLabelNode(text: "👾")
         let labelNode = SKLabelNode(text: "💋")
        labelNode.horizontalAlignmentMode = .center
        labelNode.verticalAlignmentMode = .center
        return labelNode;
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
//    private func registerGestureRecognizers() {
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped))
//        self.sceneView.addGestureRecognizer(tapGestureRecognizer)
//    }
    
//    @objc func tapped(recognizer : UIGestureRecognizer) {
//        let sceneView = recognizer.view as! ARSCNView
//        let touchLocation = recognizer.location(in: sceneView)
//
//        let hitTestResult = sceneView.hitTest(touchLocation, types: .existingPlaneUsingExtent)
//
//        if !hitTestResult.isEmpty {
//            guard let hitResult = hitTestResult.first else {
//                return
//            }
//            addBox(hitResult :hitResult)
//        }
//
//    }
    
//    func addBox(hitResult : ARHitTestResult) {
//        let boxGeometry = SCNBox(width: 0.2, height: 0.2, length: 0.1, chamferRadius: 0)
//        let material = SCNMaterial()
//        material.diffuse.contents = UIColor.red
//        boxGeometry.materials = [material]
//        let boxNode = SCNNode(geometry: boxGeometry)
//        boxNode.position = SCNVector3(hitResult.worldTransform.columns.3.x,hitResult.worldTransform.columns.3.y + Float(boxGeometry.height/2), hitResult.worldTransform.columns.3.z)
//
//        self.sceneView.scene.rootNode.addChildNode(boxNode)
//    }
}
