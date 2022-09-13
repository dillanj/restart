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
        VStack(spacing: 20){
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        } // : VSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
