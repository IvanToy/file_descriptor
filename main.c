#include <stdlib.h>
#include <stdio.h>

#define BYTES_BUFFER_SIZE 512
#define START_PRINT_CHARS 0x20
#define END_PRINT_CHARS 0x7F

int main(int argc, char **argv)
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s <file>\n", argv[0]);
        return 1;
    }

    FILE *file = NULL;

    file = fopen(argv[1], "rb");
    if (file == NULL)
    {
        perror("Failed to open file");
        return 1;
    }

    unsigned char bytes_buffer[BYTES_BUFFER_SIZE];

    size_t bytes_read;
    size_t total_bytes = 0;

    size_t i;

    size_t printable_bytes = 0;
    size_t zero_bytes = 0;
    size_t other_bytes = 0;

    while ((bytes_read = fread(bytes_buffer, sizeof(char), BYTES_BUFFER_SIZE, file)) > 0)
    {
        total_bytes += bytes_read;

        for (i = 0; i < bytes_read; i++)
        {

            if (bytes_buffer[i] >= START_PRINT_CHARS && bytes_buffer[i] < END_PRINT_CHARS)
            {
                printable_bytes++;
            }
            else if (bytes_buffer[i] == 0x00)
            {
                zero_bytes++;
            }
            else
            {
                other_bytes++;
            }
        }
    }

    if (ferror(file))
    {
        fprintf(stderr, "A file error occurred while reading a file\n");
        return 1;
    }
    else
    {
        printf("File name: %s\nTotal size in bytes: %zu\nPrintable bytes: %zu\nZero bytes: %zu\nOther bytes: %zu\n", argv[1], total_bytes, printable_bytes, zero_bytes, other_bytes);
    }

    fclose(file);
    return 0;
}
