# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: beonturk <beonturk@student.42kocaeli.com.  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/25 13:27:02 by beonturk          #+#    #+#              #
#    Updated: 2023/07/25 13:29:05 by beonturk         ###   ########.tr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libftprintf.a
SRC			=	ft_printf.c ft_printf_utils.c
OBJ			=	$(SRC:.c=.o)
CC			=	gcc
CFLAGS		=	-Wall -Werror -Wextra
RM			=	rm -rf
AR			=	ar rcs

all:$(NAME)

$(NAME):$(OBJ)
	$(AR) $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
