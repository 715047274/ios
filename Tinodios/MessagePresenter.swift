//
//  MessagePresenter.swift
//  Tinodios
//
//  Copyright © 2019 Tinode. All rights reserved.
//

import Foundation
import UIKit

protocol MessagePresentationLogic {
    func updateTitleBar(icon: UIImage?, title: String?, online: Bool)
    func setOnline(online: Bool)
    func runTypingAnimation()
    func presentMessages(messages: [StoredMessage])
    func reloadMessage(withSeqId seqId: Int)
    func reloadMessage(withMsgId msgId: Int64)
    func applyTopicPermissions()
    func endRefresh()
    func dismiss()
}

class MessagePresenter: MessagePresentationLogic {
    weak var viewController: MessageDisplayLogic?

    func updateTitleBar(icon: UIImage?, title: String?, online: Bool) {
        self.viewController?.updateTitleBar(icon: icon, title: title, online: online)
    }
    func setOnline(online: Bool) {
        self.viewController?.setOnline(online: online)
    }
    func presentMessages(messages: [StoredMessage]) {
        self.viewController?.displayChatMessages(messages: messages)
    }
    func reloadMessage(withSeqId seqId: Int) {
        self.viewController?.reloadMessage(withSeqId: seqId)
    }
    func reloadMessage(withMsgId msgId: Int64) {
        self.viewController?.reloadMessage(withMsgId: msgId)
    }
    func endRefresh() {
        self.viewController?.endRefresh()
    }
    func runTypingAnimation() {
        self.viewController?.runTypingAnimation()
    }
    func applyTopicPermissions() {
        self.viewController?.applyTopicPermissions()
    }
    func dismiss() {
        self.viewController?.dismiss()
    }
}
