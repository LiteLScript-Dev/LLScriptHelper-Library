/**
 * mc通用接口
 */ 
class mc {
  
  
  


/**
 * 生成一个浮点数坐标对象
 * @param {Float} x x 坐标
 * @param {Float} y y 坐标
 * @param {Float} z z 坐标
 * @param {Integer} dimid  维度ID：0 代表主世界，1 代表下界，2 代表末地
 * @returns {FloatPos} 一个浮点数坐标对象
 */
 static newFloatPos(x,y,z,dimid )

/**
 * 获取BDS服务端版本号
 * @returns {String} 服务端版本号字符串，格式形如v1.17.10
 */
 static getBDSVersion()

/**
 * 执行一条后台命令
 * @param {String} cmd 待执行的命令
 * @returns {Boolean} 是否执行成功
 */
 static runcmd(cmd)

/**
 * 执行一条后台命令（强化版）
 * @param {String} cmd 
 * @returns {ObjectRuncmdEx} 命令执行结果Object
 */
 static runcmdEx(cmd)

/**
 * 通过方块坐标手动生成方块对象
通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
 * @param {IntPos} pos 方块坐标对象（或者使用x, y, z, dimid来确定方块位置）
 * @returns {Block|Null} 如返回值为 Null 则表示获取方块失败
注意：不要长期保存一个方块对象
当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
 */
 static getBlock(pos)

/**
 * 通过方块坐标手动生成方块对象
通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
 * @param {Integer} x 方块x坐标
 * @param {Integer} y 方块y坐标
 * @param {Integer} z 方块z坐标
 * @param {Integer} dimid 方块维度
 * @returns {Block|Null} 如返回值为 Null 则表示获取方块失败
注意：不要长期保存一个方块对象
当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
 */
 static getBlock(x,y,z,dimid)

/**
 * 设置指定位置的方块
 * @param {IntPos} pos 目标方块位置
 * @param {Block|String} block 要设置成的方块对象或者方块名
 * @returns {Boolean} 是否成功设置
 */
 static setBlock(pos,block)

/**
 * 设置指定位置的方块
通过此函数，将一个坐标对应的方块设置成另一个，类似于命令 /setblock
如果使用方块名称，则方块名称须为标准类型名，且首字母大写，类似于 Stone
否则，函数将执行失败
 * @param {Integer} x 方块x坐标
 * @param {Integer} y 方块y坐标
 * @param {Integer} z 方块z坐标
 * @param {Integer} dimid 方块维度
 * @param {Block|String} block 要设置成的方块对象或者方块名
 * @returns {Boolean} 是否成功设置
 */
 static setBlock(x,y,z,dimid,block)

/**
 * 在指定位置生成粒子效果
 * @param {IntPos} pos 目标方块位置
 * @param {String} type 要生成的粒子效果名称（可查阅wiki得知）
 * @returns {Boolean} 是否成功生成
 */
 static spawnParticle(pos,type)

/**
 * 在指定位置生成粒子效果
 * @param {Integer} x 方块x坐标
 * @param {Integer} y 方块y坐标
 * @param {Integer} z 方块z坐标
 * @param {String} type 要生成的粒子效果名称（可查阅wiki得知）
 * @returns {Boolean} 是否成功生成
 */
 static spawnParticle(x,y,z,type)  



}
