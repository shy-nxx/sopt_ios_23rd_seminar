//
//  SimpleBoxWithTouchViewController.swift
//  ARKitExample
//
//  Created by shineeseo on 2018. 12. 7..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit
import SceneKit
import ARKit


class SimpleBoxWithTouchViewController: UIViewController,ARSCNViewDelegate {

    var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sceneView = ARSCNView(frame : self.view.frame)
        self.view.addSubview(sceneView)
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        let scene = SCNScene()
        let box = SCNBox(width: 0.2, height: 0.2, length: 0.2, chamferRadius: 0)
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.red
        material.name = "Color"
        box.materials = [material]
        let node = SCNNode(geometry: box)
        node.position = SCNVector3(0, 0, -0.5)
        scene.rootNode.addChildNode(node)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target : self, action : #selector(tapped))
        self.sceneView.addGestureRecognizer(tapGestureRecognizer)
        sceneView.scene = scene
    }
    
    @objc func tapped(recognizer : UITapGestureRecognizer){
        //tapGestureRecognizer을 받은 뷰가 SceneKitView 라고 캐스팅
        let sceneView = recognizer.view as! SCNView
        //해당 뷰(sceneView)에서 정확히 어디를 터치했는지 판단
        let touchLocation : CGPoint = recognizer.location(in: sceneView)
        //hitTest 함수는 특정 포인트를 parmeter로 받아, 해당 부분의 터치와 맞닿은 virtual object들을 반환
        //options는 search 에 영향을 끼치는데 SCNHitTestOption으로는 backFaceCulling, boundingBoxOnly, categoryBitMask, clipToZRange 등등 다양함
        let hitResults : [SCNHitTestResult] = sceneView.hitTest(touchLocation, options: [:])
        //만약 터치 결과가 비어있지 않다면, 무언가를 터치했다는 말이므로 아래와 같이 node 를 꺼냄
        if !hitResults.isEmpty {
            let node = hitResults[0].node
            // 와
            let material : SCNMaterial? = node.geometry?.material(named : "Color")
            // 하지만 위와 같이 "Color"라는 이름을 가진 SCNMaterial객체는 존재하지 않음
            // 따라서 위에서 이름을 지정해줌
            //임의의 Color을 반환하도록 미리 작성해놓은 random()함수를 이용하여, 가져온 Material 객체의 속성에 접근 후 값 할당
            material?.diffuse.contents = UIColor.random()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARWorldTrackingConfiguration()
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    

}
