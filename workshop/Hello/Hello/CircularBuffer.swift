class CircularBuffer {
    var readPointer = 0
    var writePointer = 0
    var buffer = [String?](count: 5, repeatedValue: nil)
    
    func checkEmpty() -> Bool {
        return self.writePointer == self.readPointer
    }
    
    func add(input: String) {
        self.buffer[self.writePointer] = input
        self.writePointer += 1
    }
    
    func remove() -> String {
        let value = self.buffer[self.readPointer]
        self.buffer[self.readPointer] = nil
        self.readPointer += 1
        return value!
    }
}