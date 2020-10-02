import glob
import sys
import os
import csv
import json
from models.messages import Messages, Message
from helpers.file_helper import default_method

CSV_PATH = os.path.dirname(os.path.abspath(__file__)) + '/../csv_data/messages/data.csv'
OUTPUT_PATH = os.path.dirname(os.path.abspath(__file__)) + '/../csv_data/messages/messages.json'

def output_json():
    # CSV => List
    greetings = []
    questions = []
    thoughts = []
    with open(CSV_PATH) as f:
      reader = csv.reader(f)
      for i, row in enumerate(reader):
        if i != 0:
          if len(row[1]) != 0:
            greetings.append(Message(i - 1, row[1]))
          if len(row[2]) != 0:
            questions.append(Message(i - 1, row[2]))
          if len(row[3]) != 0:
            thoughts.append(Message(i - 1, row[3]))
    
    # List => messages
    messages = Messages(greetings, questions, thoughts)
    with open(OUTPUT_PATH, 'w') as f:
      json.dump({'data': messages }, f, default=default_method, ensure_ascii=False, indent=2,)

print('--- [Start] ---')
output_json()
print('--- [Finish] ---')