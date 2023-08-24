//
//  ContentView.swift
//  DifferenceBetweenBoundsAndFrame
//
//  Created by 송재훈 on 2023/08/24.
//

import SwiftUI

struct ContentView: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) { }
    
    func makeUIView(context: Context) -> some UIView {
        let uiView = UIView()
        
        let rect = CGRect(x: 50, y: 100, width: 100, height: 150)
        
        let rectView = UIView(frame: rect)
        rectView.backgroundColor = .green
        
        uiView.addSubview(rectView)
        
        let subRect = CGRect(x: 10, y: 10, width: 30, height: 50)
        
        let subRectView = UIView(frame: subRect)
        subRectView.backgroundColor = .purple
        
        rectView.addSubview(subRectView)
        
        print("before: ", subRectView.center)
        
        subRectView.transform = .init(rotationAngle: 50)
        
        print("frame :", subRectView.frame.origin, subRectView.frame.size)
        print("bounds :", subRectView.bounds.origin, subRectView.bounds.size)
        
        print("after: ", subRectView.center)
        
        let borderRect = CGRect(x: 3.966138230020082, y: 6.940226482138237, width: 42.06772353995984, height: 56.11954703572353)
        let borderRectView = UIView(frame: borderRect)
        borderRectView.layer.borderWidth = 1
        
        rectView.addSubview(borderRectView)
        
        return uiView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
