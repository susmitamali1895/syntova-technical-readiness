# Creating Asynchronous Tasks
# asyncio.create_task() schedules async functions as tasks.

import asyncio


async def task_one():
    print("Task One Started")

    await asyncio.sleep(3)

    print("Task One Completed")


async def task_two():
    print("Task Two Started")

    await asyncio.sleep(2)

    print("Task Two Completed")


async def main():

    first_task = asyncio.create_task(task_one())
    second_task = asyncio.create_task(task_two())

    await first_task
    await second_task


asyncio.run(main())