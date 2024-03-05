# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mafranco <mafranco@student.42barcelona.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/05 17:45:19 by mafranco          #+#    #+#              #
#    Updated: 2024/03/05 11:14:14 by mafranco         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

LIB = src/libft.h

SRC = src/ft_atoi.c src/ft_bzero.c src/ft_calloc.c src/ft_isalnum.c \
	src/ft_isalpha.c src/ft_isascii.c src/ft_isdigit.c src/ft_isprint.c \
	src/ft_itoa.c src/ft_lstadd_back.c src/ft_lstadd_front.c \
	src/ft_lstclear.c src/ft_lstdelone.c src/ft_lstlast.c src/ft_lstnew.c \
	src/ft_lstsize.c src/ft_memchr.c src/ft_memcmp.c src/ft_memcpy.c \
	src/ft_memmove.c src/ft_memset.c src/ft_putchar_fd.c \
	src/ft_putendl_fd.c src/ft_putnbr_fd.c src/ft_putstr_fd.c src/ft_split.c \
	src/ft_strchr.c src/ft_strdup.c src/ft_striteri.c src/ft_strjoin.c \
	src/ft_strlcat.c src/ft_strlcpy.c src/ft_strlen.c src/ft_strmapi.c \
	src/ft_strncmp.c src/ft_strnstr.c src/ft_strrchr.c src/ft_strtrim.c \
	src/ft_substr.c src/ft_tolower.c src/ft_toupper.c

OBJ	=	$(SRC:.c=.o)

CC	=	cc

RM	=	rm -f

CFLAGS	=	-Wall -Wextra -Werror -I.

SRC_DIR =	src/

GREEN	= \033[1;32m
YELLOW	= \033[1;33m
RESET	= \033[0m


all: $(NAME) 

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME):: $(OBJ) $(LIB)
	@ar rcs $(NAME) $(OBJ)

$(NAME)::
	@echo "$(GREEN)libft.a compiled$(RESET)"

clean:
	@$(RM) -r *.o
	@echo "$(YELLOW)objects of LIBFT removed$(RESET)"

fclean:	clean
	@$(RM) $(NAME)
	@echo "$(YELLOW)archive LIBFT removed$(RESET)"

re:	fclean all

.PHONY:	all clean fclean re
