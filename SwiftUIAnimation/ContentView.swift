//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 廖昱晴 on 2021/3/10.
//

import SwiftUI

struct ContentView: View {
//    @State private var circleColorChanged = false
//    @State private var heartColorChanged = false
//    @State private var heartSizeChanged = false
//    @State private var isLoading = false
//    @State private var progress: CGFloat = 0.0
    @State private var recordBegin = false
    @State private var recording = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: recordBegin ? 30 : 5)
                .frame(width: recordBegin ? 60 : 250, height: 60)
                .foregroundColor(recordBegin ? .red : .green)
                .overlay(
                Image(systemName: "mic.fill")
                    .font(.system(.title))
                    .foregroundColor(.white)
                    .scaleEffect(recording ? 0.7 : 1)
                )
            RoundedRectangle(cornerRadius: recordBegin ? 35 : 10)
                .trim(from: 0, to: recordBegin ? 0.0001 : 1)
                .stroke(lineWidth: 5)
                .frame(width: recordBegin ? 70 : 260, height: 70)
                .foregroundColor(.green)
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.recordBegin.toggle()
            }
            
            withAnimation(Animation.spring().repeatForever().delay(0.5)) {
                self.recording.toggle()
            }
        }
//        HStack {
//            ForEach(0...4, id: \.self) { index in //建立圓形
//                Circle()
//                    .frame(width: 10, height: 10)
//                    .foregroundColor(.green)
//                    .scaleEffect(self.isLoading ? 0 : 1) //縮放大小
//                    .animation(Animation.linear(duration: 0.6).repeatForever().delay(0.2 * Double(index)))
//            }
//        }
//        .onAppear() {
//            self.isLoading = true
//        }
//        ZStack {
//            Text("\(Int(progress * 100))%")
//                .font(.system(.title, design: .rounded))
//                .bold()
//
//            Circle()
//                .stroke(Color(.systemGray5), lineWidth: 10)
//                .frame(width: 150, height: 150)
//
//            Circle()
//                .trim(from: 0, to: progress)
//                .stroke(Color.green, lineWidth: 10)
//                .frame(width: 150, height: 150)
//                .rotationEffect(Angle(degrees: -90))
//            Text("Loading")
//                .font(.system(.body, design: .rounded))
//                .bold()
//                .offset(x: 0, y: -25)
//
//            RoundedRectangle(cornerRadius: 3)
//                .stroke(Color(.systemGray5), lineWidth: 3)
//                .frame(width: 250, height: 3)
//
//            RoundedRectangle(cornerRadius: 3)
//                .stroke(Color.green, lineWidth: 3)
//                .frame(width: 30, height: 3)
//                .offset(x: isLoading ? 110 : -110, y: 0)
//                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
//                .onAppear() {
//                    self.isLoading = true
//                }
//            Circle()
//                .stroke(Color(.systemGray5), lineWidth: 14)
//                .frame(width: 100, height: 100)
//
//            Circle()
//                .trim(from: 0, to: 0.7)
//                .stroke(Color.green, lineWidth: 5)
//                .frame(width: 100, height: 100)
//                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
//                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
//                .onAppear() { //類似viewDidAppear
//                    self.isLoading = true
//            }
//        }
//        .onAppear() {
//            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) {
//                timer in
//                self.progress += 0.05
//                print(self.progress)
//                if self.progress >= 1.0 {
//                    timer.invalidate()
//                }
//            }
//        }
//        ZStack{
//            Circle()
//                .frame(width: 200, height: 200)
//                .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
//
//            Image(systemName: "heart.fill")
//                .foregroundColor(heartColorChanged ? .red : .white)
//                .font(.system(size: 100))
//                .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
//        }
////        .animation(.spring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.8)) //自動渲染動畫
//        .onTapGesture { //偵測點擊手勢
//            withAnimation(.default) { //顯式動畫
//                self.circleColorChanged.toggle()
//                self.heartSizeChanged.toggle()
//                self.heartColorChanged.toggle()
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
