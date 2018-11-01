//
//  ViewController.swift
//  TestGCD
//
//  Created by Trần Đức Anh on 10/29/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        racingData()
        simpleAsyncAfter()
//        serialQueue()
//        simpleConcurrentQueue()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func serialQueue() {
//        //Khai báo
//        let serialQueue = DispatchQueue(label: "com.bigZero.serialQueue")
//        for i in 1...5 {
//            serialQueue.async {                                                 //use Sync or Async for SerialQueue
//                print("task: \(i): - \(Thread.current)")
//                sleep(1)
//            }
//        }
//        print("complete! - \(Thread.current)")
//    }

//    func simpleConcurrentQueue() {
//        let concurrentQueue = DispatchQueue(label: "com.bigZero.concurrentQueue", attributes: .concurrent)
//        for i in 1...10 {
//            concurrentQueue.async {                                             //use Sync or Async for ConcurrentQueue
//                print("Task: \(i) - \(Thread.current)")
//                sleep(1)
//            }
//        }
//        print("Complete! - \(Thread.current)")
//    }
                                                                            //RacingData
    func racingData() {
        let queue = DispatchQueue(label: "com.bigZero.concurrentQueueRacing", attributes: .concurrent)
        var count = 0
        for _ in 1...25000 {
            queue.async {
                count += 1
                print(count)
            }
        }
    }
                                                                            //Dispatch AsyncAfter
    func simpleAsyncAfter() {
        let queue = DispatchQueue(label: "com.bigZero.queue")
        queue.asyncAfter(deadline: .now() + 2) {
            print("Simple asyncAfter")
        }
    }
    
}

