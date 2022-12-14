//
//  OnboardingView.swift
//  Restart
//
//  Created by Dillan Johnson on 9/12/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  // The below line will access that key/value if it exists, and create it if not
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  
  // MARK: - BODY
  
  
  
  var body: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      VStack(spacing: 20) {
        // MARK: - HEADER
        Spacer()
        VStack(spacing: 0){
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundColor(.white)
          Text("""
                  It's not how much we give, but how much love we put into giving
                  """)
          .font(.title3)
          .fontWeight(.light)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        } //: HEADER
        
        // MARK: - BODY
        ZStack {
          
          CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
          
          Image("character-1")
            .resizable()
            .scaledToFit()
        }
        Spacer()
        // MARK: - FOOTER
        
        ZStack {
          // 1. background
          Capsule()
            .fill(Color.white.opacity(0.2))
          
          Capsule()
            .fill(Color.white.opacity(0.2))
            .padding(8)
          // 2. call to action
          Text("Get Started")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .offset(x: 20)
          // 3. capsule
          HStack {
            Capsule()
              .fill(Color("ColorRed"))
              .frame(width: 80)
            
            Spacer()
          }
          // 4. circle (draggable)
          HStack {
            ZStack {
              Circle()
                .fill(Color("ColorRed"))
              Circle()
                .fill(.black.opacity(0.15))
                .padding(8)
              Image(systemName: "chevron.right.2")
                .font(.system(size: 24, weight: .bold))
            } //: Z STACK
            .foregroundColor(.white)
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
              isOnboardingViewActive = false
            }
            Spacer()
          } //: HSTACK
        } // : FOOTER
        .frame(height: 80, alignment: .center)
        .padding()
      } //: VSTACK
    } // : ZSTACK
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
