# Multiple Asynchronous Tasks
# Multiple async tasks can run while other tasks are waiting.

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
    await asyncio.gather(task_one(), task_two())


asyncio.run(main())
