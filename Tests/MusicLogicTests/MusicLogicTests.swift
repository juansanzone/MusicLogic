//
//  MusicLogicTests.swift
//
//
//  Created by Juan Sanzone on 05/03/2023.
//

import XCTest
@testable import MusicLogic
@testable import Tonic

final class MusicLogicTests: XCTestCase {
    
    // MARK: Properties
    
    private let instance = MusicLogic.self
    
    // MARK: Tests
    
    func test_scalesCount() throws {
        XCTAssertEqual(instance.scales.count, 110)
    }
    
    func test_notesCount() throws {
        XCTAssertEqual(instance.notes.count, 21)
    }
    
    func test_getScaleNotes() throws {
        let notesInScale = instance.getScaleNotes(note: .C, inScale: .major)
        XCTAssertEqual(notesInScale, [.C, .D, .E, .F, .G, .A, .B])
    }
    
    func test_getScaleChords() throws {
        let chordsInScale = instance.getScaleChords(note: .C, inScale: .major)
        XCTAssertEqual(
            chordsInScale.debugDescription,
            "[Am, Am11, Am7, Am9, Amadd9, Asus, B°, C, C6/9, Cadd9, Cmaj11, Cmaj7, Cmaj9, Csus, Dm, Dm11, Dm6, Dm7, Dm9, Dmadd9, Dsus, Em, Em7, Em7♭9(add11), Esus, F, F6/9, Fadd9, Fmaj7, Fmaj9, Fmaj9♯11, G, G11, G6/9, G7, G9, Gadd9, Gsus]"
        )
    }
}
