# 实习报告 Latex 模板

## 简介

根据武汉大学遥感信息工程学院课程实习`Word`模板排版而成的`Latex`模板。建议使用[`Overleaf`]((https://cn.overleaf.com/))进行编译和修改，不保证本地环境可以配置成功……

## 更新日志

- 2024/09/18 设置目录居中、章节序号大写、参考文献加入目录、设置页脚在正文重新编号、修正枚举显示错误的 BUG
- 2024/05/22 添加`addcode`函数，支持插入代码块

## 测试环境

编译环境：[Overleaf](https://cn.overleaf.com/)

编译器：`XeLatex`

Tex Live版本：`2023`

主文档：`main.tex`

## 目录说明

```
Project:.
│  main.tex            # 主文档
│  refs.bib            # 参考文献
│  rs.cls              # 样式文件（不要轻易修改）
│  实习报告模板.pdf      # 示例编译结果
│
├─content              # 放置正文的文件夹
│      description.tex
│
├─figure               # 放置图片的文件夹
│       DEM拼接精度.png
│
└─code                 # 放置代码文件的文件夹
        test.py
```

## 使用说明

1. 下载zip文件，上传到Overleaf，创建一个新的项目
2. 在`main.tex`中修改实习名称、姓名等基本信息
3. 切换编译器为`XeLaTex`（编译器默认为`pdfLatex`）
4. 开始正文编辑：
   - 在`content/`文件夹中编辑正文
   - 将图片上传到`figure/`文件夹中
   - 将参考文献加入`refs.bib`文件中
   - 将代码文件加入`code/`文件夹中
