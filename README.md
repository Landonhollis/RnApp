this is the README file for AI to get information on what i plan on this app to be. 

Project name: RnApp
Techstack: language= swift/swiftUI/UIKit; dependencies= preferably none; running the code in xcode; code edditor: cursor with cursor ai

view files: "ContentView", "ReminderView", "NoteView".

each unique note needs to contain: Note name(default set to "New Note" untill eddited), and main text within note. the main text within a note should be rich text, able to be highlighted, italicized, underlined, font chaged, bolded, and more. 

each unique reminder should contain: reminder name (default set to "New Reminder" untill eddited), date that the reminder is due (month/day/year), time that the reminder is due (hour:minute:am/pm), and urgency level of the reminder on a scale of 1-4. 


Overview: this will be an app that has reminders and notes built into one app. you will arive one "ContentView" as the first view. on content view you can: click a button in the top right to change from light mode to dark mode; the button just below the header is a green button that says add, and once you click this there is a popup that asks you if you want to create a reminder (which takes you to "ReminderView"), or a note (which takes you to "NoteView"), or cancel (which keeps you on "ContentView"); still on the "ContentView" there is a srollable list of the users reminders (in order from due soonest to latest) in the middle section of the screen taking up about a third of the screens height and if you swipe right on a reminder, it gets deleted, and if you swipe left on a reminder, it takes you to "ReminderView"; then still on "ContentView", at the bottom of the page below the list of reminders, ther is a section that has a list of the users notes layed out in a grid, if the user holds down on the note, a pop up comes up and the user can delete the note, and if the user clicks on the note, then the user is taken to "NoteView". 

if the user arrives at "NoteView" from the add button then a new note is created in the model and the user is presented with "NoteView" as a blank note to write in, and the note name set default to "New Note" which the user can also edit. 
if the user arrives at "NoteView" from clicking on an already existing note within content view, then the user is presented with "NoteView" with the information from the last time they were in that note already prepopulated in the note. then they edit what they want and swipe right on the entire screen or click the button in the top left corner to save the changes and escape the "NoteView" and go back to the "ContentView"

if the user arrives in "ReminderView" from the add button, a new reminder is creatreed in the model, and the user is presented with "ReminderView" with nothing in the text fied (which is a required field), the date and time that the reminder is due set by default to the next hour that will take place, and urgency level not selected(which is not a required field). then the user puts in their information for teh new reminder, and either clicks "Cancel"(which deletes the reminder and goes back to "ContentView") or "Save"(Which saves the note and goes back to "ContentView") on the top of the screen. 
if the user arrvives at "ReminderView" from swiping left then they are brought to "ReminderView" with the saved data from the last time they were on this certian reminder. then they can click "Cance"(which deletes the changes and goes back to "ContentView") or "Save"(which saves the changes to the reminder and returns back to "Content view")

Notifications: once the current date exeeds the date set within a reminder, the user is sent a notification that says the title of the reminder, the date of the reminder, and the urgency level of the reminder. 
