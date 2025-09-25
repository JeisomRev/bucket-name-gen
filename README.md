# Bucket unique name generator

This Bash script generates unique bucket names for use with cloud storage services such as AWS S3. The names are generated using a combination of a prefix, current timestamp, and a random string to ensure uniqueness.

# How to use

1. Clone this repository.
2. In a terminal, open the path where the script was cloned.
3. Give execute permissions to the script using `chmod +x bucket-unique-name-gen.sh`.
4. Execute the script using `./bucket-unique-name-gen.sh`.
5. When prompted, type the number of bucket names you want to create.

# Requeriments

- Bash
- OpenSSL

# Features

1. Generates a unique name for buckets using a prefix text, the current date and time, and six random hexadecimal characters.

# Configs

- Replace the existing text in the `prefix` field with the desired text.