
# Pre-work - Tip Calculator
*Tip Calculator is a tip calculator application for iOS.

Submitted by: Hein Soe

Time spent: [26] hours spent in total

# User Stories
The following # required functionality is complete:

- [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
 
The following optional features are implemented:

- [X] Settings page to change the default tip percentage.
- [x] UI animations
- [x] Remembering the bill amount across app restarts (if <10mins)
- [x] Using locale-specific currency and currency thousands separators.
- [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
The following additional features are implemented:

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!

1. Created Custom tip calculations using UISliderControl
2. Added Custom Font - Broadway 
3. Write to disk on user selection of percentage in Setting.
4. When bills Value reach their bounds, text's are auto resized.
 
## Video Walkthrough

Here's a walkthrough of implemented user stories:

Video Walkthrough 

![](https://imgur.com/c6uqspd.gif)

GIF created with LiceCap.

Notes
Some challenges I encountered while building the app:

- While trying to implement passing data between VCs, I tried to implement in a way that after back button is pressed in Nav Bar, Data are passed. Finally, used viewilldisappear method combined with Navigation Segue so that I don't have to add new segue or button. That was a major roadblock in progressing.

- Also took some time to try a few methods of find TimeInterval for 10 mins bill disappearance feature.

License
Copyright [2018] [@Hein Soe]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
