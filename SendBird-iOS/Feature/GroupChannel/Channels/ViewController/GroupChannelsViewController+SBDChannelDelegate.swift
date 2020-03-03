//
//  GroupChannelsViewController+SBDChannelDelegate.swift
//  SendBird-iOS
//
//  Created by Harry Kim on 2019/12/12.
//  Copyright © 2019 SendBird. All rights reserved.
//

import UIKit
import SendBirdSDK

extension GroupChannelsViewController: SBDChannelDelegate {
    func channelDidUpdateTypingStatus(_ sender: SBDGroupChannel) {
        let timer = Timer.scheduledTimer(timeInterval: 10, target: self,
                                         selector: #selector(GroupChannelsViewController.typingIndicatorTimeout(_ :)),
                                         userInfo: sender.channelUrl, repeats: false)
        
        self.trypingIndicatorTimer[sender.channelUrl]?.invalidate()
        self.trypingIndicatorTimer[sender.channelUrl] = timer
        
        self.reloadChannel(sender)

    }
}
