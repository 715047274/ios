//
//  MessagePresenter.swift
//  ios
//
//  Copyright © 2019 Tinode. All rights reserved.
//

import Foundation

protocol MessagePresentationLogic {
    func presentMessages(messages: [StoredMessage])
    func endRefresh()
}

class MessagePresenter: MessagePresentationLogic {
    weak var viewController: MessageDisplayLogic?
    func presentMessages(messages: [StoredMessage]) {
        self.viewController?.displayChatMessages(messages: messages)
    }
    func endRefresh() {
        self.viewController?.endRefresh()
    }
}
