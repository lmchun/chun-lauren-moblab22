//
//  PageViewController.swift
//  Landmarks
//
//  Created by L C on 2/18/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    func makeUIViewController(context: Context) -> UIPageViewController {
         let pageViewController = UIPageViewController(
             transitionStyle: .scroll,
             navigationOrientation: .horizontal)

         return pageViewController
     }
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
           pageViewController.setViewControllers(
               [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
       }
    
}
