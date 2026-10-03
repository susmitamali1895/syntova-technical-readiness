# Async and Await
# await pauses the current async function until the operation is completed.

import asyncio

async def greet():
    print("Hello from Syntova")

    await asyncio.sleep(2)

    print("Welcome to Python")


asyncio.run(greet())
