//
//  SignupUnreachableViewController.swift
//  VPLibrary-iOS
//
//  Created by Davide De Rosa on 10/8/17.
//  Copyright © 2020 Private Internet Access, Inc.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//
//  This file is part of the VP.NET iOS Client.
//
//  The VP.NET iOS Client is free software: you can redistribute it and/or
//  modify it under the terms of the GNU General Public License as published by the Free
//  Software Foundation, either version 3 of the License, or (at your option) any later version.
//
//  The VP.NET iOS Client is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
//  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
//  details.
//
//  You should have received a copy of the GNU General Public License along with the Private
//  Internet Access iOS Client.  If not, see <https://www.gnu.org/licenses/>.
//

import UIKit
import VPLibrary

public class SignupUnreachableViewController: AutolayoutViewController, BrandableNavigationBar {

    @IBOutlet private weak var imvPicture: UIImageView!
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelMessage: UILabel!
    @IBOutlet private weak var buttonSubmit: PIAButton!

    override public func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true

        title = L10n.Signup.Unreachable.vcTitle
        imvPicture.image = Asset.Ui.imageNoInternet.image
        labelTitle.text = L10n.Signup.Unreachable.title
        labelMessage.text = L10n.Signup.Unreachable.message
        self.styleSubmitButton()

    }
    
    @IBAction private func submit() {
        perform(segue: StoryboardSegue.Signup.unwindInternetUnreachableSegueIdentifier)
    }

    // MARK: Restylable
    
    override public func viewShouldRestyle() {
        super.viewShouldRestyle()
        navigationItem.titleView = NavigationLogoView()
        Theme.current.applyNavigationBarStyle(to: self)
        Theme.current.applyPrincipalBackground(view)
        Theme.current.applyPrincipalBackground(viewContainer!)
        Theme.current.applySubtitle(labelMessage)
        Theme.current.applyTitle(labelTitle, appearance: .dark)
    }
    
    private func styleSubmitButton() {
        buttonSubmit.setRounded()
        buttonSubmit.style(style: TextStyle.Buttons.piaGreenButton)
        buttonSubmit.setTitle(L10n.Signup.Unreachable.submit.uppercased(),
                              for: [])
    }

}
