//
//  ViewController.swift
//  evernoteWeb
//
//  Created by Raphael Jordan on 13/04/16.
//  Copyright (c) 2016 Raphael Jordan. All rights reserved.
//

import Cocoa
import WebKit



class ViewController: NSViewController, WebFrameLoadDelegate, WebPolicyDelegate {

    
    @IBOutlet weak var preload: NSProgressIndicator!
    @IBOutlet weak var webView: WebView!
   // @IBOutlet weak var preload: NSProgressIndicator!
    
    let evernote = "https://www.evernote.com/Login.action?targetUrl=%2FHome.action%3Foffer%3Dwww_menu";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.webView.frameLoadDelegate = self
        self.webView.policyDelegate = self
        self.webView.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: evernote)!))
    }

    override var representedObject: AnyObject? {
        didSet {
        }
    }

    func webView(sender: WebView!, didStartProvisionalLoadForFrame frame: WebFrame!)
    {
        self.preload.startAnimation(self);
        self.preload.hidden = false;
    }
    
    func webView(sender: WebView!, didFinishLoadForFrame frame: WebFrame!)
    {
        self.preload.stopAnimation(self);
        self.preload.hidden = true;
    }
    
}

