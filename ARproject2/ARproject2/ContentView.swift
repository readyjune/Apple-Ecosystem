//
//  ContentView.swift
//  ARproject2
//
//  Created by 김진우 on 2022/10/18.
//

import SwiftUI
import ARKit


struct ARView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let sceneView = ARSCNView()
        sceneView.showsStatistics = true
        
        let scene = SCNScene(named: "AirForce.scn")!
        sceneView.scene = scene
        
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
        return sceneView
        
    }
        
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
}

struct ContentView: View {
    var body: some View {
            ARView()
        }

    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
