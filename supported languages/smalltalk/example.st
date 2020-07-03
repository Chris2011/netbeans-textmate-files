"Smalltalk if statement"
time > 120 
   ifTrue: [Transcript show: 'Time expired.'; cr.
            time := 0]
   ifFalse: [Transcript show: 'Time remaining: ', 
             (120 - time) printString, ' minutes'; cr]

Object subclass: #NameOfSubclass
   instanceVariableNames: ''
   classVariableNames: ''
   poolDictionaries: ''
   category: ''
