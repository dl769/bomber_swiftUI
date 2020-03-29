//
//  ContentView.swift
//  swiftUItest
//
//  Created by Dawid on 24/03/2020.
//  Copyright © 2020 Dawid. All rights reserved.
//

import SwiftUI

struct FieldInfo {
    var img: String
    let id: Int
    var isFlagHere: Bool
    var isBombHere: Bool
    var value: Int
    var isReleased: Bool
}


struct ContentView: View {
    
    @State var bombCount = 0
    @State var fSize = 0
    @State var fSizeUnbmb = 0
    @State var fSize_1 = 0
    @State var boardWidth = 0
    @State var fSizep1 = 0
    @State var edgeB = 0
    
    @State var bmbdftLVL = ""
    @State var fldLVL = ""
    @State var flagLVL = ""
    @State var bombLVL = ""
    @State var diffLVL = 0 //value to change images to lower/higher res 000-easy 600- medium 700-hard
    
    @State var textAfterEnd = ""
    @State var counterOfReleased = 0;
    
    @State var sun = "sunH"
    @State private var flagCount = 0;
    @State private var flagCountShow = 10;
    
    @State  var field = [
     FieldInfo(img: "field",id: 0, isFlagHere: false, isBombHere: false, value: 0, isReleased: false),
     FieldInfo(img: "field",id: 1, isFlagHere: false, isBombHere: false, value: 1, isReleased: false),
     FieldInfo(img: "field",id: 2, isFlagHere: false, isBombHere: false, value: 2, isReleased: false),
     FieldInfo(img: "field",id: 3, isFlagHere: false, isBombHere: false, value: 3, isReleased: false),
     FieldInfo(img: "field",id: 4, isFlagHere: false, isBombHere: false, value: 4, isReleased: false),
     FieldInfo(img: "field",id: 5, isFlagHere: false, isBombHere: false, value: 5, isReleased: false),
     FieldInfo(img: "field",id: 6, isFlagHere: false, isBombHere: false, value: 6, isReleased: false),
     FieldInfo(img: "field",id: 7, isFlagHere: false, isBombHere: false, value: 7, isReleased: false),
     FieldInfo(img: "field",id: 8, isFlagHere: false, isBombHere: false, value: 8, isReleased: false),
     FieldInfo(img: "field",id: 9, isFlagHere: false, isBombHere: false, value: 9, isReleased: false),
     FieldInfo(img: "field",id: 10, isFlagHere: false, isBombHere: false, value: 10, isReleased: false),
     FieldInfo(img: "field",id: 11, isFlagHere: false, isBombHere: false, value: 11, isReleased: false),
     FieldInfo(img: "field",id: 12, isFlagHere: false, isBombHere: false, value: 12, isReleased: false),
     FieldInfo(img: "field",id: 13, isFlagHere: false, isBombHere: false, value: 13, isReleased: false),
     FieldInfo(img: "field",id: 14, isFlagHere: false, isBombHere: false, value: 14, isReleased: false),
     FieldInfo(img: "field",id: 15, isFlagHere: false, isBombHere: false, value: 15, isReleased: false),
     FieldInfo(img: "field",id: 16, isFlagHere: false, isBombHere: false, value: 16, isReleased: false),
     FieldInfo(img: "field",id: 17, isFlagHere: false, isBombHere: false, value: 17, isReleased: false),
     FieldInfo(img: "field",id: 18, isFlagHere: false, isBombHere: false, value: 18, isReleased: false),
     FieldInfo(img: "field",id: 19, isFlagHere: false, isBombHere: false, value: 19, isReleased: false),
     FieldInfo(img: "field",id: 20, isFlagHere: false, isBombHere: false, value: 20, isReleased: false),
     FieldInfo(img: "field",id: 21, isFlagHere: false, isBombHere: false, value: 21, isReleased: false),
     FieldInfo(img: "field",id: 22, isFlagHere: false, isBombHere: false, value: 22, isReleased: false),
     FieldInfo(img: "field",id: 23, isFlagHere: false, isBombHere: false, value: 23, isReleased: false),
     FieldInfo(img: "field",id: 24, isFlagHere: false, isBombHere: false, value: 24, isReleased: false),
     FieldInfo(img: "field",id: 25, isFlagHere: false, isBombHere: false, value: 25, isReleased: false),
     FieldInfo(img: "field",id: 26, isFlagHere: false, isBombHere: false, value: 26, isReleased: false),
     FieldInfo(img: "field",id: 27, isFlagHere: false, isBombHere: false, value: 27, isReleased: false),
     FieldInfo(img: "field",id: 28, isFlagHere: false, isBombHere: false, value: 28, isReleased: false),
     FieldInfo(img: "field",id: 29, isFlagHere: false, isBombHere: false, value: 29, isReleased: false),
     FieldInfo(img: "field",id: 30, isFlagHere: false, isBombHere: false, value: 30, isReleased: false),
     FieldInfo(img: "field",id: 31, isFlagHere: false, isBombHere: false, value: 31, isReleased: false),
     FieldInfo(img: "field",id: 32, isFlagHere: false, isBombHere: false, value: 32, isReleased: false),
     FieldInfo(img: "field",id: 33, isFlagHere: false, isBombHere: false, value: 33, isReleased: false),
     FieldInfo(img: "field",id: 34, isFlagHere: false, isBombHere: false, value: 34, isReleased: false),
     FieldInfo(img: "field",id: 35, isFlagHere: false, isBombHere: false, value: 35, isReleased: false),
     FieldInfo(img: "field",id: 36, isFlagHere: false, isBombHere: false, value: 36, isReleased: false),
     FieldInfo(img: "field",id: 37, isFlagHere: false, isBombHere: false, value: 37, isReleased: false),
     FieldInfo(img: "field",id: 38, isFlagHere: false, isBombHere: false, value: 38, isReleased: false),
     FieldInfo(img: "field",id: 39, isFlagHere: false, isBombHere: false, value: 39, isReleased: false),
     FieldInfo(img: "field",id: 40, isFlagHere: false, isBombHere: false, value: 40, isReleased: false),
     FieldInfo(img: "field",id: 41, isFlagHere: false, isBombHere: false, value: 41, isReleased: false),
     FieldInfo(img: "field",id: 42, isFlagHere: false, isBombHere: false, value: 42, isReleased: false),
     FieldInfo(img: "field",id: 43, isFlagHere: false, isBombHere: false, value: 43, isReleased: false),
     FieldInfo(img: "field",id: 44, isFlagHere: false, isBombHere: false, value: 44, isReleased: false),
     FieldInfo(img: "field",id: 45, isFlagHere: false, isBombHere: false, value: 45, isReleased: false),
     FieldInfo(img: "field",id: 46, isFlagHere: false, isBombHere: false, value: 46, isReleased: false),
     FieldInfo(img: "field",id: 47, isFlagHere: false, isBombHere: false, value: 47, isReleased: false),
     FieldInfo(img: "field",id: 48, isFlagHere: false, isBombHere: false, value: 48, isReleased: false),
     FieldInfo(img: "field",id: 49, isFlagHere: false, isBombHere: false, value: 49, isReleased: false),
     FieldInfo(img: "field",id: 50, isFlagHere: false, isBombHere: false, value: 50, isReleased: false),
     FieldInfo(img: "field",id: 51, isFlagHere: false, isBombHere: false, value: 51, isReleased: false),
     FieldInfo(img: "field",id: 52, isFlagHere: false, isBombHere: false, value: 52, isReleased: false),
     FieldInfo(img: "field",id: 53, isFlagHere: false, isBombHere: false, value: 53, isReleased: false),
     FieldInfo(img: "field",id: 54, isFlagHere: false, isBombHere: false, value: 54, isReleased: false),
     FieldInfo(img: "field",id: 55, isFlagHere: false, isBombHere: false, value: 55, isReleased: false),
     FieldInfo(img: "field",id: 56, isFlagHere: false, isBombHere: false, value: 56, isReleased: false),
     FieldInfo(img: "field",id: 57, isFlagHere: false, isBombHere: false, value: 57, isReleased: false),
     FieldInfo(img: "field",id: 58, isFlagHere: false, isBombHere: false, value: 58, isReleased: false),
     FieldInfo(img: "field",id: 59, isFlagHere: false, isBombHere: false, value: 59, isReleased: false),
     FieldInfo(img: "field",id: 60, isFlagHere: false, isBombHere: false, value: 60, isReleased: false),
     FieldInfo(img: "field",id: 61, isFlagHere: false, isBombHere: false, value: 61, isReleased: false),
     FieldInfo(img: "field",id: 62, isFlagHere: false, isBombHere: false, value: 62, isReleased: false),
     FieldInfo(img: "field",id: 63, isFlagHere: false, isBombHere: false, value: 63, isReleased: false),
     FieldInfo(img: "field",id: 64, isFlagHere: false, isBombHere: false, value: 64, isReleased: false),
     FieldInfo(img: "field",id: 65, isFlagHere: false, isBombHere: false, value: 65, isReleased: false),
     FieldInfo(img: "field",id: 66, isFlagHere: false, isBombHere: false, value: 66, isReleased: false),
     FieldInfo(img: "field",id: 67, isFlagHere: false, isBombHere: false, value: 67, isReleased: false),
     FieldInfo(img: "field",id: 68, isFlagHere: false, isBombHere: false, value: 68, isReleased: false),
     FieldInfo(img: "field",id: 69, isFlagHere: false, isBombHere: false, value: 69, isReleased: false),
     FieldInfo(img: "field",id: 70, isFlagHere: false, isBombHere: false, value: 70, isReleased: false),
     FieldInfo(img: "field",id: 71, isFlagHere: false, isBombHere: false, value: 71, isReleased: false),
     FieldInfo(img: "field",id: 72, isFlagHere: false, isBombHere: false, value: 72, isReleased: false),
     FieldInfo(img: "field",id: 73, isFlagHere: false, isBombHere: false, value: 73, isReleased: false),
     FieldInfo(img: "field",id: 74, isFlagHere: false, isBombHere: false, value: 74, isReleased: false),
     FieldInfo(img: "field",id: 75, isFlagHere: false, isBombHere: false, value: 75, isReleased: false),
     FieldInfo(img: "field",id: 76, isFlagHere: false, isBombHere: false, value: 76, isReleased: false),
     FieldInfo(img: "field",id: 77, isFlagHere: false, isBombHere: false, value: 77, isReleased: false),
     FieldInfo(img: "field",id: 78, isFlagHere: false, isBombHere: false, value: 78, isReleased: false),
     FieldInfo(img: "field",id: 79, isFlagHere: false, isBombHere: false, value: 79, isReleased: false),
     FieldInfo(img: "field",id: 80, isFlagHere: false, isBombHere: false, value: 80, isReleased: false),
     FieldInfo(img: "field",id: 81, isFlagHere: false, isBombHere: false, value: 81, isReleased: false),
     FieldInfo(img: "field",id: 82, isFlagHere: false, isBombHere: false, value: 82, isReleased: false),
     FieldInfo(img: "field",id: 83, isFlagHere: false, isBombHere: false, value: 83, isReleased: false),
     FieldInfo(img: "field",id: 84, isFlagHere: false, isBombHere: false, value: 84, isReleased: false),
     FieldInfo(img: "field",id: 85, isFlagHere: false, isBombHere: false, value: 85, isReleased: false),
     FieldInfo(img: "field",id: 86, isFlagHere: false, isBombHere: false, value: 86, isReleased: false),
     FieldInfo(img: "field",id: 87, isFlagHere: false, isBombHere: false, value: 87, isReleased: false),
     FieldInfo(img: "field",id: 88, isFlagHere: false, isBombHere: false, value: 88, isReleased: false),
     FieldInfo(img: "field",id: 89, isFlagHere: false, isBombHere: false, value: 89, isReleased: false),
     FieldInfo(img: "field",id: 90, isFlagHere: false, isBombHere: false, value: 90, isReleased: false),
     FieldInfo(img: "field",id: 91, isFlagHere: false, isBombHere: false, value: 91, isReleased: false),
     FieldInfo(img: "field",id: 92, isFlagHere: false, isBombHere: false, value: 92, isReleased: false),
     FieldInfo(img: "field",id: 93, isFlagHere: false, isBombHere: false, value: 93, isReleased: false),
     FieldInfo(img: "field",id: 94, isFlagHere: false, isBombHere: false, value: 94, isReleased: false),
     FieldInfo(img: "field",id: 95, isFlagHere: false, isBombHere: false, value: 95, isReleased: false),
     FieldInfo(img: "field",id: 96, isFlagHere: false, isBombHere: false, value: 96, isReleased: false),
     FieldInfo(img: "field",id: 97, isFlagHere: false, isBombHere: false, value: 97, isReleased: false),
     FieldInfo(img: "field",id: 98, isFlagHere: false, isBombHere: false, value: 98, isReleased: false),
     FieldInfo(img: "field",id: 99, isFlagHere: false, isBombHere: false, value: 99, isReleased: false),
     FieldInfo(img: "field",id: 100, isFlagHere: false, isBombHere: false, value: 100, isReleased: false),
     FieldInfo(img: "field",id: 101, isFlagHere: false, isBombHere: false, value: 101, isReleased: false),
     FieldInfo(img: "field",id: 102, isFlagHere: false, isBombHere: false, value: 102, isReleased: false),
     FieldInfo(img: "field",id: 103, isFlagHere: false, isBombHere: false, value: 103, isReleased: false),
     FieldInfo(img: "field",id: 104, isFlagHere: false, isBombHere: false, value: 104, isReleased: false),
     FieldInfo(img: "field",id: 105, isFlagHere: false, isBombHere: false, value: 105, isReleased: false),
     FieldInfo(img: "field",id: 106, isFlagHere: false, isBombHere: false, value: 106, isReleased: false),
     FieldInfo(img: "field",id: 107, isFlagHere: false, isBombHere: false, value: 107, isReleased: false),
     FieldInfo(img: "field",id: 108, isFlagHere: false, isBombHere: false, value: 108, isReleased: false),
     FieldInfo(img: "field",id: 109, isFlagHere: false, isBombHere: false, value: 109, isReleased: false),
     FieldInfo(img: "field",id: 110, isFlagHere: false, isBombHere: false, value: 110, isReleased: false),
     FieldInfo(img: "field",id: 111, isFlagHere: false, isBombHere: false, value: 111, isReleased: false),
     FieldInfo(img: "field",id: 112, isFlagHere: false, isBombHere: false, value: 112, isReleased: false),
     FieldInfo(img: "field",id: 113, isFlagHere: false, isBombHere: false, value: 113, isReleased: false),
     FieldInfo(img: "field",id: 114, isFlagHere: false, isBombHere: false, value: 114, isReleased: false),
     FieldInfo(img: "field",id: 115, isFlagHere: false, isBombHere: false, value: 115, isReleased: false),
     FieldInfo(img: "field",id: 116, isFlagHere: false, isBombHere: false, value: 116, isReleased: false),
     FieldInfo(img: "field",id: 117, isFlagHere: false, isBombHere: false, value: 117, isReleased: false),
     FieldInfo(img: "field",id: 118, isFlagHere: false, isBombHere: false, value: 118, isReleased: false),
     FieldInfo(img: "field",id: 119, isFlagHere: false, isBombHere: false, value: 119, isReleased: false),
     FieldInfo(img: "field",id: 120, isFlagHere: false, isBombHere: false, value: 120, isReleased: false),
     FieldInfo(img: "field",id: 121, isFlagHere: false, isBombHere: false, value: 121, isReleased: false),
     FieldInfo(img: "field",id: 122, isFlagHere: false, isBombHere: false, value: 122, isReleased: false),
     FieldInfo(img: "field",id: 123, isFlagHere: false, isBombHere: false, value: 123, isReleased: false),
     FieldInfo(img: "field",id: 124, isFlagHere: false, isBombHere: false, value: 124, isReleased: false),
     FieldInfo(img: "field",id: 125, isFlagHere: false, isBombHere: false, value: 125, isReleased: false),
     FieldInfo(img: "field",id: 126, isFlagHere: false, isBombHere: false, value: 126, isReleased: false),
     FieldInfo(img: "field",id: 127, isFlagHere: false, isBombHere: false, value: 127, isReleased: false),
     FieldInfo(img: "field",id: 128, isFlagHere: false, isBombHere: false, value: 128, isReleased: false),
     FieldInfo(img: "field",id: 129, isFlagHere: false, isBombHere: false, value: 129, isReleased: false),
     FieldInfo(img: "field",id: 130, isFlagHere: false, isBombHere: false, value: 130, isReleased: false),
     FieldInfo(img: "field",id: 131, isFlagHere: false, isBombHere: false, value: 131, isReleased: false),
     FieldInfo(img: "field",id: 132, isFlagHere: false, isBombHere: false, value: 132, isReleased: false),
     FieldInfo(img: "field",id: 133, isFlagHere: false, isBombHere: false, value: 133, isReleased: false),
     FieldInfo(img: "field",id: 134, isFlagHere: false, isBombHere: false, value: 134, isReleased: false),
     FieldInfo(img: "field",id: 135, isFlagHere: false, isBombHere: false, value: 135, isReleased: false),
     FieldInfo(img: "field",id: 136, isFlagHere: false, isBombHere: false, value: 136, isReleased: false),
     FieldInfo(img: "field",id: 137, isFlagHere: false, isBombHere: false, value: 137, isReleased: false),
     FieldInfo(img: "field",id: 138, isFlagHere: false, isBombHere: false, value: 138, isReleased: false),
     FieldInfo(img: "field",id: 139, isFlagHere: false, isBombHere: false, value: 139, isReleased: false),
     FieldInfo(img: "field",id: 140, isFlagHere: false, isBombHere: false, value: 140, isReleased: false),
     FieldInfo(img: "field",id: 141, isFlagHere: false, isBombHere: false, value: 141, isReleased: false),
     FieldInfo(img: "field",id: 142, isFlagHere: false, isBombHere: false, value: 142, isReleased: false),
     FieldInfo(img: "field",id: 143, isFlagHere: false, isBombHere: false, value: 143, isReleased: false),
     FieldInfo(img: "field",id: 144, isFlagHere: false, isBombHere: false, value: 144, isReleased: false),
     FieldInfo(img: "field",id: 145, isFlagHere: false, isBombHere: false, value: 145, isReleased: false),
     FieldInfo(img: "field",id: 146, isFlagHere: false, isBombHere: false, value: 146, isReleased: false),
     FieldInfo(img: "field",id: 147, isFlagHere: false, isBombHere: false, value: 147, isReleased: false),
     FieldInfo(img: "field",id: 148, isFlagHere: false, isBombHere: false, value: 148, isReleased: false),
     FieldInfo(img: "field",id: 149, isFlagHere: false, isBombHere: false, value: 149, isReleased: false),
     FieldInfo(img: "field",id: 150, isFlagHere: false, isBombHere: false, value: 150, isReleased: false),
     FieldInfo(img: "field",id: 151, isFlagHere: false, isBombHere: false, value: 151, isReleased: false),
     FieldInfo(img: "field",id: 152, isFlagHere: false, isBombHere: false, value: 152, isReleased: false),
     FieldInfo(img: "field",id: 153, isFlagHere: false, isBombHere: false, value: 153, isReleased: false),
     FieldInfo(img: "field",id: 154, isFlagHere: false, isBombHere: false, value: 154, isReleased: false),
     FieldInfo(img: "field",id: 155, isFlagHere: false, isBombHere: false, value: 155, isReleased: false),
     FieldInfo(img: "field",id: 156, isFlagHere: false, isBombHere: false, value: 156, isReleased: false),
     FieldInfo(img: "field",id: 157, isFlagHere: false, isBombHere: false, value: 157, isReleased: false),
     FieldInfo(img: "field",id: 158, isFlagHere: false, isBombHere: false, value: 158, isReleased: false),
     FieldInfo(img: "field",id: 159, isFlagHere: false, isBombHere: false, value: 159, isReleased: false),
     FieldInfo(img: "field",id: 160, isFlagHere: false, isBombHere: false, value: 160, isReleased: false),
     FieldInfo(img: "field",id: 161, isFlagHere: false, isBombHere: false, value: 161, isReleased: false),
     FieldInfo(img: "field",id: 162, isFlagHere: false, isBombHere: false, value: 162, isReleased: false),
     FieldInfo(img: "field",id: 163, isFlagHere: false, isBombHere: false, value: 163, isReleased: false),
     FieldInfo(img: "field",id: 164, isFlagHere: false, isBombHere: false, value: 164, isReleased: false),
     FieldInfo(img: "field",id: 165, isFlagHere: false, isBombHere: false, value: 165, isReleased: false),
     FieldInfo(img: "field",id: 166, isFlagHere: false, isBombHere: false, value: 166, isReleased: false),
     FieldInfo(img: "field",id: 167, isFlagHere: false, isBombHere: false, value: 167, isReleased: false),
     FieldInfo(img: "field",id: 168, isFlagHere: false, isBombHere: false, value: 168, isReleased: false),
     FieldInfo(img: "field",id: 169, isFlagHere: false, isBombHere: false, value: 169, isReleased: false),
     FieldInfo(img: "field",id: 170, isFlagHere: false, isBombHere: false, value: 170, isReleased: false),
     FieldInfo(img: "field",id: 171, isFlagHere: false, isBombHere: false, value: 171, isReleased: false),
     FieldInfo(img: "field",id: 172, isFlagHere: false, isBombHere: false, value: 172, isReleased: false),
     FieldInfo(img: "field",id: 173, isFlagHere: false, isBombHere: false, value: 173, isReleased: false),
     FieldInfo(img: "field",id: 174, isFlagHere: false, isBombHere: false, value: 174, isReleased: false),
     FieldInfo(img: "field",id: 175, isFlagHere: false, isBombHere: false, value: 175, isReleased: false),
     FieldInfo(img: "field",id: 176, isFlagHere: false, isBombHere: false, value: 176, isReleased: false),
     FieldInfo(img: "field",id: 177, isFlagHere: false, isBombHere: false, value: 177, isReleased: false),
     FieldInfo(img: "field",id: 178, isFlagHere: false, isBombHere: false, value: 178, isReleased: false),
     FieldInfo(img: "field",id: 179, isFlagHere: false, isBombHere: false, value: 179, isReleased: false),
     FieldInfo(img: "field",id: 180, isFlagHere: false, isBombHere: false, value: 180, isReleased: false),
     FieldInfo(img: "field",id: 181, isFlagHere: false, isBombHere: false, value: 181, isReleased: false),
     FieldInfo(img: "field",id: 182, isFlagHere: false, isBombHere: false, value: 182, isReleased: false),
     FieldInfo(img: "field",id: 183, isFlagHere: false, isBombHere: false, value: 183, isReleased: false),
     FieldInfo(img: "field",id: 184, isFlagHere: false, isBombHere: false, value: 184, isReleased: false),
     FieldInfo(img: "field",id: 185, isFlagHere: false, isBombHere: false, value: 185, isReleased: false),
     FieldInfo(img: "field",id: 186, isFlagHere: false, isBombHere: false, value: 186, isReleased: false),
     FieldInfo(img: "field",id: 187, isFlagHere: false, isBombHere: false, value: 187, isReleased: false),
     FieldInfo(img: "field",id: 188, isFlagHere: false, isBombHere: false, value: 188, isReleased: false),
     FieldInfo(img: "field",id: 189, isFlagHere: false, isBombHere: false, value: 189, isReleased: false),
     FieldInfo(img: "field",id: 190, isFlagHere: false, isBombHere: false, value: 190, isReleased: false),
     FieldInfo(img: "field",id: 191, isFlagHere: false, isBombHere: false, value: 191, isReleased: false),
     FieldInfo(img: "field",id: 192, isFlagHere: false, isBombHere: false, value: 192, isReleased: false),
     FieldInfo(img: "field",id: 193, isFlagHere: false, isBombHere: false, value: 193, isReleased: false),
     FieldInfo(img: "field",id: 194, isFlagHere: false, isBombHere: false, value: 194, isReleased: false),
     FieldInfo(img: "field",id: 195, isFlagHere: false, isBombHere: false, value: 195, isReleased: false),
     FieldInfo(img: "field",id: 196, isFlagHere: false, isBombHere: false, value: 196, isReleased: false),
     FieldInfo(img: "field",id: 197, isFlagHere: false, isBombHere: false, value: 197, isReleased: false),
     FieldInfo(img: "field",id: 198, isFlagHere: false, isBombHere: false, value: 198, isReleased: false),
     FieldInfo(img: "field",id: 199, isFlagHere: false, isBombHere: false, value: 199, isReleased: false),
     FieldInfo(img: "field",id: 200, isFlagHere: false, isBombHere: false, value: 200, isReleased: false),
     FieldInfo(img: "field",id: 201, isFlagHere: false, isBombHere: false, value: 201, isReleased: false),
     FieldInfo(img: "field",id: 202, isFlagHere: false, isBombHere: false, value: 202, isReleased: false),
     FieldInfo(img: "field",id: 203, isFlagHere: false, isBombHere: false, value: 203, isReleased: false),
     FieldInfo(img: "field",id: 204, isFlagHere: false, isBombHere: false, value: 204, isReleased: false),
     FieldInfo(img: "field",id: 205, isFlagHere: false, isBombHere: false, value: 205, isReleased: false),
     FieldInfo(img: "field",id: 206, isFlagHere: false, isBombHere: false, value: 206, isReleased: false),
     FieldInfo(img: "field",id: 207, isFlagHere: false, isBombHere: false, value: 207, isReleased: false),
     FieldInfo(img: "field",id: 208, isFlagHere: false, isBombHere: false, value: 208, isReleased: false),
     FieldInfo(img: "field",id: 209, isFlagHere: false, isBombHere: false, value: 209, isReleased: false),
     FieldInfo(img: "field",id: 210, isFlagHere: false, isBombHere: false, value: 210, isReleased: false),
     FieldInfo(img: "field",id: 211, isFlagHere: false, isBombHere: false, value: 211, isReleased: false),
     FieldInfo(img: "field",id: 212, isFlagHere: false, isBombHere: false, value: 212, isReleased: false),
     FieldInfo(img: "field",id: 213, isFlagHere: false, isBombHere: false, value: 213, isReleased: false),
     FieldInfo(img: "field",id: 214, isFlagHere: false, isBombHere: false, value: 214, isReleased: false),
     FieldInfo(img: "field",id: 215, isFlagHere: false, isBombHere: false, value: 215, isReleased: false),
     FieldInfo(img: "field",id: 216, isFlagHere: false, isBombHere: false, value: 216, isReleased: false),
     FieldInfo(img: "field",id: 217, isFlagHere: false, isBombHere: false, value: 217, isReleased: false),
     FieldInfo(img: "field",id: 218, isFlagHere: false, isBombHere: false, value: 218, isReleased: false),
     FieldInfo(img: "field",id: 219, isFlagHere: false, isBombHere: false, value: 219, isReleased: false),
     FieldInfo(img: "field",id: 220, isFlagHere: false, isBombHere: false, value: 220, isReleased: false),
     FieldInfo(img: "field",id: 221, isFlagHere: false, isBombHere: false, value: 221, isReleased: false),
     FieldInfo(img: "field",id: 222, isFlagHere: false, isBombHere: false, value: 222, isReleased: false),
     FieldInfo(img: "field",id: 223, isFlagHere: false, isBombHere: false, value: 223, isReleased: false),
     FieldInfo(img: "field",id: 224, isFlagHere: false, isBombHere: false, value: 224, isReleased: false),
     FieldInfo(img: "field",id: 225, isFlagHere: false, isBombHere: false, value: 225, isReleased: false),
     FieldInfo(img: "field",id: 226, isFlagHere: false, isBombHere: false, value: 226, isReleased: false),
     FieldInfo(img: "field",id: 227, isFlagHere: false, isBombHere: false, value: 227, isReleased: false),
     FieldInfo(img: "field",id: 228, isFlagHere: false, isBombHere: false, value: 228, isReleased: false),
     FieldInfo(img: "field",id: 229, isFlagHere: false, isBombHere: false, value: 229, isReleased: false),
     FieldInfo(img: "field",id: 230, isFlagHere: false, isBombHere: false, value: 230, isReleased: false),
     FieldInfo(img: "field",id: 231, isFlagHere: false, isBombHere: false, value: 231, isReleased: false),
     FieldInfo(img: "field",id: 232, isFlagHere: false, isBombHere: false, value: 232, isReleased: false),
     FieldInfo(img: "field",id: 233, isFlagHere: false, isBombHere: false, value: 233, isReleased: false),
     FieldInfo(img: "field",id: 234, isFlagHere: false, isBombHere: false, value: 234, isReleased: false),
     FieldInfo(img: "field",id: 235, isFlagHere: false, isBombHere: false, value: 235, isReleased: false),
     FieldInfo(img: "field",id: 236, isFlagHere: false, isBombHere: false, value: 236, isReleased: false),
     FieldInfo(img: "field",id: 237, isFlagHere: false, isBombHere: false, value: 237, isReleased: false),
     FieldInfo(img: "field",id: 238, isFlagHere: false, isBombHere: false, value: 238, isReleased: false),
     FieldInfo(img: "field",id: 239, isFlagHere: false, isBombHere: false, value: 239, isReleased: false),
     FieldInfo(img: "field",id: 240, isFlagHere: false, isBombHere: false, value: 240, isReleased: false),
     FieldInfo(img: "field",id: 241, isFlagHere: false, isBombHere: false, value: 241, isReleased: false),
     FieldInfo(img: "field",id: 242, isFlagHere: false, isBombHere: false, value: 242, isReleased: false),
     FieldInfo(img: "field",id: 243, isFlagHere: false, isBombHere: false, value: 243, isReleased: false),
     FieldInfo(img: "field",id: 244, isFlagHere: false, isBombHere: false, value: 244, isReleased: false),
     FieldInfo(img: "field",id: 245, isFlagHere: false, isBombHere: false, value: 245, isReleased: false),
     FieldInfo(img: "field",id: 246, isFlagHere: false, isBombHere: false, value: 246, isReleased: false),
     FieldInfo(img: "field",id: 247, isFlagHere: false, isBombHere: false, value: 247, isReleased: false),
     FieldInfo(img: "field",id: 248, isFlagHere: false, isBombHere: false, value: 248, isReleased: false),
     FieldInfo(img: "field",id: 249, isFlagHere: false, isBombHere: false, value: 249, isReleased: false),
     FieldInfo(img: "field",id: 250, isFlagHere: false, isBombHere: false, value: 250, isReleased: false),
     FieldInfo(img: "field",id: 251, isFlagHere: false, isBombHere: false, value: 251, isReleased: false),
     FieldInfo(img: "field",id: 252, isFlagHere: false, isBombHere: false, value: 252, isReleased: false),
     FieldInfo(img: "field",id: 253, isFlagHere: false, isBombHere: false, value: 253, isReleased: false),
     FieldInfo(img: "field",id: 254, isFlagHere: false, isBombHere: false, value: 254, isReleased: false),
     FieldInfo(img: "field",id: 255, isFlagHere: false, isBombHere: false, value: 255, isReleased: false),
     FieldInfo(img: "field",id: 256, isFlagHere: false, isBombHere: false, value: 256, isReleased: false),
     FieldInfo(img: "field",id: 257, isFlagHere: false, isBombHere: false, value: 257, isReleased: false),
     FieldInfo(img: "field",id: 258, isFlagHere: false, isBombHere: false, value: 258, isReleased: false),
     FieldInfo(img: "field",id: 259, isFlagHere: false, isBombHere: false, value: 259, isReleased: false),
     FieldInfo(img: "field",id: 260, isFlagHere: false, isBombHere: false, value: 260, isReleased: false),
     FieldInfo(img: "field",id: 261, isFlagHere: false, isBombHere: false, value: 261, isReleased: false),
     FieldInfo(img: "field",id: 262, isFlagHere: false, isBombHere: false, value: 262, isReleased: false),
     FieldInfo(img: "field",id: 263, isFlagHere: false, isBombHere: false, value: 263, isReleased: false),
     FieldInfo(img: "field",id: 264, isFlagHere: false, isBombHere: false, value: 264, isReleased: false),
     FieldInfo(img: "field",id: 265, isFlagHere: false, isBombHere: false, value: 265, isReleased: false),
     FieldInfo(img: "field",id: 266, isFlagHere: false, isBombHere: false, value: 266, isReleased: false),
     FieldInfo(img: "field",id: 267, isFlagHere: false, isBombHere: false, value: 267, isReleased: false),
     FieldInfo(img: "field",id: 268, isFlagHere: false, isBombHere: false, value: 268, isReleased: false),
     FieldInfo(img: "field",id: 269, isFlagHere: false, isBombHere: false, value: 269, isReleased: false),
     FieldInfo(img: "field",id: 270, isFlagHere: false, isBombHere: false, value: 270, isReleased: false),
     FieldInfo(img: "field",id: 271, isFlagHere: false, isBombHere: false, value: 271, isReleased: false),
     FieldInfo(img: "field",id: 272, isFlagHere: false, isBombHere: false, value: 272, isReleased: false),
     FieldInfo(img: "field",id: 273, isFlagHere: false, isBombHere: false, value: 273, isReleased: false),
     FieldInfo(img: "field",id: 274, isFlagHere: false, isBombHere: false, value: 274, isReleased: false),
     FieldInfo(img: "field",id: 275, isFlagHere: false, isBombHere: false, value: 275, isReleased: false),
     FieldInfo(img: "field",id: 276, isFlagHere: false, isBombHere: false, value: 276, isReleased: false),
     FieldInfo(img: "field",id: 277, isFlagHere: false, isBombHere: false, value: 277, isReleased: false),
     FieldInfo(img: "field",id: 278, isFlagHere: false, isBombHere: false, value: 278, isReleased: false),
     FieldInfo(img: "field",id: 279, isFlagHere: false, isBombHere: false, value: 279, isReleased: false),
     FieldInfo(img: "field",id: 280, isFlagHere: false, isBombHere: false, value: 280, isReleased: false),
     FieldInfo(img: "field",id: 281, isFlagHere: false, isBombHere: false, value: 281, isReleased: false),
     FieldInfo(img: "field",id: 282, isFlagHere: false, isBombHere: false, value: 282, isReleased: false),
     FieldInfo(img: "field",id: 283, isFlagHere: false, isBombHere: false, value: 283, isReleased: false),
     FieldInfo(img: "field",id: 284, isFlagHere: false, isBombHere: false, value: 284, isReleased: false),
     FieldInfo(img: "field",id: 285, isFlagHere: false, isBombHere: false, value: 285, isReleased: false),
     FieldInfo(img: "field",id: 286, isFlagHere: false, isBombHere: false, value: 286, isReleased: false),
     FieldInfo(img: "field",id: 287, isFlagHere: false, isBombHere: false, value: 287, isReleased: false),
     FieldInfo(img: "field",id: 288, isFlagHere: false, isBombHere: false, value: 288, isReleased: false),
     FieldInfo(img: "field",id: 289, isFlagHere: false, isBombHere: false, value: 289, isReleased: false),
     FieldInfo(img: "field",id: 290, isFlagHere: false, isBombHere: false, value: 290, isReleased: false),
     FieldInfo(img: "field",id: 291, isFlagHere: false, isBombHere: false, value: 291, isReleased: false),
     FieldInfo(img: "field",id: 292, isFlagHere: false, isBombHere: false, value: 292, isReleased: false),
     FieldInfo(img: "field",id: 293, isFlagHere: false, isBombHere: false, value: 293, isReleased: false),
     FieldInfo(img: "field",id: 294, isFlagHere: false, isBombHere: false, value: 294, isReleased: false),
     FieldInfo(img: "field",id: 295, isFlagHere: false, isBombHere: false, value: 295, isReleased: false),
     FieldInfo(img: "field",id: 296, isFlagHere: false, isBombHere: false, value: 296, isReleased: false),
     FieldInfo(img: "field",id: 297, isFlagHere: false, isBombHere: false, value: 297, isReleased: false),
     FieldInfo(img: "field",id: 298, isFlagHere: false, isBombHere: false, value: 298, isReleased: false),
     FieldInfo(img: "field",id: 299, isFlagHere: false, isBombHere: false, value: 299, isReleased: false),
     FieldInfo(img: "field",id: 300, isFlagHere: false, isBombHere: false, value: 300, isReleased: false),
     FieldInfo(img: "field",id: 301, isFlagHere: false, isBombHere: false, value: 301, isReleased: false),
     FieldInfo(img: "field",id: 302, isFlagHere: false, isBombHere: false, value: 302, isReleased: false),
     FieldInfo(img: "field",id: 303, isFlagHere: false, isBombHere: false, value: 303, isReleased: false),
     FieldInfo(img: "field",id: 304, isFlagHere: false, isBombHere: false, value: 304, isReleased: false),
     FieldInfo(img: "field",id: 305, isFlagHere: false, isBombHere: false, value: 305, isReleased: false),
     FieldInfo(img: "field",id: 306, isFlagHere: false, isBombHere: false, value: 306, isReleased: false),
     FieldInfo(img: "field",id: 307, isFlagHere: false, isBombHere: false, value: 307, isReleased: false),
     FieldInfo(img: "field",id: 308, isFlagHere: false, isBombHere: false, value: 308, isReleased: false),
     FieldInfo(img: "field",id: 309, isFlagHere: false, isBombHere: false, value: 309, isReleased: false),
     FieldInfo(img: "field",id: 310, isFlagHere: false, isBombHere: false, value: 310, isReleased: false),
     FieldInfo(img: "field",id: 311, isFlagHere: false, isBombHere: false, value: 311, isReleased: false),
     FieldInfo(img: "field",id: 312, isFlagHere: false, isBombHere: false, value: 312, isReleased: false),
     FieldInfo(img: "field",id: 313, isFlagHere: false, isBombHere: false, value: 313, isReleased: false),
     FieldInfo(img: "field",id: 314, isFlagHere: false, isBombHere: false, value: 314, isReleased: false),
     FieldInfo(img: "field",id: 315, isFlagHere: false, isBombHere: false, value: 315, isReleased: false),
     FieldInfo(img: "field",id: 316, isFlagHere: false, isBombHere: false, value: 316, isReleased: false),
     FieldInfo(img: "field",id: 317, isFlagHere: false, isBombHere: false, value: 317, isReleased: false),
     FieldInfo(img: "field",id: 318, isFlagHere: false, isBombHere: false, value: 318, isReleased: false),
     FieldInfo(img: "field",id: 319, isFlagHere: false, isBombHere: false, value: 319, isReleased: false),
     FieldInfo(img: "field",id: 320, isFlagHere: false, isBombHere: false, value: 320, isReleased: false),
     FieldInfo(img: "field",id: 321, isFlagHere: false, isBombHere: false, value: 321, isReleased: false),
     FieldInfo(img: "field",id: 322, isFlagHere: false, isBombHere: false, value: 322, isReleased: false),
     FieldInfo(img: "field",id: 323, isFlagHere: false, isBombHere: false, value: 323, isReleased: false),
     FieldInfo(img: "field",id: 324, isFlagHere: false, isBombHere: false, value: 324, isReleased: false),
     FieldInfo(img: "field",id: 325, isFlagHere: false, isBombHere: false, value: 325, isReleased: false),
     FieldInfo(img: "field",id: 326, isFlagHere: false, isBombHere: false, value: 326, isReleased: false),
     FieldInfo(img: "field",id: 327, isFlagHere: false, isBombHere: false, value: 327, isReleased: false),
     FieldInfo(img: "field",id: 328, isFlagHere: false, isBombHere: false, value: 328, isReleased: false),
     FieldInfo(img: "field",id: 329, isFlagHere: false, isBombHere: false, value: 329, isReleased: false),
     FieldInfo(img: "field",id: 330, isFlagHere: false, isBombHere: false, value: 330, isReleased: false),
     FieldInfo(img: "field",id: 331, isFlagHere: false, isBombHere: false, value: 331, isReleased: false),
     FieldInfo(img: "field",id: 332, isFlagHere: false, isBombHere: false, value: 332, isReleased: false),
     FieldInfo(img: "field",id: 333, isFlagHere: false, isBombHere: false, value: 333, isReleased: false),
     FieldInfo(img: "field",id: 334, isFlagHere: false, isBombHere: false, value: 334, isReleased: false),
     FieldInfo(img: "field",id: 335, isFlagHere: false, isBombHere: false, value: 335, isReleased: false),
     FieldInfo(img: "field",id: 336, isFlagHere: false, isBombHere: false, value: 336, isReleased: false),
     FieldInfo(img: "field",id: 337, isFlagHere: false, isBombHere: false, value: 337, isReleased: false),
     FieldInfo(img: "field",id: 338, isFlagHere: false, isBombHere: false, value: 338, isReleased: false),
     FieldInfo(img: "field",id: 339, isFlagHere: false, isBombHere: false, value: 339, isReleased: false),
     FieldInfo(img: "field",id: 340, isFlagHere: false, isBombHere: false, value: 340, isReleased: false),
     FieldInfo(img: "field",id: 341, isFlagHere: false, isBombHere: false, value: 341, isReleased: false),
     FieldInfo(img: "field",id: 342, isFlagHere: false, isBombHere: false, value: 342, isReleased: false),
     FieldInfo(img: "field",id: 343, isFlagHere: false, isBombHere: false, value: 343, isReleased: false),
     FieldInfo(img: "field",id: 344, isFlagHere: false, isBombHere: false, value: 344, isReleased: false),
     FieldInfo(img: "field",id: 345, isFlagHere: false, isBombHere: false, value: 345, isReleased: false),
     FieldInfo(img: "field",id: 346, isFlagHere: false, isBombHere: false, value: 346, isReleased: false),
     FieldInfo(img: "field",id: 347, isFlagHere: false, isBombHere: false, value: 347, isReleased: false),
     FieldInfo(img: "field",id: 348, isFlagHere: false, isBombHere: false, value: 348, isReleased: false),
     FieldInfo(img: "field",id: 349, isFlagHere: false, isBombHere: false, value: 349, isReleased: false),
     FieldInfo(img: "field",id: 350, isFlagHere: false, isBombHere: false, value: 350, isReleased: false),
     FieldInfo(img: "field",id: 351, isFlagHere: false, isBombHere: false, value: 351, isReleased: false),
     FieldInfo(img: "field",id: 352, isFlagHere: false, isBombHere: false, value: 352, isReleased: false),
     FieldInfo(img: "field",id: 353, isFlagHere: false, isBombHere: false, value: 353, isReleased: false),
     FieldInfo(img: "field",id: 354, isFlagHere: false, isBombHere: false, value: 354, isReleased: false),
     FieldInfo(img: "field",id: 355, isFlagHere: false, isBombHere: false, value: 355, isReleased: false),
     FieldInfo(img: "field",id: 356, isFlagHere: false, isBombHere: false, value: 356, isReleased: false),
     FieldInfo(img: "field",id: 357, isFlagHere: false, isBombHere: false, value: 357, isReleased: false),
     FieldInfo(img: "field",id: 358, isFlagHere: false, isBombHere: false, value: 358, isReleased: false),
     FieldInfo(img: "field",id: 359, isFlagHere: false, isBombHere: false, value: 359, isReleased: false),
     FieldInfo(img: "field",id: 360, isFlagHere: false, isBombHere: false, value: 360, isReleased: false),
     FieldInfo(img: "field",id: 361, isFlagHere: false, isBombHere: false, value: 361, isReleased: false),
     FieldInfo(img: "field",id: 362, isFlagHere: false, isBombHere: false, value: 362, isReleased: false),
     FieldInfo(img: "field",id: 363, isFlagHere: false, isBombHere: false, value: 363, isReleased: false),
     FieldInfo(img: "field",id: 364, isFlagHere: false, isBombHere: false, value: 364, isReleased: false),
     FieldInfo(img: "field",id: 365, isFlagHere: false, isBombHere: false, value: 365, isReleased: false),
     FieldInfo(img: "field",id: 366, isFlagHere: false, isBombHere: false, value: 366, isReleased: false),
     FieldInfo(img: "field",id: 367, isFlagHere: false, isBombHere: false, value: 367, isReleased: false),
     FieldInfo(img: "field",id: 368, isFlagHere: false, isBombHere: false, value: 368, isReleased: false),
     FieldInfo(img: "field",id: 369, isFlagHere: false, isBombHere: false, value: 369, isReleased: false),
     FieldInfo(img: "field",id: 370, isFlagHere: false, isBombHere: false, value: 370, isReleased: false),
     FieldInfo(img: "field",id: 371, isFlagHere: false, isBombHere: false, value: 371, isReleased: false),
     FieldInfo(img: "field",id: 372, isFlagHere: false, isBombHere: false, value: 372, isReleased: false),
     FieldInfo(img: "field",id: 373, isFlagHere: false, isBombHere: false, value: 373, isReleased: false),
     FieldInfo(img: "field",id: 374, isFlagHere: false, isBombHere: false, value: 374, isReleased: false),
     FieldInfo(img: "field",id: 375, isFlagHere: false, isBombHere: false, value: 375, isReleased: false),
     FieldInfo(img: "field",id: 376, isFlagHere: false, isBombHere: false, value: 376, isReleased: false),
     FieldInfo(img: "field",id: 377, isFlagHere: false, isBombHere: false, value: 377, isReleased: false),
     FieldInfo(img: "field",id: 378, isFlagHere: false, isBombHere: false, value: 378, isReleased: false),
     FieldInfo(img: "field",id: 379, isFlagHere: false, isBombHere: false, value: 379, isReleased: false),
     FieldInfo(img: "field",id: 380, isFlagHere: false, isBombHere: false, value: 380, isReleased: false),
     FieldInfo(img: "field",id: 381, isFlagHere: false, isBombHere: false, value: 381, isReleased: false),
     FieldInfo(img: "field",id: 382, isFlagHere: false, isBombHere: false, value: 382, isReleased: false),
     FieldInfo(img: "field",id: 383, isFlagHere: false, isBombHere: false, value: 383, isReleased: false),
     FieldInfo(img: "field",id: 384, isFlagHere: false, isBombHere: false, value: 384, isReleased: false),
     FieldInfo(img: "field",id: 385, isFlagHere: false, isBombHere: false, value: 385, isReleased: false),
     FieldInfo(img: "field",id: 386, isFlagHere: false, isBombHere: false, value: 386, isReleased: false),
     FieldInfo(img: "field",id: 387, isFlagHere: false, isBombHere: false, value: 387, isReleased: false),
     FieldInfo(img: "field",id: 388, isFlagHere: false, isBombHere: false, value: 388, isReleased: false),
     FieldInfo(img: "field",id: 389, isFlagHere: false, isBombHere: false, value: 389, isReleased: false),
     FieldInfo(img: "field",id: 390, isFlagHere: false, isBombHere: false, value: 390, isReleased: false),
     FieldInfo(img: "field",id: 391, isFlagHere: false, isBombHere: false, value: 391, isReleased: false),
     FieldInfo(img: "field",id: 392, isFlagHere: false, isBombHere: false, value: 392, isReleased: false),
     FieldInfo(img: "field",id: 393, isFlagHere: false, isBombHere: false, value: 393, isReleased: false),
     FieldInfo(img: "field",id: 394, isFlagHere: false, isBombHere: false, value: 394, isReleased: false),
     FieldInfo(img: "field",id: 395, isFlagHere: false, isBombHere: false, value: 395, isReleased: false),
     FieldInfo(img: "field",id: 396, isFlagHere: false, isBombHere: false, value: 396, isReleased: false),
     FieldInfo(img: "field",id: 397, isFlagHere: false, isBombHere: false, value: 397, isReleased: false),
     FieldInfo(img: "field",id: 398, isFlagHere: false, isBombHere: false, value: 398, isReleased: false),
     FieldInfo(img: "field",id: 399, isFlagHere: false, isBombHere: false, value: 399, isReleased: false),
     FieldInfo(img: "field",id: 400, isFlagHere: false, isBombHere: false, value: 400, isReleased: false),
     FieldInfo(img: "field",id: 401, isFlagHere: false, isBombHere: false, value: 401, isReleased: false),
     FieldInfo(img: "field",id: 402, isFlagHere: false, isBombHere: false, value: 402, isReleased: false),
     FieldInfo(img: "field",id: 403, isFlagHere: false, isBombHere: false, value: 403, isReleased: false),
     FieldInfo(img: "field",id: 404, isFlagHere: false, isBombHere: false, value: 404, isReleased: false),
     FieldInfo(img: "field",id: 405, isFlagHere: false, isBombHere: false, value: 405, isReleased: false),
     FieldInfo(img: "field",id: 406, isFlagHere: false, isBombHere: false, value: 406, isReleased: false),
     FieldInfo(img: "field",id: 407, isFlagHere: false, isBombHere: false, value: 407, isReleased: false),
     FieldInfo(img: "field",id: 408, isFlagHere: false, isBombHere: false, value: 408, isReleased: false),
     FieldInfo(img: "field",id: 409, isFlagHere: false, isBombHere: false, value: 409, isReleased: false),
     FieldInfo(img: "field",id: 410, isFlagHere: false, isBombHere: false, value: 410, isReleased: false),
     FieldInfo(img: "field",id: 411, isFlagHere: false, isBombHere: false, value: 411, isReleased: false),
     FieldInfo(img: "field",id: 412, isFlagHere: false, isBombHere: false, value: 412, isReleased: false),
     FieldInfo(img: "field",id: 413, isFlagHere: false, isBombHere: false, value: 413, isReleased: false),
     FieldInfo(img: "field",id: 414, isFlagHere: false, isBombHere: false, value: 414, isReleased: false),
     FieldInfo(img: "field",id: 415, isFlagHere: false, isBombHere: false, value: 415, isReleased: false),
     FieldInfo(img: "field",id: 416, isFlagHere: false, isBombHere: false, value: 416, isReleased: false),
     FieldInfo(img: "field",id: 417, isFlagHere: false, isBombHere: false, value: 417, isReleased: false),
     FieldInfo(img: "field",id: 418, isFlagHere: false, isBombHere: false, value: 418, isReleased: false),
     FieldInfo(img: "field",id: 419, isFlagHere: false, isBombHere: false, value: 419, isReleased: false),
     FieldInfo(img: "field",id: 420, isFlagHere: false, isBombHere: false, value: 420, isReleased: false),
     FieldInfo(img: "field",id: 421, isFlagHere: false, isBombHere: false, value: 421, isReleased: false),
     FieldInfo(img: "field",id: 422, isFlagHere: false, isBombHere: false, value: 422, isReleased: false),
     FieldInfo(img: "field",id: 423, isFlagHere: false, isBombHere: false, value: 423, isReleased: false),
     FieldInfo(img: "field",id: 424, isFlagHere: false, isBombHere: false, value: 424, isReleased: false),
     FieldInfo(img: "field",id: 425, isFlagHere: false, isBombHere: false, value: 425, isReleased: false),
     FieldInfo(img: "field",id: 426, isFlagHere: false, isBombHere: false, value: 426, isReleased: false),
     FieldInfo(img: "field",id: 427, isFlagHere: false, isBombHere: false, value: 427, isReleased: false),
     FieldInfo(img: "field",id: 428, isFlagHere: false, isBombHere: false, value: 428, isReleased: false),
     FieldInfo(img: "field",id: 429, isFlagHere: false, isBombHere: false, value: 429, isReleased: false),
     FieldInfo(img: "field",id: 430, isFlagHere: false, isBombHere: false, value: 430, isReleased: false),
     FieldInfo(img: "field",id: 431, isFlagHere: false, isBombHere: false, value: 431, isReleased: false),
     FieldInfo(img: "field",id: 432, isFlagHere: false, isBombHere: false, value: 432, isReleased: false),
     FieldInfo(img: "field",id: 433, isFlagHere: false, isBombHere: false, value: 433, isReleased: false),
     FieldInfo(img: "field",id: 434, isFlagHere: false, isBombHere: false, value: 434, isReleased: false),
     FieldInfo(img: "field",id: 435, isFlagHere: false, isBombHere: false, value: 435, isReleased: false),
     FieldInfo(img: "field",id: 436, isFlagHere: false, isBombHere: false, value: 436, isReleased: false),
     FieldInfo(img: "field",id: 437, isFlagHere: false, isBombHere: false, value: 437, isReleased: false),
     FieldInfo(img: "field",id: 438, isFlagHere: false, isBombHere: false, value: 438, isReleased: false),
     FieldInfo(img: "field",id: 439, isFlagHere: false, isBombHere: false, value: 439, isReleased: false),
     FieldInfo(img: "field",id: 440, isFlagHere: false, isBombHere: false, value: 440, isReleased: false),
     FieldInfo(img: "field",id: 441, isFlagHere: false, isBombHere: false, value: 441, isReleased: false),
     FieldInfo(img: "field",id: 442, isFlagHere: false, isBombHere: false, value: 442, isReleased: false),
     FieldInfo(img: "field",id: 443, isFlagHere: false, isBombHere: false, value: 443, isReleased: false),
     FieldInfo(img: "field",id: 444, isFlagHere: false, isBombHere: false, value: 444, isReleased: false),
     FieldInfo(img: "field",id: 445, isFlagHere: false, isBombHere: false, value: 445, isReleased: false),
     FieldInfo(img: "field",id: 446, isFlagHere: false, isBombHere: false, value: 446, isReleased: false),
     FieldInfo(img: "field",id: 447, isFlagHere: false, isBombHere: false, value: 447, isReleased: false),
     FieldInfo(img: "field",id: 448, isFlagHere: false, isBombHere: false, value: 448, isReleased: false),
     FieldInfo(img: "field",id: 449, isFlagHere: false, isBombHere: false, value: 449, isReleased: false),
     FieldInfo(img: "field",id: 450, isFlagHere: false, isBombHere: false, value: 450, isReleased: false),
     FieldInfo(img: "field",id: 451, isFlagHere: false, isBombHere: false, value: 451, isReleased: false),
     FieldInfo(img: "field",id: 452, isFlagHere: false, isBombHere: false, value: 452, isReleased: false),
     FieldInfo(img: "field",id: 453, isFlagHere: false, isBombHere: false, value: 453, isReleased: false),
     FieldInfo(img: "field",id: 454, isFlagHere: false, isBombHere: false, value: 454, isReleased: false),
     FieldInfo(img: "field",id: 455, isFlagHere: false, isBombHere: false, value: 455, isReleased: false),
     FieldInfo(img: "field",id: 456, isFlagHere: false, isBombHere: false, value: 456, isReleased: false),
     FieldInfo(img: "field",id: 457, isFlagHere: false, isBombHere: false, value: 457, isReleased: false),
     FieldInfo(img: "field",id: 458, isFlagHere: false, isBombHere: false, value: 458, isReleased: false),
     FieldInfo(img: "field",id: 459, isFlagHere: false, isBombHere: false, value: 459, isReleased: false),
     FieldInfo(img: "field",id: 460, isFlagHere: false, isBombHere: false, value: 460, isReleased: false),
     FieldInfo(img: "field",id: 461, isFlagHere: false, isBombHere: false, value: 461, isReleased: false),
     FieldInfo(img: "field",id: 462, isFlagHere: false, isBombHere: false, value: 462, isReleased: false),
     FieldInfo(img: "field",id: 463, isFlagHere: false, isBombHere: false, value: 463, isReleased: false),
     FieldInfo(img: "field",id: 464, isFlagHere: false, isBombHere: false, value: 464, isReleased: false),
     FieldInfo(img: "field",id: 465, isFlagHere: false, isBombHere: false, value: 465, isReleased: false),
     FieldInfo(img: "field",id: 466, isFlagHere: false, isBombHere: false, value: 466, isReleased: false),
     FieldInfo(img: "field",id: 467, isFlagHere: false, isBombHere: false, value: 467, isReleased: false),
     FieldInfo(img: "field",id: 468, isFlagHere: false, isBombHere: false, value: 468, isReleased: false),
     FieldInfo(img: "field",id: 469, isFlagHere: false, isBombHere: false, value: 469, isReleased: false),
     FieldInfo(img: "field",id: 470, isFlagHere: false, isBombHere: false, value: 470, isReleased: false),
     FieldInfo(img: "field",id: 471, isFlagHere: false, isBombHere: false, value: 471, isReleased: false),
     FieldInfo(img: "field",id: 472, isFlagHere: false, isBombHere: false, value: 472, isReleased: false),
     FieldInfo(img: "field",id: 473, isFlagHere: false, isBombHere: false, value: 473, isReleased: false),
     FieldInfo(img: "field",id: 474, isFlagHere: false, isBombHere: false, value: 474, isReleased: false),
     FieldInfo(img: "field",id: 475, isFlagHere: false, isBombHere: false, value: 475, isReleased: false),
     FieldInfo(img: "field",id: 476, isFlagHere: false, isBombHere: false, value: 476, isReleased: false),
     FieldInfo(img: "field",id: 477, isFlagHere: false, isBombHere: false, value: 477, isReleased: false),
     FieldInfo(img: "field",id: 478, isFlagHere: false, isBombHere: false, value: 478, isReleased: false),
     FieldInfo(img: "field",id: 479, isFlagHere: false, isBombHere: false, value: 479, isReleased: false),
     FieldInfo(img: "field",id: 480, isFlagHere: false, isBombHere: false, value: 480, isReleased: false),
     ]
    
    
    //Defeat
    func endOfGameDefeat(i: Int){
        for index in 0...fSize_1{
            field[index].isReleased = true;
            field[index].img = String(field[index].value+diffLVL)
            if field[index].isBombHere{
                field[index].img = bombLVL
           }
        }
        field[i].img = bmbdftLVL
        sun = "sunU"
    }
    
    
    //TAPING
    func tapGEST(i: Int){
        if sun == "sunGlassed" || sun == "sunU"{
            //nothing todo when game is lost/won
        }else{
        
            if !self.field[i].isFlagHere{
                if self.field[i].isBombHere{
                    self.field[i].img = bmbdftLVL
                    endOfGameDefeat(i: i);
                }
                else{
                    self.field[i].img = String(self.field[i].value+diffLVL)
                    self.field[i].isReleased = true
                    if self.field[i].value ==  0 {
                        clickEmptyFields(i: i)
                        clickEmptyFields(i: i) //just for surex2
                    }
                    checkWin()
                }
            }
        }
    }
    
    //HOLDING
    func holdGest(i: Int){
        if sun == "sunGlassed" || sun == "sunU"{
            //nothing todo when game is lost/won
        }else{
            
            if !self.field[i].isReleased{
                
                if !self.field[i].isFlagHere{
                    self.field[i].img = flagLVL
                    self.field[i].isFlagHere = true
                    flagCount += 1
                }
                else{
                    self.field[i].img = fldLVL
                    self.field[i].isFlagHere = false
                    flagCount -= 1
                }
            }
        }
    }
    
    //Setting UP Fields...
    func changeFieldEasy(){
        for x in 0...80{
            field[x].img = "fieldORG"
        }
        bmbdftLVL = "bombDefeatORG"
        fldLVL = "fieldORG"
        flagLVL = "flagORG"
        bombLVL = "bombORG"
    }
    func changeFieldMedium(){
        for x in 0...256{
            field[x].img = "field05"
        }
        bmbdftLVL = "bombDefeat2"
        fldLVL = "field05"
        flagLVL = "flag2"
        bombLVL = "bomb2"
    }
    func changeFieldHard(){
        for x in 0...480{
            field[x].img = "field"
        }
        bmbdftLVL = "bombDefeat3"
        fldLVL = "field"
        flagLVL = "flag3"
        bombLVL = "bomb3"
    }
    
    //Checking Difficulty
    func checkDiff(){
        if buttonEasy{
            bombCount = 10
            fSize = 81
            fSize_1 = 80 //to iterate
            fSizeUnbmb = 71
            boardWidth = 9
            edgeB = 72
            diffLVL = 0
            changeFieldEasy()
        }
        if buttonMedium{
            bombCount = 40
            fSize = 256
            fSize_1 = 255
            fSizeUnbmb = 216
            boardWidth = 16
            edgeB = 241
            diffLVL = 600
            changeFieldMedium()
        }
        if buttonHard{
            bombCount = 100
            fSize = 480
            fSize_1 = 479
            fSizeUnbmb = 380
            boardWidth = 20
            edgeB = 460
            diffLVL = 700
            changeFieldHard()
        }
    }
    
    //Restarting Game
    func reStart(){
        sun = "sunH"
        bombCount = 0
        fSize = 0
        fSizeUnbmb = 0
        fSize_1 = 0
        boardWidth = 0
        fSizep1 = 0
        edgeB = 0
        counterOfReleased = 0
        flagCount = 0
        
        if buttonEasy{
            for x in 0...80{
                field[x].img = "fieldORG"
                field[x].isFlagHere = false
                field[x].isBombHere = false
                field[x].value = x
                field[x].isReleased = false
            }
        }
        if buttonMedium{
            for x in 0...256{
                field[x].img = "field05"
                field[x].isFlagHere = false
                field[x].isBombHere = false
                field[x].value = x
                field[x].isReleased = false
            }
           
        }
        if buttonHard{
            for x in 0...480{
                field[x].img = "field"
                field[x].isFlagHere = false
                field[x].isBombHere = false
                field[x].value = x
                field[x].isReleased = false
            }
        }
        startGame()
    }

    //Start-Loading
    func startGame(){
        checkDiff()
        randomSeed()
    }
    
    //Check if win
    func checkWin(){
        counterOfReleased = 0
        print(counterOfReleased)
        for z in 0...fSize_1{
            if field[z].isReleased{
                print("zw")
                counterOfReleased += 1
            }
        }
        
        if counterOfReleased == fSizeUnbmb{
            sun = "sunGlassed"
        }
    }
    
    //put the bombs
    func randomSeed(){
        var ite = 0
        while (ite<bombCount){
            let randomNumber = Int.random(in: 0..<fSize)
            if !field[randomNumber].isBombHere{
                field[randomNumber].isBombHere = true
                ite += 1
                field[randomNumber].value = 1000
            }
        }
        checkNeighborFields()
       
    }
    
    //releasing empty fields
    func clickEmptyFields(i: Int){
        
        var _iter = 0;
        
        for _iter in 0...fSize_1{
            if field[_iter].value == 0 && field[_iter].isReleased{
            //LEFT SIDE
            if _iter == 0{
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
            }
            if _iter%boardWidth == 0 && _iter<edgeB{
                if _iter != 0 {
                    if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                    if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                    if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
                    if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                    if !field[_iter-boardWidth+1].isFlagHere {field[_iter-boardWidth+1].img = String(field[_iter-boardWidth+1].value+diffLVL); field[_iter-boardWidth+1].isReleased = true}
                }
            }
            if _iter == edgeB{
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth+1].isFlagHere {field[_iter-boardWidth+1].img = String(field[_iter-boardWidth+1].value+diffLVL); field[_iter-boardWidth+1].isReleased = true}
            }
            //RIGHT SIDE
            if _iter == boardWidth-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
            }
            if _iter%boardWidth == boardWidth-1 && _iter<edgeB{
                if _iter != boardWidth-1{
                    if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                    if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                    if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
                    if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                    if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
                }
            
            }
            if _iter == fSize-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
            }
            
            //Upper Row
            if _iter<boardWidth-1 && _iter != 0{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
            }
            
            //Bottom Row
            if _iter>edgeB && _iter != fSize-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
            }
            
            //Rest
            if _iter > boardWidth && _iter < edgeB{
                if _iter%boardWidth != 0 && _iter%boardWidth != boardWidth-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter-boardWidth+1].isFlagHere {field[_iter-boardWidth+1].img = String(field[_iter-boardWidth+1].value+diffLVL); field[_iter-boardWidth+1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
                if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
                }
            }
        }
        }
    ///now reverse....
        _iter = 0
        
        for _iter in (0...fSize_1).reversed(){
            if field[_iter].value == 0 && field[_iter].isReleased{
            //LEFT SIDE
            if _iter == 0{
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
            }
            if _iter%boardWidth == 0 && _iter<edgeB{
                if _iter != 0 {
                    if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                    if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                    if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
                    if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                    if !field[_iter-boardWidth+1].isFlagHere {field[_iter-boardWidth+1].img = String(field[_iter-boardWidth+1].value+diffLVL); field[_iter-boardWidth+1].isReleased = true}
                }
            }
            if _iter == edgeB{
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth+1].isFlagHere {field[_iter-boardWidth+1].img = String(field[_iter-boardWidth+1].value+diffLVL); field[_iter-boardWidth+1].isReleased = true}
            }
            //RIGHT SIDE
            if _iter == boardWidth-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
            }
            if _iter%boardWidth == boardWidth-1 && _iter<edgeB{
                if _iter != boardWidth-1{
                    if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                    if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                    if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
                    if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                    if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
                }
            
            }
            if _iter == fSize-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
            }
            
            //Upper Row
            if _iter<boardWidth-1 && _iter != 0{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
            }
            
            //Bottom Row
            if _iter>edgeB && _iter != fSize-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
            }
            
            //Rest
            if _iter > boardWidth && _iter < edgeB{
                if _iter%boardWidth != 0 && _iter%boardWidth != boardWidth-1{
                if !field[_iter-1].isFlagHere {field[_iter-1].img = String(field[_iter-1].value+diffLVL); field[_iter-1].isReleased = true}
                if !field[_iter+1].isFlagHere {field[_iter+1].img = String(field[_iter+1].value+diffLVL); field[_iter+1].isReleased = true}
                if !field[_iter-boardWidth+1].isFlagHere {field[_iter-boardWidth+1].img = String(field[_iter-boardWidth+1].value+diffLVL); field[_iter-boardWidth+1].isReleased = true}
                if !field[_iter-boardWidth].isFlagHere {field[_iter-boardWidth].img = String(field[_iter-boardWidth].value+diffLVL); field[_iter-boardWidth].isReleased = true}
                if !field[_iter-boardWidth-1].isFlagHere {field[_iter-boardWidth-1].img = String(field[_iter-boardWidth-1].value+diffLVL); field[_iter-boardWidth-1].isReleased = true}
                if !field[_iter+boardWidth-1].isFlagHere {field[_iter+boardWidth-1].img = String(field[_iter+boardWidth-1].value+diffLVL); field[_iter+boardWidth-1].isReleased = true}
                if !field[_iter+boardWidth].isFlagHere {field[_iter+boardWidth].img = String(field[_iter+boardWidth].value+diffLVL); field[_iter+boardWidth].isReleased = true}
                if !field[_iter+boardWidth+1].isFlagHere {field[_iter+boardWidth+1].img = String(field[_iter+boardWidth+1].value+diffLVL); field[_iter+boardWidth+1].isReleased = true}
                }
            }
        }
        }
        
    }
    
    //Counting Fields/Bombs
    func checkNeighborFields(){
        var _iter = 0;
        var counterOfThisField = 0
        for _ in 0...fSize_1{
            if !field[_iter].isBombHere{//if there's no bomb on this field
                //LEFT SIDE
                if _iter == 0{
                    if field[_iter+1].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth+1].isBombHere {counterOfThisField += 1}
                }
                if _iter%boardWidth == 0 && _iter<edgeB{
                    if _iter != 0 {
                        if field[_iter+1].isBombHere {counterOfThisField += 1}
                        if field[_iter+boardWidth].isBombHere {counterOfThisField += 1}
                        if field[_iter+boardWidth+1].isBombHere {counterOfThisField += 1}
                        if field[_iter-boardWidth].isBombHere {counterOfThisField += 1}
                        if field[_iter-boardWidth+1].isBombHere {counterOfThisField += 1}
                    }
                }
                if _iter == edgeB{
                    if field[_iter+1].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth+1].isBombHere {counterOfThisField += 1}
                }
                //RIGHT SIDE
                if _iter == boardWidth-1{
                    if field[_iter-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth-1].isBombHere {counterOfThisField += 1}
                }
                if _iter%boardWidth == boardWidth-1 && _iter<edgeB{
                    if _iter != boardWidth-1{
                        if field[_iter-1].isBombHere {counterOfThisField += 1}
                        if field[_iter+boardWidth].isBombHere {counterOfThisField += 1}
                        if field[_iter+boardWidth-1].isBombHere {counterOfThisField += 1}
                        if field[_iter-boardWidth].isBombHere {counterOfThisField += 1}
                        if field[_iter-boardWidth-1].isBombHere {counterOfThisField += 1}
                    }
                
                }
                if _iter == fSize-1{
                    if field[_iter-1].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth-1].isBombHere {counterOfThisField += 1}
                }
                
                //Upper Row
                if _iter<boardWidth-1 && _iter != 0{
                    if field[_iter-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+1].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth+1].isBombHere {counterOfThisField += 1}
                }
                
                //Bottom Row
                if _iter>edgeB && _iter != fSize-1{
                    if field[_iter-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+1].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth+1].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth-1].isBombHere {counterOfThisField += 1}
                }
                
                //Rest
                if _iter > boardWidth && _iter < edgeB{
                    if _iter%boardWidth != 0 && _iter%boardWidth != boardWidth-1{
                    if field[_iter-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+1].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth+1].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter-boardWidth-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth-1].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth].isBombHere {counterOfThisField += 1}
                    if field[_iter+boardWidth+1].isBombHere {counterOfThisField += 1}
                    }
                }
                
               //Think it works just fine
               //without exceeding index ranges
            }
            print(counterOfThisField);
            field[_iter].value = counterOfThisField;
            counterOfThisField = 0;
            _iter += 1;
        }
        
    }
    
    
    //presets
    @State var showDetails = false
    @State var buttonEasy = false
    @State var buttonMedium = false
    @State var buttonHard = false
    @State var firstScreen = true
    
    var body: some View {

    VStack{
        
        
        VStack{
          
            HStack{
                 if !firstScreen{
                Text("    \(counterOfReleased)/\(fSizeUnbmb)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                

                
                    Spacer();
                    Image(sun)
                        .onTapGesture {
                            self.reStart()
                    }
                    Spacer();
                    
                    Image("flagtransparent")
                    Text("\(flagCount)    ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    Text("X")
                    .onTapGesture {
                            exit(0)
                    }
                }
            }
               
            .padding(.vertical, 30.0)
           

            if buttonEasy{
        HStack{
        Image(field[0].img).onTapGesture {self.tapGEST(i: 0)} .onLongPressGesture {self.holdGest(i: 0)}
        Image(field[1].img).onTapGesture {self.tapGEST(i: 1)} .onLongPressGesture {self.holdGest(i: 1)}
        Image(field[2].img).onTapGesture {self.tapGEST(i: 2)} .onLongPressGesture {self.holdGest(i: 2)}
        Image(field[3].img).onTapGesture {self.tapGEST(i: 3)} .onLongPressGesture {self.holdGest(i: 3)}
        Image(field[4].img).onTapGesture {self.tapGEST(i: 4)} .onLongPressGesture {self.holdGest(i: 4)}
        Image(field[5].img).onTapGesture {self.tapGEST(i: 5)} .onLongPressGesture {self.holdGest(i: 5)}
        Image(field[6].img).onTapGesture {self.tapGEST(i: 6)} .onLongPressGesture {self.holdGest(i: 6)}
        Image(field[7].img).onTapGesture {self.tapGEST(i: 7)} .onLongPressGesture {self.holdGest(i: 7)}
        Image(field[8].img).onTapGesture {self.tapGEST(i: 8)} .onLongPressGesture {self.holdGest(i: 8)}
        }
            
        HStack
        {
        Image(field[9].img).onTapGesture {self.tapGEST(i: 9)} .onLongPressGesture {self.holdGest(i: 9)}
        Image(field[10].img).onTapGesture {self.tapGEST(i: 10)} .onLongPressGesture {self.holdGest(i: 10)}
        Image(field[11].img).onTapGesture {self.tapGEST(i: 11)} .onLongPressGesture {self.holdGest(i: 11)}
        Image(field[12].img).onTapGesture {self.tapGEST(i: 12)} .onLongPressGesture {self.holdGest(i: 12)}
        Image(field[13].img).onTapGesture {self.tapGEST(i: 13)} .onLongPressGesture {self.holdGest(i: 13)}
        Image(field[14].img).onTapGesture {self.tapGEST(i: 14)} .onLongPressGesture {self.holdGest(i: 14)}
        Image(field[15].img).onTapGesture {self.tapGEST(i: 15)} .onLongPressGesture {self.holdGest(i: 15)}
        Image(field[16].img).onTapGesture {self.tapGEST(i: 16)} .onLongPressGesture {self.holdGest(i: 16)}
        Image(field[17].img).onTapGesture {self.tapGEST(i: 17)} .onLongPressGesture {self.holdGest(i: 17)}
        }
        HStack
        {
        Image(field[18].img).onTapGesture {self.tapGEST(i: 18)} .onLongPressGesture {self.holdGest(i: 18)}
        Image(field[19].img).onTapGesture {self.tapGEST(i: 19)} .onLongPressGesture {self.holdGest(i: 19)}
        Image(field[20].img).onTapGesture {self.tapGEST(i: 20)} .onLongPressGesture {self.holdGest(i: 20)}
        Image(field[21].img).onTapGesture {self.tapGEST(i: 21)} .onLongPressGesture {self.holdGest(i: 21)}
        Image(field[22].img).onTapGesture {self.tapGEST(i: 22)} .onLongPressGesture {self.holdGest(i: 22)}
        Image(field[23].img).onTapGesture {self.tapGEST(i: 23)} .onLongPressGesture {self.holdGest(i: 23)}
        Image(field[24].img).onTapGesture {self.tapGEST(i: 24)} .onLongPressGesture {self.holdGest(i: 24)}
        Image(field[25].img).onTapGesture {self.tapGEST(i: 25)} .onLongPressGesture {self.holdGest(i: 25)}
        Image(field[26].img).onTapGesture {self.tapGEST(i: 26)} .onLongPressGesture {self.holdGest(i: 26)}
        }
        HStack
        {
        Image(field[27].img).onTapGesture {self.tapGEST(i: 27)} .onLongPressGesture {self.holdGest(i: 27)}
        Image(field[28].img).onTapGesture {self.tapGEST(i: 28)} .onLongPressGesture {self.holdGest(i: 28)}
        Image(field[29].img).onTapGesture {self.tapGEST(i: 29)} .onLongPressGesture {self.holdGest(i: 29)}
        Image(field[30].img).onTapGesture {self.tapGEST(i: 30)} .onLongPressGesture {self.holdGest(i: 30)}
        Image(field[31].img).onTapGesture {self.tapGEST(i: 31)} .onLongPressGesture {self.holdGest(i: 31)}
        Image(field[32].img).onTapGesture {self.tapGEST(i: 32)} .onLongPressGesture {self.holdGest(i: 32)}
        Image(field[33].img).onTapGesture {self.tapGEST(i: 33)} .onLongPressGesture {self.holdGest(i: 33)}
        Image(field[34].img).onTapGesture {self.tapGEST(i: 34)} .onLongPressGesture {self.holdGest(i: 34)}
        Image(field[35].img).onTapGesture {self.tapGEST(i: 35)} .onLongPressGesture {self.holdGest(i: 35)}
        }
        HStack
        {
        Image(field[36].img).onTapGesture {self.tapGEST(i: 36)} .onLongPressGesture {self.holdGest(i: 36)}
        Image(field[37].img).onTapGesture {self.tapGEST(i: 37)} .onLongPressGesture {self.holdGest(i: 37)}
        Image(field[38].img).onTapGesture {self.tapGEST(i: 38)} .onLongPressGesture {self.holdGest(i: 38)}
        Image(field[39].img).onTapGesture {self.tapGEST(i: 39)} .onLongPressGesture {self.holdGest(i: 39)}
        Image(field[40].img).onTapGesture {self.tapGEST(i: 40)} .onLongPressGesture {self.holdGest(i: 40)}
        Image(field[41].img).onTapGesture {self.tapGEST(i: 41)} .onLongPressGesture {self.holdGest(i: 41)}
        Image(field[42].img).onTapGesture {self.tapGEST(i: 42)} .onLongPressGesture {self.holdGest(i: 42)}
        Image(field[43].img).onTapGesture {self.tapGEST(i: 43)} .onLongPressGesture {self.holdGest(i: 43)}
        Image(field[44].img).onTapGesture {self.tapGEST(i: 44)} .onLongPressGesture {self.holdGest(i: 44)}
        }
        HStack
        {
        Image(field[45].img).onTapGesture {self.tapGEST(i: 45)} .onLongPressGesture {self.holdGest(i: 45)}
        Image(field[46].img).onTapGesture {self.tapGEST(i: 46)} .onLongPressGesture {self.holdGest(i: 46)}
        Image(field[47].img).onTapGesture {self.tapGEST(i: 47)} .onLongPressGesture {self.holdGest(i: 47)}
        Image(field[48].img).onTapGesture {self.tapGEST(i: 48)} .onLongPressGesture {self.holdGest(i: 48)}
        Image(field[49].img).onTapGesture {self.tapGEST(i: 49)} .onLongPressGesture {self.holdGest(i: 49)}
        Image(field[50].img).onTapGesture {self.tapGEST(i: 50)} .onLongPressGesture {self.holdGest(i: 50)}
        Image(field[51].img).onTapGesture {self.tapGEST(i: 51)} .onLongPressGesture {self.holdGest(i: 51)}
        Image(field[52].img).onTapGesture {self.tapGEST(i: 52)} .onLongPressGesture {self.holdGest(i: 52)}
        Image(field[53].img).onTapGesture {self.tapGEST(i: 53)} .onLongPressGesture {self.holdGest(i: 53)}
        }
        HStack
        {
        Image(field[54].img).onTapGesture {self.tapGEST(i: 54)} .onLongPressGesture {self.holdGest(i: 54)}
        Image(field[55].img).onTapGesture {self.tapGEST(i: 55)} .onLongPressGesture {self.holdGest(i: 55)}
        Image(field[56].img).onTapGesture {self.tapGEST(i: 56)} .onLongPressGesture {self.holdGest(i: 56)}
        Image(field[57].img).onTapGesture {self.tapGEST(i: 57)} .onLongPressGesture {self.holdGest(i: 57)}
        Image(field[58].img).onTapGesture {self.tapGEST(i: 58)} .onLongPressGesture {self.holdGest(i: 58)}
        Image(field[59].img).onTapGesture {self.tapGEST(i: 59)} .onLongPressGesture {self.holdGest(i: 59)}
        Image(field[60].img).onTapGesture {self.tapGEST(i: 60)} .onLongPressGesture {self.holdGest(i: 60)}
        Image(field[61].img).onTapGesture {self.tapGEST(i: 61)} .onLongPressGesture {self.holdGest(i: 61)}
        Image(field[62].img).onTapGesture {self.tapGEST(i: 62)} .onLongPressGesture {self.holdGest(i: 62)}
        }
        HStack
        {
        Image(field[63].img).onTapGesture {self.tapGEST(i: 63)} .onLongPressGesture {self.holdGest(i: 63)}
        Image(field[64].img).onTapGesture {self.tapGEST(i: 64)} .onLongPressGesture {self.holdGest(i: 64)}
        Image(field[65].img).onTapGesture {self.tapGEST(i: 65)} .onLongPressGesture {self.holdGest(i: 65)}
        Image(field[66].img).onTapGesture {self.tapGEST(i: 66)} .onLongPressGesture {self.holdGest(i: 66)}
        Image(field[67].img).onTapGesture {self.tapGEST(i: 67)} .onLongPressGesture {self.holdGest(i: 67)}
        Image(field[68].img).onTapGesture {self.tapGEST(i: 68)} .onLongPressGesture {self.holdGest(i: 68)}
        Image(field[69].img).onTapGesture {self.tapGEST(i: 69)} .onLongPressGesture {self.holdGest(i: 69)}
        Image(field[70].img).onTapGesture {self.tapGEST(i: 70)} .onLongPressGesture {self.holdGest(i: 70)}
        Image(field[71].img).onTapGesture {self.tapGEST(i: 71)} .onLongPressGesture {self.holdGest(i: 71)}
        }
        HStack
        {
        Image(field[72].img).onTapGesture {self.tapGEST(i: 72)} .onLongPressGesture {self.holdGest(i: 72)}
        Image(field[73].img).onTapGesture {self.tapGEST(i: 73)} .onLongPressGesture {self.holdGest(i: 73)}
        Image(field[74].img).onTapGesture {self.tapGEST(i: 74)} .onLongPressGesture {self.holdGest(i: 74)}
        Image(field[75].img).onTapGesture {self.tapGEST(i: 75)} .onLongPressGesture {self.holdGest(i: 75)}
        Image(field[76].img).onTapGesture {self.tapGEST(i: 76)} .onLongPressGesture {self.holdGest(i: 76)}
        Image(field[77].img).onTapGesture {self.tapGEST(i: 77)} .onLongPressGesture {self.holdGest(i: 77)}
        Image(field[78].img).onTapGesture {self.tapGEST(i: 78)} .onLongPressGesture {self.holdGest(i: 78)}
        Image(field[79].img).onTapGesture {self.tapGEST(i: 79)} .onLongPressGesture {self.holdGest(i: 79)}
        Image(field[80].img).onTapGesture {self.tapGEST(i: 80)} .onLongPressGesture {self.holdGest(i: 80)}
        }
        
    }//*******
            if buttonMedium{
               
                VStack{
                    Group{
                HStack{
                Group{
                    ForEach(0..<8) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(8..<16) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(16..<24) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(24..<32) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                    }
                    Group{
                HStack{
                Group{
                    ForEach(32..<40) { i in
                    Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(40..<48) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(48..<56) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(56..<64) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(64..<72) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(72..<80) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                    }
                    VStack{
                HStack{
                Group{
                    ForEach(80..<88) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(88..<96) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(96..<104) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(104..<112) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(112..<120) { i in
                    Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(120..<128) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(128..<136) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(136..<144) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(144..<152) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(152..<160) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(160..<168) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(168..<176) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(176..<184) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(184..<192) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(192..<200) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(200..<208) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(208..<216) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(216..<224) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                        Group{
                HStack{
                Group{
                    ForEach(224..<232) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(232..<240) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(240..<248) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(248..<256) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                    
                                }
                            }

            }////******/
            }
        }
        
        //HARD
        if buttonHard {
            VStack{
                        Group{
                    HStack{
                    Group{
                        ForEach(0..<10) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(10..<20) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(20..<30) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(30..<40) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                        }
                        Group{
                    HStack{
                    Group{
                        ForEach(40..<50) { i in
                        Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(50..<60) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(60..<70) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(70..<80) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(80..<90) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(90..<100) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                        }
                        VStack{
                    HStack{
                    Group{
                        ForEach(100..<110) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(110..<120) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(120..<130) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(130..<140) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(140..<150) { i in
                        Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(150..<160) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(160..<170) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(170..<180) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(180..<190) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(190..<200) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(200..<210) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(210..<220) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(220..<230) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(230..<240) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(240..<250) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(250..<260) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(260..<270) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(270..<280) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                            Group{
                    HStack{
                    Group{
                        ForEach(280..<290) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(290..<300) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                    HStack{
                    Group{
                        ForEach(300..<310) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    Group{
                        ForEach(310..<320) { i in
                         Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                        }
                    }
                    }
                        
                                    }
                                }
                HStack{
                Group{
                    ForEach(320..<330) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(330..<340) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(340..<350) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(350..<360) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                    }
                    Group{
                HStack{
                Group{
                    ForEach(360..<370) { i in
                    Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(370..<380) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(380..<390) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(390..<400) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(400..<410) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(410..<420) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                    }
                    VStack{
                HStack{
                Group{
                    ForEach(420..<430) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(430..<440) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(440..<450) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(450..<460) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }
                HStack{
                Group{
                    ForEach(460..<470) { i in
                    Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                Group{
                    ForEach(470..<480) { i in
                     Image(self.field[i].img).onTapGesture {self.tapGEST(i: i)} .onLongPressGesture {self.holdGest(i: i)}
                    }
                }
                }

           
            }
        }
        HStack{

            Spacer()
        //
            if firstScreen{
                if buttonEasy == false{
                    Button(action: {self.buttonEasy.toggle()
                        self.firstScreen = false
                        self.startGame()
                    }) {
                        Text("EASY - 10 Bombs")
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        Image("601")
                        .renderingMode(.original)
                       
                }
                    Spacer()
                    Button(action: {self.buttonMedium.toggle()
                        self.firstScreen = false
                        self.startGame()
                    }) {
                            Text("Medium - 40 Bombs")
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                        Image("602")
                        .renderingMode(.original)
                           
                    }
                    Spacer()
                    Button(action: {self.buttonHard.toggle()
                        self.firstScreen = false
                        self.startGame()
                    }) {
                        Text("Hard - 100 Bombs")
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        Image("603")
                        .renderingMode(.original)
                    }
                }
            }
               Spacer()
            VStack{
                
                Text("")//

                    
                Spacer()
                
            }
            }
        
                                            
        }.background(Color.gray)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
        .edgesIgnoringSafeArea(.all)
        //.onAppear(perform: startGame)
    

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

