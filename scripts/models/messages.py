class Messages:
    def __init__(self, greetings, questions, thoughts):
        self.greetings = greetings
        self.questions = questions
        self.thoughts = thoughts

class Message:
    def __init__(self, id, text):
        self.id = id
        self.text = text 
        