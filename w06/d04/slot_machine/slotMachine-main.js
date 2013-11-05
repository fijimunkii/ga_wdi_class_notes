shuffle = function(v){
    for(var j, x, i = v.length; i; j = parseInt(Math.random() * i), x = v[--i], v[i] = v[j], v[j] = x);
    return v;
};

function SlotMachine() {
  slots = ['single_cherry','double_cherry','triple_cherry','orange','bar','seven'];

}
SlotMachine.prototype.




// Creates a new slot machine object
machine = new SlotMachine();

// Sets the slots be spinning
machine.spin();

// Stops each slot individually
machine.slotStop(1);
machine.slotStop(2);
machine.slotStop(3);

// Determines outcome from game
machine.outCome();

