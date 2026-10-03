# Async Student Result Processing
# Handling errors while processing multiple student results.

import asyncio


async def process_result(student_name, marks):
    try:
        print("Processing result for:", student_name)

        await asyncio.sleep(2)

        if marks < 0 or marks > 100:
            raise ValueError("Marks must be between 0 and 100")

        return f"{student_name}: Result processed successfully"

    except ValueError as error:
        return f"{student_name}: Error - {error}"


async def main():

    results = await asyncio.gather(
        process_result("Meera", 85),
        process_result("Kavya", 105),
        process_result("Rohan", 78)
    )

    for result in results:
        print(result)


asyncio.run(main())