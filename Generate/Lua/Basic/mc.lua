---mc通用接口
---@class mc 
 mc = {}

---生成一个浮点数坐标对象
---@param x Float x 坐标
---@param y Float y 坐标
---@param z Float z 坐标
---@param dimid  number 维度ID：0 代表主世界，1 代表下界，2 代表末地
---@return FloatPos 一个浮点数坐标对象
function mc.newFloatPos(x,y,z,dimid )
end

---获取BDS服务端版本号
---@return string 服务端版本号字符串，格式形如v1.17.10
function mc.getBDSVersion()
end

---执行一条后台命令
---@param cmd string 待执行的命令
---@return boolean 是否执行成功
function mc.runcmd(cmd)
end

---执行一条后台命令（强化版）
---@param cmd string 指令内容
---@return ObjectRuncmdEx 命令执行结果Object
function mc.runcmdEx(cmd)
end

---通过方块坐标手动生成方块对象
---通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
---@param pos IntPos 方块坐标对象（或者使用x, y, z, dimid来确定方块位置）
---@return Block|nil 如返回值为 nil 则表示获取方块失败
---注意：不要长期保存一个方块对象
---当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
function mc.getBlock(pos)
end

---通过方块坐标手动生成方块对象
---通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
---@param x number 方块x坐标
---@param y number 方块y坐标
---@param z number 方块z坐标
---@param dimid number 方块维度
---@return Block|nil 如返回值为 nil 则表示获取方块失败
---注意：不要长期保存一个方块对象
---当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
function mc.getBlock(x,y,z,dimid)
end

---设置指定位置的方块
---@param pos IntPos 目标方块位置
---@param block Block|string 要设置成的方块对象或者方块名
---@return boolean 是否成功设置
function mc.setBlock(pos,block)
end

---设置指定位置的方块
---通过此函数，将一个坐标对应的方块设置成另一个，类似于命令 /setblock
---如果使用方块名称，则方块名称须为标准类型名，且首字母大写，类似于 Stone
---否则，函数将执行失败
---@param x number 方块x坐标
---@param y number 方块y坐标
---@param z number 方块z坐标
---@param dimid number 方块维度
---@param block Block|string 要设置成的方块对象或者方块名
---@return boolean 是否成功设置
function mc.setBlock(x,y,z,dimid,block)
end

---在指定位置生成粒子效果
---@param pos IntPos 目标方块位置
---@param type string 要生成的粒子效果名称（可查阅wiki得知）
---@return boolean 是否成功生成
function mc.spawnParticle(pos,type)
end

---在指定位置生成粒子效果
---@param x number 方块x坐标
---@param y number 方块y坐标
---@param z number 方块z坐标
---@param type string 要生成的粒子效果名称（可查阅wiki得知）
---@return boolean 是否成功生成
function mc.spawnParticle(x,y,z,type)
end

---注册一个新的玩家命令
---@param cmd string 待注册的命令
---@param description string 命令描述文本
---@param callback fun(player:Player,args:{}@string):boolean 注册的这个命令被执行时，接口自动调用的回调函数
---@param level number （可选参数）命令的注册等级，默认为 0 ，即所有人都可以执行
---@return boolean 是否成功注册
function mc.regPlayerCmd(cmd,description,callback,level)
end

---注册一个新的后台控制台命令
---@param cmd string 待注册的命令
---@param description string 命令描述文本
---@param callback fun(args:{}@string):boolean 注册的这个命令被执行时，接口自动调用的回调函数
---@return boolean 是否成功注册
function mc.regConsoleCmd(cmd,description,callback)
end

---模拟产生一个控制台命令输出
---@param output string 模拟产生的命令输出
---@return boolean 是否成功执行
function mc.sendCmdOutput(output)
end

---获取一个玩家对象
---@param info string 玩家的名字或者Xuid
---@return Player 生成的玩家对象
function mc.getPlayer(info)
end

---获取所有在线玩家的列表
---@return Player[] 在线的玩家对象列表
function mc.getOnlinePlayers()
end

---广播一个文本消息给所有玩家
---@param msg string 待发送的文本
---@param type? number 发送的文本消息类型，默认为0
---@return boolean 是否成功发送
function mc.broadcast(msg,type)
end