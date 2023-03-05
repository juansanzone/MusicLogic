//
//  MusicLogic.swift
//
//
//  Created by Juan Sanzone on 05/03/2023.
//

import Foundation
import Tonic

public enum MusicLogic {

    // MARK: Public Properties
    
    /// Contains an array with all music thory scales.
    public static let scales: [Scale] = Scale.all
    
    /// Contains an array with a set of generic musical notes within an octave.
    public static let notes: [NoteClass] = NoteClass.all
    
    // MARK: Public Methods
    
    /// Returns an array with the musical notes related to a scale and note (key)
    public static func getScaleNotes(note noteClass: NoteClass, inScale scale: Scale) -> [NoteClass] {
        Key(root: noteClass, scale: scale).noteSet.noteClassSet.array
    }
    
    /// Returns an array with the chords related to a scale and note (key)
    public static func getScaleChords(note noteClass: NoteClass, inScale scale: Scale) -> [Chord] {
        Key(root: noteClass, scale: scale).chords.sorted { chord1, chord2 in
            chord1.description < chord2.description
        }
    }
    
    /// Returns an array with the notes related to a specific chord
    public static func getChordNotes(chord: Chord) -> [NoteClass] {
        chord.noteClassSet.array
    }
}
