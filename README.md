# SysMLine

SysMLine: Model-Driven Bidirectional Transformation for SysML v2 and EMF

## 当前版本实现的工作

完成技术验证、实现双向转换功能、开发了五个转换工具。

## 该版本存在的若干问题

### 未完成的工作

- 添加cross类
- 若干Usage的一类多用未处理
- 若干Membership实例化情况未确定，会影响Usage
- TransitionUsage目前关闭
- 存在Import多层引用问题，如501、502行
- DeclaredShortName缩写字符问题
- Expression未测试完全
- 全部校对

### 未解决的BUG

- SysML2XMIni；
- 一些引用会使用缩写，缩写目前无法被检索，如550、551行；
- MetadataBodyUsage不对，ReferenceUsage未处理清楚，如240行；
- ConjugatedPort引用外部模型为空的问题，本质上是SysML v2自己的信息缺失。

### 待确定的情况

- 部分幽灵ReferenceUsage生成问题：可能会随着Usage处理逐渐消除；
- 偶尔出现的PerformActionUsage意外生成问题：可能是equivalent()调用后未实例化出现的问题。

### 注意

- ecore.ecore不能Register！
- KerML2XMI：98、115、116、123、125、（211、213）
- SysMLUtile: 223
