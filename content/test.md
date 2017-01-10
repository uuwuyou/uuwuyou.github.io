命名规范
###命名规范
***总规则：尽量使类名简洁而富于描述。使用完整单词，避免用缩写词(除非该缩写词被更广泛使用，像URL，HTML)***

####1.接口、类命名
* 【强制】：采用驼峰命名法，必须出现类型，每个单词的首字母大写。
* 【推荐】：使用'类型+功能'的方式。
* 【举例】

   类 | 举例 | 说明
----|------|---- 
Activity类 | ActivityOrderList | Activity为前缀标识
Adapter类 | AdapterOrderList | Adapter为前缀标识
解析类 | ParserOrderPoster | Parser为前缀标识
工具方法类 | ManagerThreadPool | Util或者Manager为后缀标识

####2.方法命名
* 【强制】：使用小驼峰命名法：首个单词首字母小写，其余单词首字母大写，方法名长短不限，尽量做到见名知义。（如果只是一步操作，不需要提取出方法，对于逻辑比较复杂或者代码量比较多的必需抽出单独放在方法中。）
* 举例

方法 | 举例 | 说明
----|------|----
initXXX() | initOrderListData()  | 初始化相关方法,使用init为前缀标识，如初始化布局、初始化数据等。
isXXX()/checkXXX() | isEmpty()/checkEmpty()  | 检测方法，对内容进行特定范围内的监测，如类型检测，判空检测等。
onXXXSelect()/onXXXClick() | onOrderListItemSelect()/onOrderStatusButtonClick()  | 对事件的监听方法。 
onXXXRefresh()/onXXXLoad | onOrderListRefresh()/onOrderDataLoad()  | 刷新或者加载的方法。
displayXXX() | displayLoadResultToast()  | 弹出提示框和提示信息，使用display为前缀标识.
clearXXX()/removeXXX() | clearOrderData()/removeOrderView()  | 清除相关数据与移除相关View的方法。
getXXX() | getResultList()  | 返回某个值的方法。

####3.变量命名
#####成员变量
* 【强制】：以m开头，后面加描述和类型。
* 【推荐】：如果存在多个同类型的成员变量，不能省略功能描述。
* 【举例】`mOrderList`

#####静态变量
* 【强制】：以`"s"`开头，后面加功能和类型。
* 【举例】`sSlectFlag`

#####局部变量
* 【强制】：以m开头，后面加描述和类型。
* 【推荐】：也可以使用类型＋功能，如arrayListOrderData，但是类型首字母会变为小写，不推荐。
* 【举例】`orderDataArrayList `

#####常量
* 【强制】：全部大写,单词以下划线分割。
* 【举例】`FLAG_ACTIVITY_CLEAR_TOP`

#####其他注意事项
* 【强制】：变量声明，不能使用组合声明，一次声明一个变量。
* <font color=#DC143C>【反例】`int first, second；`</font>

####3.资源命名
#####布局资源
* 【强制】：全部小写，采用下划线命名法，必须以单词小写，单词之间使用下划线分割，activity和fragment必须与其类名对应。
* 【推荐】：布局资源与对应类之间的对应规则为将所有字母转换为小写。
* 【推荐】：如果布局某个xml文件为通用的，采用项目名称(缩写)_描述.xml。
* 【举例】

   类型 | 举例 | 说明
----|------|---- 
Activity | activity_main.xml | activity_描述.xml
Fragment | fragment_order_list.xml | fragment_描述.xml
Dialog | dialog_hint.xml | dialog_描述.xml
列表项命名 | item_order_status.xml | item_描述.xml
包含项命名 | activity_main_head.xml | 模块_(位置)描述.xml

#####图片资源
* 【强制】：同XML资源，中间以下划线分割，单词均为小写。
* 【推荐】：布局资源与对应类之间的对应规则为将所有字母转换为小写。
* 【举例】

名称 | 说明 | 
----|------|	
btn\_main_home.png | 按键      
divider\_market_white.png |  分割线
ic_edit.png   		|	   图标
		bg_main.png  | 			   背景
		btn_red.png   |            红色按键   
		bg_input.png  |   		   输入框背景
	
#####控件id命名
* 【强制】：同XML资源，中间以下划线分割，单词均为小写。
* 【推荐】：变量对于空间的命名应与布局文件中的控件id命名相对应
* 【举例】	`button_home_feature`

#####String命名
* 【注意】涉及到多语言文本，不做详细规定，具体情况应根据对应的项目来命名，但因体现出模块与功能。

#####按钮（button）状态命名
 名称 | 说明 | 
----|------|	
btn_xx_selector | btn_ 描述_整体效果（selector）
btn_xx_normal | state_normal 按钮正常状态
btn_xx_pressed | state_press 按钮点击时候的效果
btn_xx_focused  | state_focused 按钮聚焦效果
btn_xx_disabled | state_enabled(false) 按钮不可用时的效果
btn_xx_select | state_select 按钮选中效果
btn_xx_hovered | state_hovered 按钮悬停效果
btn_xx_checkable | state_checkable 按钮可选效果

#####量词的使用
* 【推荐】：变在结尾处放置一个量词，就可创建更加统一的变量，它们更容易理解，也更容易搜索。
* 【举例】	`strCustomerFirst、strCustomerLast`

量词后缀 | 说明 | 
----|------|	
First | 一组变量中的第一个 |
Last  | 一组变量中的最后一个 |
Next | 一组变量中的下一个变量 |
Prev | 一组变量中的上一个 |
Cur  |一组变量中的当前变量 |

***
###注释规范
####注释的目的：
 * 文字说明代码的作用(即为什么要用编写该代码,而不是如何编写); 
 * 确指出该代码的编写思路和逻辑方法; 
 * 注意到代码中的重要转折点; 
  
####总要求：
 * 注释要求要对代码阅读起到比较积极的推动意义，不要记流水账；
 * 避免冗长的注释，力求简短有意义；
 * 维护注释，人人有责，看见之前的注释如果觉得不清晰，请添加并完善；

####标签说明
标签 | 用处 | 用途
---|---|---|
@author | 类、接口 | 说明一段代码的作者，每一个作者的特有标记
@deprecated | 类、方法 | 说明该API已被废弃，不再使用
@paramname (@param) | 方法 | 用来说明传递给一个方法的参数，每个参数各有一个标记
@return | 方法 | 若方法有返回值，对该返回值进行说明，说明返回值的类型和用途
@since | 类、方法 | 说明存在时间，比如：since JDK 1.7
@version | 类、接口、方法 | 说明某一段特定代码的版本信息
@date | 类、接口、方法 | 说明某一段代码的编写日期 
@throws | 方法 | 对方法中的异常进行说明

####类注释
* 【强制】：底层类必须添加注释，说明此类的作用，尽管类名已经表明了其作用，但是为防止出现混淆（如同个模块中，对某个基础类存在多层封装和继承），请在类中说清楚自己封装了哪些东西（存在的必要性）。
* 【推荐】：上层类除过作者等信息之外，建议添加对类的简单说明。
* 【举例】：

####变量注释
* 【强制】：存在类似的命名时，必需添加注释（除此之外的情况，尽量避免注释，尽量在变量命名时就能见名知义）。
* 【推荐】：在原有类中添加新的成员变量时，请注释出添加人和时间；使用行尾注释，放在每行的最后，或者占据一行，以‘//’开头，如果一个程序块内有多个尾随注释，每个注释的缩进应该保持一致。
* 【举例】：`private Button mRmindTimeBtn;   //倒计时按钮`

####方法注释
* 【强制】：逻辑复杂或者方法名相似时添加注释，底层类中，如果非原作者，新增方法请加上作者信息与类注释（同上，除此之外的情况，避免出现注释）。
* 【举例】：

***
		/**  
		* 根据业务命令，调用业务方法。 
		* @param millisInFuture 倒计时时长 
		* @param countDownInterval 倒计时时间变换间隔  
		* @param timeButton  倒计时时间显示的button     
		* @return null      
		*/ 
		public void initOrderStatusCountTime(long millisInFuture, long countDownInterval, Button timeButton)
***


###代码规范

#####逻辑控制
* 【强制】：诸如if之类的逻辑嵌套不可以超过三层
* 【推荐】：逻辑比较复杂或者多次使用的逻辑，抽出代码，进行封装。

#####表达式与语句
* 【强制】：每行应该只有一条语句；大括号不要单独一行，和它前面的代码同一行；花括号内语句应该有缩进。
* 【强制】：if-else,if-elseif语句，任何情况下，都应该有“{”，“}”,并且if与后面判断式之间应该加上空格，判断是与后面的花括号之间也应该加上空格，或括号中的内容前要使用缩进；
* 【强制】：switch语句，每个switch里都应包含default子语句,注意花括号、空格和缩进的使用。
* 【实例】
****
	  	if (condition) {
	  	
	  	 	statments;
	  	  
	  	} else if (condition) {
	     
	     	statments;
	     
	  	}
	  	
	  	switch (condition) {
	       
	     case ZZG:
	      
    			statements;     
    		
    			break; 
    	  		
    	  default:  
    	     
    	  		statements;  
    	  		   
    	  		break; 
    	}
***

####【建议】区块划分
建议使用注释将文件划分为明显的区块，区块划分如下：

  * 常量声明区
  * UI控件变量声明区
  * 普通成员变量声明区
  * 内部接口声明区
  * 初始化相关方法区
  * 事件响应方法区
  * 普通逻辑方法区
  * 重载逻辑方法区
  * 异步任务方法区
  * 生命周期方法回调区（onCreate()方法除外）
  * 内部类声明区

###替他约定
####提交约定
* 【强制】提交记录需要写上review人员：review by somebodyXX
* 【推荐】
  * 功能性提交以feature：开头
  * Bug修复以Bug Fixed:开头，若涉及到宙斯盾上某个Bug记录，标上#{bug id}
  * 纯UI修改以UI：开头
  * 纯文案修改以COPY开头

####换行约定
 
一个表达式无法容纳在一行内时，可以依据如下一般规则断开：
 
   * 在一个逗号后面断开 
   * 在一个操作符前面断开  
   * 新的一行应该与上一行同一级别表达式的开头处对齐  
   * 如果以上规则导致你的代码混乱或者使你的代码都堆挤在右边，那就代之以缩进4个空格

####合理使用空行，清晰代码
使用空行将逻辑相关的代码段分隔开，以提高可读性。下列情况应该总是使用空行： 

  * 不同时期添加的成员变量之间 
  * 类声明和接口声明之间  
  * 两个方法之间  
  * 方法内的局部变量和方法的第一条语句之间
  * 块注释或单行注释之前  
  * 一个方法内的两个逻辑段之间，用以提高可读性

####缩进的使用
  * 在if语句内容中缩进
  * 在else语句内容中缩进
  * 在switch语句内容中缩进
  * 在case语句内容中缩进 在do语句句内容中缩进
  * 已经用行接续符分割的语句的各个行要缩进 

####已有资源
  * AndroidCode style:http://source.android.com/source/code-style.html
  * 21中代码坏味道：http://docs.alibaba-inc.com/pages/viewpage.action?pageId=258624852
  * Review计划：http://docs.alibaba-inc.com/pages/viewpage.action?pageId=258607530
  * json解析的model类排除混淆规范：http://docs.alibaba-inc.com/pages/viewpage.action?pageId=285214510
  * http://www.atatech.org/articles/50331

###其他建议
  * 代码中不出现中文，最多注释中可以出现中文
  * 常量命名只能包含字母和_，字母全部大写，单词之间用_隔开
  * 引用第三方库要慎重，避免应用大容量的第三方库，导致客户端包非常大
  * 使用静态变量方式实现界面间共享要慎重
  * 打印日志使用LogUtils，不要直接使android.util.Log
  * 异常不能忽略，都打印出来
  * activity尽量在一个View.OnClickListener中处理所有的逻辑
  * 如果所开发的为通用组件，为避免冲突，命名时一定要注意
  * 数据一定要效验，例如字符型转数字型，如果转换失败一定要有缺省值；判空一定要做好。



