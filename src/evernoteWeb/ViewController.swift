//
//  ViewController.swift
//  evernoteWeb
//
//  Created by Raphael Jordan on 13/04/16.
//  Copyright (c) 2016 Raphael Jordan. All rights reserved.
//

import Cocoa
import WebKit


class ViewController: NSViewController {

    
    @IBOutlet weak var webView: WebView!
    @IBOutlet weak var preload: NSProgressIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let evernote = "https://www.evernote.com/Login.action?targetUrl=%2FHome.action%3Foffer%3Dwww_menu";
        
        self.webView.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: evernote)!))
        
        // Do any additional setup after loading the view.
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    //webViewDidStartLoad
    
    
    
  
    
    override func webView(sender: WebView!, didStartProvisionalLoadForFrame frame: WebFrame!)
    {
        self.preload.startAnimation(self)
        println("load")
    }
    
    override func webView(sender: WebView!, didFinishLoadForFrame frame: WebFrame!)
    {
        self.preload.stopAnimation(self)
        println(" finish")
    }
    
    


}

