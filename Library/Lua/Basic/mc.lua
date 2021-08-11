---@class mc mc通用接口 
 mc = {}


---生成一个浮点数坐标对象
---@param x Float x 坐标
---@param y Float y 坐标
---@param z Float z 坐标
---@param dimid  Integer 维度ID：0 代表主世界，1 代表下界，2 代表末地
---@return FloatPos 一个浮点数坐标对象
function mc.newFloatPos(x,y,z,dimid )
end

---获取BDS服务端版本号
---@return String 服务端版本号字符串，格式形如v1.17.10
function mc.getBDSVersion()
end

---执行一条后台命令
---@param cmd String 待执行的命令
---@return Boolean 是否执行成功
function mc.runcmd(cmd)
end

---执行一条后台命令（强化版）
---@param cmd String 指令内容
---@return ObjectRuncmdEx 命令执行结果Object
function mc.runcmdEx(cmd)
end

---通过方块坐标手动生成方块对象
---通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
---@param pos IntPos 方块坐标对象（或者使用x, y, z, dimid来确定方块位置）
---@return Block|Null 如返回值为 Null 则表示获取方块失败
---注意：不要长期保存一个方块对象
---当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
function mc.getBlock(pos)
end

---通过方块坐标手动生成方块对象
---通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
---@param x Integer 方块x坐标
---@param y Integer 方块y坐标
---@param z Integer 方块z坐标
---@param dimid Integer 方块维度
---@return Block|Null 如返回值为 Null 则表示获取方块失败
---注意：不要长期保存一个方块对象
---当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
function mc.getBlock(x,y,z,dimid)
end

---设置指定位置的方块
---@param pos IntPos 目标方块位置
---@param block Block|String 要设置成的方块对象或者方块名
---@return Boolean 是否成功设置
function mc.setBlock(pos,block)
end

---设置指定位置的方块
---通过此函数，将一个坐标对应的方块设置成另一个，类似于命令 /setblock
---如果使用方块名称，则方块名称须为标准类型名，且首字母大写，类似于 Stone
---否则，函数将执行失败
---@param x Integer 方块x坐标
---@param y Integer 方块y坐标
---@param z Integer 方块z坐标
---@param dimid Integer 方块维度
---@param block Block|String 要设置成的方块对象或者方块名
---@return Boolean 是否成功设置
function mc.setBlock(x,y,z,dimid,block)
end

---在指定位置生成粒子效果
---@param pos IntPos 目标方块位置
---@param type String 要生成的粒子效果名称（可查阅wiki得知）
---@return Boolean 是否成功生成
function mc.spawnParticle(pos,type)
end

---在指定位置生成粒子效果
---@param x Integer 方块x坐标
---@param y Integer 方块y坐标
---@param z Integer 方块z坐标
---@param type String 要生成的粒子效果名称（可查阅wiki得知）
---@return Boolean 是否成功生成
function mc.spawnParticle(x,y,z,type)
end