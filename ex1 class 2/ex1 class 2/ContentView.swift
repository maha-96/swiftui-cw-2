//
//  ContentView.swift
//  ex1 class 2
//
//  Created by bibi on 28/12/2020.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    

    
    @State var name = ""
    @State var b = 1
    @State var isplay = false

    
    var body: some View {
        
        ZStack {
            Button(action: {
                if ((audioPlayer?.isPlaying) != true){
                    playSound(sound: "harrypotter", type: "mp3")
                }
                else {
                    audioPlayer?.stop()
                }
            }, label: {
                Text("play/stop music")
            })
            
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
            VStack(alignment: .center) {
                
                    Button(action: {
                        if ((audioPlayer?.isPlaying) != true){
                            playSound(sound: "harrypotter", type: "mp3")
                        }
                        else {
                            audioPlayer?.stop()
                        }
                    }, label: {
                        Text("play/stop music")
                    })
                
                Text("عهدة الماء 🚰")
                    // .font(.largeTitle)
                    .font(.custom("A Arghavan Bold", size: 50))
                    .fontWeight(.black)
                    .padding()
                
                Text(name)
                
                TextField("اكتب اسمك هنا", text: $name)
                    .disableAutocorrection(true)
                    .font(.system(size: 25))
                    .padding()
                
                
                Stepper("كم كوبا من الماء تريد ان تتعهد بأن تشرب؟ ", value : $b, in:0...12)
                    .padding()
                Spacer()
                
                
                Text("أتعهد أنا \n \(name) \n أن أشرب \n \(b) \n اكواب من الماء يوميا \n والله على ما اقول شهيد")
                    .font(.custom("Al Bayan Plain", size:35))
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            .padding()
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    

}







