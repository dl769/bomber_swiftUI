//
//  View1.swift
//  swiftUItest
//
//  Created by Dawid on 27/03/2020.
//  Copyright © 2020 Dawid. All rights reserved.
//

import SwiftUI

struct View1: View {
    var body: some View {
        let name = "Paul"
        let message = Text("Hello, \(name)")
        return message
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
