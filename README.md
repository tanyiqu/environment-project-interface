# web-design

网站设计比赛代码 - 后端接口

[TOC]



# 用户

### 用户登录

| 功能   | 用户登录                                      |
| :----- | --------------------------------------------- |
| url    | http://120.26.163.105/interface/login         |
| method | GET、POST                                     |
| args   | userCount（用户账号）<br />passwd（用户密码） |

### 用户添加

| 功能   | 用户添加                                                     |
| :----- | ------------------------------------------------------------ |
| url    | http://120.26.163.105/interface/insertUser                   |
| method | GET、POST                                                    |
| args   | userCount（用户账号）<br />userName（用户名）<br />passwd（用户密码） |

### 用户删除

| 功能   | 用户删除                                   |
| :----- | ------------------------------------------ |
| url    | http://120.26.163.105/interface/deleteUser |
| method | GET、POST                                  |
| args   | userCount（用户账号）                      |

# 节日

### 查询节日

| 功能   | 查询节日                                                     |
| :----- | ------------------------------------------------------------ |
| url    | http://120.26.163.105/interface/selectHolidays               |
| method | GET                                                          |
| args   | type：r \| null（请求类型）<br />length（type=r时有用，数据量） |

### 节日添加

| 功能   | 用户登录                                                     |
| :----- | ------------------------------------------------------------ |
| url    | http://120.26.163.105/interface/insertHoliday                |
| method | GET、POST                                                    |
| args   | holidayName（节日名称）<br />holidayDate（节日日期）<br />holidayReason（节日由来） |

### 节日删除

| 功能   | 节日删除                                      |
| :----- | --------------------------------------------- |
| url    | http://120.26.163.105/interface/deleteHoliday |
| method | GET、POST                                     |
| args   | holidayId（节日Id）                           |



# 知识

### 知识查询

| 功能   | 知识查询                                                     |
| :----- | ------------------------------------------------------------ |
| url    | http://120.26.163.105/interface/selectAllKnowledge           |
| method | GET                                                          |
| args   | type: r \| null （查询方式）<br />length（type=r时有用，控制数据量） |

### 知识添加

| 功能   | 知识添加                                                |
| :----- | ------------------------------------------------------- |
| url    | http://120.26.163.105/interface/insertKnowledge         |
| method | GET、POST                                               |
| args   | knowledgeName（知识名称）<br />knowledgeUrl（知识链接） |

### 知识删除

| 功能   | 知识删除                                        |
| :----- | ----------------------------------------------- |
| url    | http://120.26.163.105/interface/deleteKnowledge |
| method | GET、POST                                       |
| args   | knowledgeId（知识Id）                           |

# 法律

### 法律查询

| 功能   | 法律查询                                                     |
| :----- | ------------------------------------------------------------ |
| url    | http://120.26.163.105/interface/selectAllLaw                 |
| method | GET                                                          |
| args   | type：r \| null（查询方式）<br />length（type=r时有用，控制数据量） |

### 法律添加

| 功能   | 法律添加                                    |
| :----- | ------------------------------------------- |
| host   | http://120.26.163.105/interface/insertLaw   |
| method | GET、POST                                   |
| args   | lawName（法律名称）<br />lawUrl（法律链接） |

### 法律删除

| 功能   | 法律删除                                  |
| :----- | ----------------------------------------- |
| host   | http://120.26.163.105/interface/deleteLaw |
| method | GET                                       |
| args   | lawId（法律Id）                           |

# 新闻

### 新闻查询

| 功能   | 新闻查询                                                     |
| :----- | ------------------------------------------------------------ |
| host   | http://120.26.163.105/interface/selectNews                   |
| method | GET                                                          |
| args   | type：r \| null（查询方式）<br />length（type=r时有用，控制数据量） |

### 新闻添加

| 功能   | 新闻添加                                                     |
| :----- | ------------------------------------------------------------ |
| host   | http://120.26.163.105/interface/insertNews                   |
| method | GET、POST                                                    |
| args   | newsName（新闻标题）<br />newsFace（新闻封面）<br />newsDate（新闻发布日期）<br />newsFrom（新闻发布机构名称）<br />newsUrl（此新闻链接）<br />newsAgencyUrl（新闻发布机构链接） |

### 新闻删除

| 功能   | 新闻删除                                   |
| :----- | ------------------------------------------ |
| host   | http://120.26.163.105/interface/deleteNews |
| method | GET、POST                                  |
| args   | newsId（新闻Id）                           |

# 视频

### 视频查询

| 功能   | 视频查询                                       |
| :----- | ---------------------------------------------- |
| host   | http://120.26.163.105/interface/selectAllVideo |
| method | GET                                            |
| args   | null                                           |

### 视频添加

| 功能   | 视频添加                                        |
| :----- | ----------------------------------------------- |
| host   | http://120.26.163.105/interface/insertVideo     |
| method | GET、POST                                       |
| args   | videoName（视频名称）<br />videoUrl（视频链接） |

### 视频删除

| 功能   | 视频删除                                    |
| :----- | ------------------------------------------- |
| host   | http://120.26.163.105/interface/deleteVideo |
| method | GET                                         |
| args   | videoId（视频Id）                           |

### 视频更新

| 功能   | 视频更新                                                     |
| :----- | ------------------------------------------------------------ |
| host   | http://120.26.163.105/interface/updateVideo                  |
| method | GET、POST                                                    |
| args   | videoId（视频Id）<br />videoName（视频名称）<br />videoUrl（视频链接） |

# 评论

### 查询评论

| 功能   | 查询评论                                                     |
| :----- | ------------------------------------------------------------ |
| host   | http://120.26.163.105/interface/selectComments               |
| method | GET                                                          |
| args   | type：news \| holiday <br />           \| knowledge \| law \| video <br />（评论对象） |

### 添加评论

| 功能   | 添加评论                                                     |
| :----- | ------------------------------------------------------------ |
| host   | http://120.26.163.105/interface/insertComments               |
| method | GET、POST                                                    |
| args   | commentTxt（评论内容）<br />commentDate（评论时间  template:yyyy-MM-dd hh:mm:ss）<br />userCount（评论用户账号）<br />commentObject：news \| holiday<br />                                 \| konwledge \| law \| video（评论对象） |

### 删除评论

| 功能   | 删除评论                                                     |
| :----- | ------------------------------------------------------------ |
| host   | http://120.26.163.105/interface/deleteComments               |
| method | GET                                                          |
| args   | type：user \| comment  （删除方式）<br />oid：（type=user，oid为用户账号）<br />         （type=comment，oid为评论Id） |