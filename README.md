# cal-ai-clone: Onboarding Flow Implementation

✅ Framework & Language: Swift + SwiftUI

✅ Code Quality: Write clean, maintainable, and well-structured code

✅ Animations & Transitions: Ensure smooth, fluid animations similar to the example app

✅ Pixel-Perfection vs. Best Practices: Prioritize best practices over exact pixel-matching

✅ State Management: Use SwiftUI’s native state management

### Video demo: 
![Demo](https://github.com/phuongddx/cal-ai-clone/blob/master/demo.gif)

### Your Approach to the Task
1. I downloaded the original app from the App Store and went through the full onboarding flow to understand the ideal application flow.
2. I separated that flow into different types, such as: Welcome, Gender Selection, Referral Source, Workout, etc. However, there are quite a few types for this onboarding flow. If I had data for all types of onboarding, I believe I could complete it on time.
3. While developing this onboarding, I divided the screen into three components:
* Header: Renders UI for the back button, tracks onboarding progress, and includes a language switcher (this feature is not yet implemented).
* MainContent: Renders UI for Welcome, Gender Selection, etc.
* Footer: Renders only the Next button.

### Challenges Faced and Solutions
1. Time Pressure: The test duration is only 48 hours, which created some pressure. I addressed this by breaking the task into smaller components, allowing me to complete them more efficiently. Additionally, AI assistance helped me code faster.
2. Creating Mock Data: I created mocked data for all onboarding steps.

### Assumptions and Design Decisions
1. I based my design on the original application to maintain color consistency.
2. For the font, I used the system font from the Apple framework.

### Future Improvements: If I had more time, I would complete the following functionalities:

1. Cache/update answers when the user navigates to the next/previous step
2. Handle the language switcher
3. Create more UI for additional steps, such as: Rating, Referral Code, Some Goals, etc.
4. Implement animations for items when they appear
