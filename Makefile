NAME =  tester
LIB = srcs/tester.a
LIBFT = srcs/libft.a
LIBASM = libasm/libasm.a
CFLAGS = -Wall -Wextra -Werror

all: all clean
	gcc $(CFLAGS) $(LIB) $(LIBASM)  $(LIBFT) -o $(NAME)

clean:
	@rm 	-f *.txt

re: fclean all

fclean: clean
	rm -rf $(NAME)

.PHONY: clean fclean all re
	