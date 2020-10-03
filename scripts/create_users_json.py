import glob
import sys
import os
import csv
import json
import random
import uuid
import datetime
from models.user import User
from helpers.file_helper import default_method

CSV_PATH = os.path.dirname(os.path.abspath(__file__)) + '/../csv_data/users/data.csv'
IMAGES_DIR_PATH = os.path.dirname(os.path.abspath(__file__)) + '/../assets/images'
OUTPUT_PATH = os.path.dirname(os.path.abspath(__file__)) + '/../csv_data/users/users.json'
GENDER_ID = 1
PREFECTURE_MAX = 47

def description_temp(name):
  num = random.randrange(5)
  if num == 0:
    return 'はじめまして、%sです。好きなタイプはタレ目で左目の下にホクロがある人です。一緒に退会できる方を探しています。\n\nよろしくお願いします。' % name
  elif num == 1:
    return '%sと言います。最近アメリカから帰国して現在は幼稚園の先生をしています。好きなタイプはリードしてくれる方です。\n\nよろしくお願いします。' % name
  elif num == 2:
     return '%sです。友達の紹介で初めてみました！ちょっと天然で甘えん坊です笑。こんな私でよければ仲良くしてください！' % name
  elif num == 3:
    return '%sです。友達の紹介で初めてみました！ちょっと天然で甘えん坊です笑。こんな私でよければ仲良くしてください！' % name
  else:
    return 'こんにちは、%sと言います。最近YouTubeにハマっています。ジャニヲタなんでそんな私でもよければ仲良くしてください。よろしくです。' % name

def get_birthday():
  year = random.randrange(1988, 2001, 1)
  month = random.randrange(1, 13, 1)
  day = random.randrange(1, 25, 1)
  return '%s-%s-%s' % (year, month, day)

def output_json():
    # CSV => List
    nameList = []
    hobbyList = []
    favoriteTypeList = []
    with open(CSV_PATH) as f:
      reader = csv.reader(f)
      for i, row in enumerate(reader):
        if i != 0:
          nameList.append(row[1])
          if len(row[2]) != 0:
             hobbyList.append(row[2])
          if len(row[3]) != 0:
            favoriteTypeList.append(row[3])
        # print(row)
    
    # images => List
    images = os.listdir(IMAGES_DIR_PATH)
    random.shuffle(images)
    print(images)

    # List => users
    MAX_USER_COUNT = len(images)
    users = []
    for i in range(MAX_USER_COUNT):
      name = nameList[i]
      id = str(uuid.uuid4())
      birthday = get_birthday()
      description = description_temp(name)
      hobbyIndex = random.randrange(len(hobbyList))
      favoriteTypeIndex = random.randrange(len(favoriteTypeList))
      prefectureId = random.randrange(PREFECTURE_MAX)
      imageName = images[i]
      user = User(id, name, birthday, description, GENDER_ID, prefectureId, imageName, hobbyList[hobbyIndex], favoriteTypeList[favoriteTypeIndex])
      users.append(user)

    with open(OUTPUT_PATH, 'w') as f:
      json.dump({'data': users }, f, default=default_method, ensure_ascii=False, indent=2,)

print('--- [Start] ---')
output_json()
print('--- [Finish] ---')