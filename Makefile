# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-omar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 19:04:27 by mel-omar          #+#    #+#              #
#    Updated: 2020/02/07 18:53:09 by mel-omar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libprint.a

SRC = apply_flags.c checker_flags.c display.c\
	  ft_atoi.c ft_putnbr.c print.c print_utils.c\
	  display_flags.c

OBJ = apply_flags.o checker_flags.o display.o\
	  ft_atoi.o ft_putnbr.o print.o print_utils.o\
	  display_flags.o

all:
	@gcc -Wall -Wextra -Werror -c $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@rm -f $(OBJ)
fclean: clean
	@rm -f $(NAME)
re : fclean all
