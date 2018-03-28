//: Playground - noun: a place where people can play

import UIKit

//Swift规定对象中任何属性在创建对象中必须有明确的初始化

//1、定义可选类型
//方式一、使用Optional<泛型>（不常用）
//var name : Optional<String> = nil;
//方式二、使用问号（?）(常用)
var name : String? = nil;

//给可选类型赋值
name = "William";

//取出可选类型中的值
//1、强制解包 ：可选类型 + !(不常用|强制解包是危险操作)
if name != nil{
    print(name!)
}

//2、可选绑定（常用）
if let name = name{
    print(name)
}








