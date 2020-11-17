# Journal Journeys

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An interactive journal where you can record and customize each entry utilizing stickers, moods, etc. to describe your day and experiences

### App Evaluation
- **Category:** Productivity, Lifestyle
- **Mobile:** iOS compatible
- **Story:** Records journal entries that are more personalized by the use of various themes and decorative stickers to engage the user in active journaling
- **Market:** Individuals across different age groups can use this app. Only the user will see their journal entries which will be kept private in their account
- **Habit:** This app could be used for however frequently the user decides to record their thoughts throughout their day
- **Scope:** The app's scope is for the user only instead of being meant to share with others; however, a feature could be implemented if users would request to add friends and they can have posts in which their friends or followers can view

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* [x][sign up]
* [x][sign in]
* [IN PROGRESS][compose a new entry]
* [view all prior entries]

**Optional Nice-to-have Stories**

* Composing
    * Stickers to customize each new entry
    * Water/sleep log
    * Themed paper selections for entries
    * Wellness Buddy (swipe right feature)
        * Tracks sleep, activity, water, mood (implemented by picker feature) etc.
        * Actvity- type of activity and duration
    * Date and time per entry
* Feed
    * Date and time per entry
    * If the user clicks on a past entry, they can view all the particular details of their journey that day but they may not be able to edit
* Account
    * User's name display
    * Selection of background colors for apps
    * Choice of app font for viewing each screen of the app
    * Setting/selecting profile picture
* [IN PROGRESS]Settings
    * Change username
    * Change password
    * Change email

### 2. Screen Archetypes

* Login screen
   * Upon opening the app, the user will be prompted to the login screen to either sign up or sign in. The user will stay logged in when reopening the app unless they logged out.

* Register screen
    * If it is their first time using the app, they must click on the sign up button. Upon doing so, they will register for the app.
    
* Compose screen
   * User will be able to compose a new journal entry here. There will be options to add stickers, change fonts/color of the text, and more.

* Feed screen
    * Here, the user will see their past entries in a feed style. The user can select on any of the past entries to view it. 
    
* Profile screen
    * User can view and change their settings here.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Feed
* Composing
* Account
* Settings

**Flow Navigation** (Screen to Screen)

* Login
   * Sign up
   * Sign in
* Feed
* Composing
* Account

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://github.com/Team-Journals/Journal-Journeys/blob/Miscellaneous/wireframe.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
<img src="https://github.com/Team-Journals/Journal-Journeys/blob/Miscellaneous/CodePathModels.png" width=600>

### Networking
```
//(Read/GET) Query all posts where user is author
let query = PFQuery(className:"Entries")
query.whereKey("username", equalTo: currentUser)
query.order(byDescending: "createdAt")
query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
   if let error = error {
      print(error.localizedDescription)
   } else if let entries = entries {
      print("Successfully retrieved \(entries.count) entries.")
      // TODO: Do something with posts...
   }
}
//Saving a Journal Entry
let entries = PFObject(className:"Compose")
entries["textbox"] = “Journal Entry here”
entries["date"] = DateTime(2020,11,1,6,50)
entries["stickers"] = “sticker url”

entries.saveInBackground { (succeeded, error)  in
    if (succeeded) {
        // The object has been saved.
    } else {
        // There was a problem, check error.description
    }
}

Deleting a Journal Entry:
PFObject.deleteAll(inBackground: entryArray) { (succeeded, error) in
    if (succeeded) {
        print(“The array of objects was successfully deleted.”)
    } else {
      print(error.localizedDescription)
    }
}

//(Update/PUT) Update user journal entries

let query = PFQuery(className:"Compose")

query.getObjectInBackground(withId: "xWMyZEGZ") { (Compose: PFObject?, error: Error?) in

    if let error = error {
    
        print(error.localizedDescription)
	
    } else if let Compose = Compose{
    
        entries["textbox"] = “Update Journal Entry here”
	
        entries["date"] = DateTime(2020,11,1,6,50)
	   entries["stickers"] = “sticker url”
	
        Compose.saveInBackground()
    }
    
}
//Updating profile picture
let query = PFQuery(className:"Profile")
query.getObjectInBackground(withId: "username") { (profilePic: PFObject?, error: Error?) in
    if let error = error {
        print(error.localizedDescription)
    } else if let profilePic = profilePic {
        Profile["profilePicAdded"] = true
        Profile["profilePic"] = profilepic.image
        Profile.saveInBackground()
    }
}
//Update user password
let query = PFQuery(className:"Profile")
query.getObjectInBackground(withId: "password") { (password: PFObject?, error: Error?) in
    if let error = error {
        print(error.locaalizedDescription)
    } else if let password = password {
        Profile["password"] = true
        Profile["password"] = password.text
        Profile.saveInBackground()
    }
}

//Update user email
let query = PFQuery(className:"Profile")
query.getObjectInBackground(withId: "username") { (email: PFObject?, error: Error?) in
    if let error = error {
        print(error.localizedDescription)
    } else if let email = email {
        Profile["emailAdded"] = true
        Profile["email"] = email.text
        profile.saveInBackground()
    }
}
//query logged in user object 
let query = PFQuery(className:"Profile")
query.getObjectInBackground(withId: "username") { (username, error) in
    if error == nil {
        print(“Success!!”)
    } else {
        print(error.localizedDescription)
    }
}
```
Milestone 1 GIF:
<img src='https://media.giphy.com/media/mQJX1gfXXLeeqRaGDK/giphy.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

Milestone 1 Part2 GIF:
<img src='https://recordit.co/TQbUWudFah.gif' title='Video Walkthrough1' width='' alt='Video Walkthrough1' />

Milestone 2 GIF:
<img src='https://media.giphy.com/media/o4fhSW0AAPMvclCUd6/giphy.gif' title='Video Walkthrough2' width='' alt='Video Walkthrough2' />
