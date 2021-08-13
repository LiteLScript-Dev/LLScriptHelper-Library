




/**
 * 输出信息到控制台\n这是为了方便输出信息而设计的便捷函数
 * @param {...any} data 
 * @returns {null} 
 */
 static log(...)

/**
 * 输出带颜色文本
 * @param {string} color 此行输出的颜色
 * @param {...any} data 
 * @returns {null} 
 */
 static colorLog(color,...)

/**
 * 推迟一段时间执行函数
 * @param {(:)} func 待执行的函数
 * @param {number} msec 推迟执行的时间（毫秒）
 * @returns {number} 此任务ID
 */
 static setTimeout(func,msec)