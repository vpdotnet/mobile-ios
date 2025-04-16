//
//  MenuItemCell.swift
//  VP VPN
//
//  Created by Davide De Rosa on 12/9/17.
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

class MenuItemCell: UITableViewCell, Restylable {
    @IBOutlet private weak var imvIcon: UIImageView!

    @IBOutlet private weak var labelTitle: UILabel!
    
    func fill(withTitle title: String, icon: UIImage?) {
        viewShouldRestyle()
        
        labelTitle.text = title
        imvIcon.image = icon
    }
    
    func fillVersion(withTitle title: String) {
        viewShouldRestyle()
        Theme.current.applyMenuVersionListStyle(labelTitle)

        labelTitle.text = title
        imvIcon.image = nil
    }


    // MARK: Restylable
    
    func viewShouldRestyle() {
        Theme.current.applyMenuBackground(self)
        Theme.current.applyMenuListStyle(labelTitle)
    }
}
