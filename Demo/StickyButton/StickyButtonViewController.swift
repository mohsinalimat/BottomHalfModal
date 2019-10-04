//
//  StickyButtonViewController.swift
//  BottomHalfModalDemo
//
//  Created by masamichi on 2019/09/13.
//  Copyright © 2019 merpay, Inc. All rights reserved.
//

import UIKit
import BottomHalfModal

final class StickyButtonViewController: UIViewController, SheetContentHeightModifiable {

    let sheetContentHeightToModify: CGFloat = SheetContentHeight.default

    init() {
        super.init(nibName: nil, bundle: Bundle(for: StickyButtonViewController.self))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        adjustFrameToSheetContentHeightIfNeeded()
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        adjustFrameToSheetContentHeightIfNeeded(with: coordinator)
    }

    @IBAction private func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
