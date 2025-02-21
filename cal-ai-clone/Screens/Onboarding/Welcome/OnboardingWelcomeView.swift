//
//  OnboardingWelcomeView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct OnboardingWelcomeView: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.3)
    }

    var datas = WelcomeData.mockData

    @State private var currentIndex: Int = 0
    @State private var currentImage: String = "meal-bowl"

    var body: some View {
        ZStack {
            VStack {
                Image(currentImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .animation(.smooth, value: currentImage)
            }
            .frame(height: UIScreen.main.bounds.width)
        }
        .ignoresSafeArea(.all, edges: .top)
        VStack(spacing: 16) {
            VStack {
                TabView(selection: $currentIndex) {  // Add selection binding here
                    ForEach(Array(datas.enumerated()), id: \.element.id) { index, data in
                        create(data)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page)
                .onChange(of: currentIndex) { newIndex in
                    print("Current page:", newIndex)
                    // Access current data
                    let currentData = datas[newIndex]
                    print("Current title:", currentData.title)
                    withAnimation {
                        currentImage = datas[newIndex].image
                    }
                }

                HStack(alignment: .center) {
                    Text("Purchased on web?")
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                    Button(action: {
                        // Handle next action
                    }) {
                        Text("Sign In")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .background(Color.white)
        .cornerRadius(.top(20))
    }

    func create(_ data: WelcomeData) -> some View {
        VStack {
            Text(data.title)
                .font(.system(size: 28, weight: .bold))
                .padding(.top, 32)

            Text(data.subtitle)
                .font(.system(size: 16))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
            Spacer()
        }
    }
}

extension WelcomeData {
    static let mockData: [WelcomeData] = [
        WelcomeData(
            title: "Calorie tracking made easy",
            subtitle: "Just snap a quick photo of your meal and we'll do the rest",
            image: "teriyaki"
        ),
        WelcomeData(
            title: "Transform your body",
            subtitle: "Today is the best time to start working toward your dream body",
            image: "great-food"
        ),
        WelcomeData(
            title: "In-depth nutrition analyses",
            subtitle: "We will keep you informed about your food choices and their nutritional content",
            image: "meal-bowl"
        )
    ]
}

#Preview {
    OnboardingView()
}
