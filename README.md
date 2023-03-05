# 🎼 🎶 MusicLogic 🎹 🎸
A simple Swift abstraction layer of AudioKit Tonic package to play with Scales, notes and chords.

## 🙋 Why?
Basically to easy answer the following questions:

- What are the notes belonging to a scale and tone?

- What are the chords belonging to a scale and tone?

- What are the notes belonging to a chord?

- Simple list of all possible scales

- Simple list of all one-octave notes

## 🙉 How to use?
        
### Get all Notes included in a specific note and scale
```swift
/// In this example we get all Notes for C major scale.
MusicLogic.getScaleNotes(note: .C, inScale: .major)
```

### Get all Chords included in a specific note and scale
```swift
/// In this example we get all Chords for C major scale.
MusicLogic.getScaleChords(note: .C, inScale: .major)
```

### Get notes for specific Chord
```swift
/// In this example we get all notes for Amaj9 Chord
MusicLogic.getChordNotes(chord: Chord(.A, type: .majorAddNine))
```

### Access to all music scales
```swift
MusicLogic.scales
```

### Access to all music generic notes
```swift
MusicLogic.notes
```

## 🗄 Dependencies & Thanks
AudioKit Tonic: https://github.com/AudioKit/Tonic.git

