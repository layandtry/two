package com.java;

import java.util.ArrayList;

/*
@author:wangmiao
@date:2019/4/23-9:43
快捷键的使用：
1 执行(run) alt+r
2 提示补全 (Class Name Completion) alt+/
3 单行注释 ctrl + /
4 多行注释 ctrl + shift + /
5 向下复制一行 (Duplicate Lines) ctrl+alt+down
6 删除一行或选中行 (delete line) ctrl+d
7 向下移动行(move statement down) alt+down
8 向上移动行(move statement up) alt+up
9 向下开始新的一行(start new line) shift+enter
10 向上开始新的一行 (Start New Line before current) ctrl+shift+enter
11 如何查看源码 (class) ctrl + 选中指定的结构或ctrl + shift + t
12 万能解错/生成返回值变量 alt + enter
13 退回到前一个编辑的页面 (back) alt + left
14 进入到下一个编辑的页面(针对于上条) (forward) alt + right
15 查看继承关系(type hierarchy) F4
16 格式化代码(reformat code) ctrl+shift+F
17 提示方法参数类型(Parameter Info) ctrl+alt+/
18 复制代码 ctrl + c
19 撤销 ctrl + z
20 反撤销 ctrl + y
21 剪切 ctrl + x
22 粘贴 ctrl + v
23 保存 ctrl + s
24 全选 ctrl + a
25 选中数行，整体往后移动 tab
26 选中数行，整体往前移动 shift + tab
27 查看类的结构：类似于 eclipse 的 outline ctrl+o
28 重构：修改变量名与方法名(rename) alt+shift+r
29 大写转小写/小写转大写(toggle case) ctrl+shift+y
30 生成构造器/get/set/toString alt +shift + s
31 查看文档说明(quick documentation) F2
32 收起所有的方法(collapse all) alt + shift + c
33 打开所有方法(expand all) alt+shift+x
34 打开代码所在硬盘文件夹(show in explorer) ctrl+shift+x
35 生成 try-catch 等(surround with) alt+shift+z
36 局部变量抽取为成员变量(introduce field) alt+shift+f
37 查找/替换(当前)ctrl+f
38 查找(全局)ctrl+h
39 查找文件 double Shift
40 查看类的继承结构图(Show UML Diagram) ctrl + shift + u
41 查看方法的多层重写结构(method hierarchy) ctrl+alt+h
42 添加到收藏(add to favorites) ctrl+alt+f
43 抽取方法(Extract Method) alt+shift+m
44 打开最近修改的文件(Recently Files) ctrl+E
45 关闭当前打开的代码栏(close) ctrl + w
46 关闭打开的所有代码栏(close all) ctrl + shift + w
47 快速搜索类中的错误(next highlighted error) ctrl + shift + q
48 选择要粘贴的内容(Show in Explorer) ctrl+shift+v
49 查找方法在哪里被调用(Call Hierarchy) ctrl+shift+h

1.IDEA代码中所处的位置：setting-Editors-Live Templates/postfix completion
2.常用的模版
*/
public class TemplateTest {
    //模版六  prsf     可生成private static final 私有静态常量
    private static final Customer CUSTOMER = new Customer();
    //变形 psf
    public static final int NUM = 1;
    //变形 psfi
    public static final int NUM1 = 2;
    //变形 psfs
    public static final String  NAME = "LiLing";

    //模版一 psvm
    public static void main(String[] args) {
//        模版二 sout
        System.out.println("hello!");
        //变形  soutp、soutm、soutv、xxx.sout
        System.out.println("args = [" + args + "]");
        System.out.println("TemplateTest.main");
        int num = 10;
        int num1 = 20;
        System.out.println("num1 = " + num1);
        System.out.println(num);
        System.out.println("num = " + num);
        //模板三：for i
        String[] arr = new String[]{"happy","hello","why","when"};
        for (int i = 0; i <arr.length ; i++) {
            System.out.println(arr[i]);
        }
        //变形：iter  增强for循环
        for (String s : arr) {
            System.out.println(s);
        }
        //变形：itar 普通循环
        for (int i = 0; i < arr.length; i++) {
            String s = arr[i];
            System.out.println(s);
        }
        //模板四：list.for
        ArrayList  arrayList = new ArrayList();
        arrayList.add(123);
        arrayList.add(456);
        arrayList.add(789);
        for (Object o : arrayList) {
            System.out.println(arrayList);
        }
         //变形：list.fori  自增
        for (int i = 0; i < arrayList.size(); i++) {
            
        }
        //变形：list.forr  自减  倒序遍历
        for (int i = arrayList.size() - 1; i >= 0; i--) {
            
        }
    }
    public void method(){
        System.out.println("TemplateTest.method");
        //模版五：ifn
        ArrayList  arrayList = new ArrayList();
        arrayList.add(123);
        arrayList.add(456);
        arrayList.add(789);
        if (arrayList == null) {

        }
        //变形：inn
        if (arrayList != null) {
            
        }
        //变形：xxx.null/xxx.nn
        if (arrayList == null) {

        }
        if (arrayList != null) {

        }
    }

}
