
var RandomizedSet = function() {
      this.map = new Map();
    this.list = [];
};

/** 
 * @param {number} val
 * @return {boolean}
 */
RandomizedSet.prototype.insert = function(val) {
    if (this.map.has(val)) return false;
    this.map.set(val, this.list.length);
    this.list.push(val);
    return true;
};

/** 
 * @param {number} val
 * @return {boolean}
 */
RandomizedSet.prototype.remove = function(val) {
     if (!this.map.has(val)) return false;
    const idx = this.map.get(val);
    const last = this.list[this.list.length - 1];
    this.list[idx] = last;
    this.map.set(last, idx);
    this.list.pop();
    this.map.delete(val);
    return true;
};

/**
 * @return {number}
 */
RandomizedSet.prototype.getRandom = function() {
     const idx = Math.floor(Math.random() * this.list.length);
    return this.list[idx];
};

/** 
 * Your RandomizedSet object will be instantiated and called as such:
 * var obj = new RandomizedSet()
 * var param_1 = obj.insert(val)
 * var param_2 = obj.remove(val)
 * var param_3 = obj.getRandom()
 */