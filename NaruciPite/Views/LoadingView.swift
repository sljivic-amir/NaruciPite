//
//  LoadingView.swift
//  NaruciPite
//
//  Created by Ajdin on 17. 10. 2022..
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
            Loading()
        
    }
    
    
}

struct Loading : View {
    @State var offsets : [CGSize] = Array(repeating: .zero, count: 3)
    
    @State var timer = Timer.publish(every: 4, on: .current, in: .common).autoconnect()
    
    @State var delayTime : Double = 0
    var locations : [CGSize] = [
        //rotation 1
    CGSize(width: 110, height: 0),
    CGSize(width: 0, height: -110),
    CGSize(width: -110, height: 0),
    //rotation 2
    CGSize(width: 110, height: 110),
    CGSize(width: 110, height: -110),
    CGSize(width: -110, height: -110),
    //rotation 3
    CGSize(width: 0, height: 110),
    CGSize(width: 110, height: 0),
    CGSize(width: 0, height: -110),
    // final
    CGSize(width: 0, height: 0),
    CGSize(width: 0, height: 0),
    CGSize(width: 0, height: 0),
    ]
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 10){
                
                HStack(spacing: 10){
                    Image("Burek").resizable()
                        .frame(width: 100,height: 100)
                        .offset(offsets[0])
                }
                .frame(width: 210 , alignment: .leading)
                HStack(spacing: 10){
                    Image("Zeljanica").resizable()
                        .frame(width: 100,height: 100)
                        .offset(offsets[1])
                    Image("Sirnica").resizable()
                        .frame(width: 100,height: 100)
                        .offset(offsets[2])
                }
            }
        }
        .onAppear(perform: doAnimation)
        .onReceive(timer) { _ in
            delayTime = 0
            doAnimation()
        }
    }
        
    
    
    func doAnimation(){
        var tempOffsets : [[CGSize]] = []
        var currentSet : [CGSize] = []
        
        for value in locations {
            currentSet.append(value)
            if currentSet.count == 3 {
                tempOffsets.append(currentSet)
                
                currentSet.removeAll()
            }
        }
        if !currentSet.isEmpty{
            tempOffsets.append(currentSet)
            currentSet.removeAll()
        }
        for offset in tempOffsets {
            for index in offset.indices{
                doAnimation(delay:.now() + delayTime, value: offset[index], index: index)
                delayTime += 0.3
            }
        }
    }
    func doAnimation(delay : DispatchTime , value : CGSize , index : Int){
        DispatchQueue.main.asyncAfter(deadline: delay){
            withAnimation(Animation.easeInOut(duration: 0.5)){
                self.offsets[index] = value
            }
            
        }
        
    }
}



struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
