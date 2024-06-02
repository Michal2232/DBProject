import random

FOOD_FILE = "C:/Users/M0538/minip/FOOD.txt"
OUTPUT_FILE = "C:/Users/M0538/minip/meal_schedule.txt"

DAYS_OF_WEEK = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

def create_meal_schedule(food_file, output_file):

    with open(food_file, "r", encoding="utf-8") as file:
        foods = file.readlines()

    foods = [food.strip() for food in foods if food.strip()]

    random.shuffle(foods)

    with open(output_file, "w", encoding="utf-8") as file:

        for i, food in enumerate(foods, start=1):
            day = random.choice(DAYS_OF_WEEK)
            file.write(f"{day}, {food}, {i}\n")  # הוספת פסיקים בין השדות

if __name__ == "__main__":
    create_meal_schedule(FOOD_FILE, OUTPUT_FILE)
