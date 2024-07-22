**Concepts:**

1. **Superuser (root):**
   - The most powerful user on a Linux system.
   - Can access and modify all files and settings.
   - Using it directly is risky due to the potential for accidental damage.

2. **Privileged User:**
   - A user with elevated permissions to perform certain administrative tasks.
   - Usually achieved using tools like `sudo` that require a password from an authorized user.

3. **`whoami` Command:**
   - Prints the username of the current user running the command.

4. **Bash Scripting:**
   - Shell scripting language used to automate tasks in Linux.
   - Scripts consist of lines of code that execute sequentially.

5. **Arguments:**
   - Values passed to a script when it's run.
   - Accessed within the script using special variables like `$1` for the first argument.

6. **`sudo` Command:**
   - Allows a user to execute a command with the privileges of the root user.
   - Requires the user's password for authorization.

**Learning by Doing:**

By solving this task, you'll gain experience with:

- Understanding the risks of using the `root` user directly.
- The concept of privileged users and tools like `sudo`.
- Writing basic Bash scripts that accept arguments and execute commands.
- Using the `whoami` command within a script.

**Security Considerations:**

- The script should be designed to only accept authorized usernames.
- Avoid using the `root` user within the script for security reasons. Consider using `sudo` if necessary, but with proper checks and safeguards.

**Additional Notes:**

This task focuses on core concepts of Linux user management and basic scripting. As you progress, you can explore advanced scripting techniques, user permission management, and secure ways to elevate privileges when needed.

