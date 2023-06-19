//
//  RecognitionView.swift
//  ObjectTest
//
//  Created by 김진우 on 2022/10/18.
//

import Foundation
import CoreGraphics
import CoreImage
import CoreML
import VideoToolbox
import Vision

class RecognitionView: ObservableObject {
    
    @Published var frame: CGImage?
    @Published var error: Error?
    
    private let cameraManager = CameraManager.shared
    private let frameManager = FrameManager.shared
    
    init() {
        do {
            let theModel = try VNCoreMLModel(for: YOLOv3FP16().model)
            setupSubscriptions(theModel: theModel)
        } catch {
            print("An error occured!")
        }
        
    }
    
    func setupSubscriptions(theModel: VNCoreMLModel) {
        cameraManager.$error.receive(on: RunLoop.main).map {
            $0
        }.assign(to: &$error)
        frameManager.$current.receive(on: RunLoop.main).compactMap{
            buffer in
            var cgImage: CGImage?
            if let theBuffer = buffer {
                VTCreateCGImageFromCVPixelBuffer(theBuffer, options: nil, imageOut: &cgImage)
                let ciImage = CIImage(cgImage: cgImage!)
                let handler = VNImageRequestHandler(ciImage: ciImage, orientation: .up)
                do {
                    let theRequest = VNCoreMLRequest(model: theModel) {
                        request, _ in
                        if let theClass = request.results as?
                            [VNRecognizedObjectObservation] {
                            if (theClass.count > 0) {
                                print("I saw a \(theClass[0].labels[0].identifier)!")
                            }
                        }
                    }
                    theRequest.imageCropAndScaleOption = .centerCrop
                    try handler.perform([theRequest])
                } catch {
                    print("Something didn't work: \(error)")
                }
                return cgImage
            } else {
                return nil
            }
        }.assign(to: &$frame)
    }
}

