from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://winter:wintertest@cluster0.mjypggy.mongodb.net/MarkX?retryWrites=true&w=majority&appName=Cluster0')

db = client['MarkX']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Tarefa {task_name} removida com sucesso')

