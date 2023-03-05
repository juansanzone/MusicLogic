//
//  NoteClass.swift
//  
//
//  Created by Juan Sanzone on 05/03/2023.
//

import Foundation
import Tonic

extension NoteClass {
    
    static var all: [NoteClass] {
        [
            NoteClass.Cb, NoteClass.C, NoteClass.Cs, NoteClass.Db,
            NoteClass.D, NoteClass.Ds, NoteClass.Eb, NoteClass.E,
            NoteClass.Es, NoteClass.Fb, NoteClass.F, NoteClass.Fs,
            NoteClass.Gb, NoteClass.G, NoteClass.Gs, NoteClass.Ab,
            NoteClass.A, NoteClass.As, NoteClass.Bb, NoteClass.B,
            NoteClass.Bs
        ]
    }
}
