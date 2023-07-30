//
//  MainViewModel.swift
//  Swifty
//
//  Created by 김수아 on 2023/07/30.
//  Copyright © 2023 io.github.sooakim. All rights reserved.
//

import Foundation

final class MainViewModel: ObservableObject{
    
    weak var listener: MainPresentableListener?
    
    @Published
    var state: State
    
    init(state: State){
        self.state = state
    }
    
    func action(_ action: Action){
        switch action{
        
        }
    }
}


enum Action{
    
}

struct State{
    
}
