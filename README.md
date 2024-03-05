# Libft

Libft is the first project of the school 42 where we learn how to create our library and create the commun function that we will use all our cursus.

## Description

In this project we build function that we will use in every project after, and not even in C language :  
- character modifing function like [ft_tolower](./src/ft_tolower.c) & [ft_toupper](./src/ft_toupper.c)  
- character format function like [ft_isalnum](./src/ft_isalnum.c), [ft_isalpha](./src/ft_isalpha.c), [ft_isascii](./src/ft_isascii.c), [ft_isdigit](./src/ft_isdigit.c), [ft_isprint](./src/ft_isprint.c)  
- parsing function like [ft_itoa](./src/ft_itoa.c) and [ft_atoi](./src/ft_atoi.c) that chang the type of the variable  
- string analysing function like [ft_strchr](./src/ft_strchr.c), [ft_strlen](./src/ft_strlen.c), [ft_strncmp](./src/ft_strncmp.c), [ft_strnstr](./src/ft_strnstr.c)  
- string modifying function like [ft_strdup](./src/ft_strdup.c), [ft_striteri](./src/ft_striteri.c), [ft_strjoin](./src/ft_strjoin.c), [ft_strlcat](./src/ft_strlcat.c), [ft_substr](./src/ft_substr.c)  
- the [ft_split](./src/ft_split.c) function that split a string into a table of strings  
- function to write in a file descriptor  
- list managing funcion  

If you want more indication about these funcion, type man <function name>

## Installation

```bash
git clone https://github.com/Mafranco31/libft.git libft && cd libft && make
```

Now you can use libft function in your files (don't forget to include libft.h header in your files)  

When you compile your function, make sure to add the flag -L./libft -lft to add the library libft to your project. (change -L./libft by your path as -L(path)).
