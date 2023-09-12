//
//  ContentView.swift
//  transit
//
//  Created by Leo Newton on 8/23/2023 A.
//


import SwiftUI




struct ContentView: View {
    private let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .medium
        return dateFormatter
    }()
    
    var body: some View {
       
        
            ZStack {
                LoopingPlayer()
                TimelineView(.periodic(from: .now, by: 1)) { timeline in
                    Text("\(dateFormatter.string(from: timeline.date))")}
                
                    .font(.custom("title", fixedSize: 65))
                    .foregroundStyle(.black)
                    .offset(x: -1, y: 90)
                Text(Date.now.addingTimeInterval(86000), style: .date)
                    .font(.custom("title3", fixedSize: 16))
                    .foregroundStyle(.black)
                    .offset(x: -22, y: 340)
                Text("Expires     ")
                    .font(.custom("title3", fixedSize: 16))
                    .foregroundStyle(.black)
                    .offset(x: -112, y: 340)
                Text("     at 2:59 AM")
                    .font(.custom("title3", fixedSize: 16))
                    .foregroundStyle(.black)
                    .offset(x: 80, y: 340)
            }
            
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

