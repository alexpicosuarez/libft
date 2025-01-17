NAME	= libft.a
SRC		= ft_memset.c			\
		ft_bzero.c				\
		ft_memcpy.c				\
		ft_memccpy.c			\
		ft_memmove.c 			\
		ft_memchr.c				\
		ft_memcmp.c				\
		ft_strlen.c				\
		ft_isalpha.c 			\
		ft_isdigit.c			\
		ft_isalnum.c			\
		ft_isascii.c			\
		ft_isprint.c			\
		ft_toupper.c			\
		ft_tolower.c			\
		ft_strchr.c				\
		ft_strrchr.c			\
		ft_strncmp.c			\
		ft_strlcpy.c			\
		ft_strlcat.c			\
		ft_strnstr.c			\
		ft_atoi.c				\
		ft_calloc.c				\
		ft_strdup.c				\
		ft_substr.c				\
		ft_strjoin.c 			\
		ft_strtrim.c			\
		ft_split.c				\
		ft_itoa.c				\
		ft_strmapi.c			\
		ft_putchar_fd.c			\
		ft_putstr_fd.c			\
		ft_putendl_fd.c			\
		ft_putnbr_fd.c 			\
		ft_striteri.c
		
BONUS 	= ft_lstnew_bonus.c		\
		ft_lstadd_front_bonus.c	\
		ft_lstsize_bonus.c		\
		ft_lstlast_bonus.c		\
		ft_lstadd_back_bonus.c	\
		ft_lstclear_bonus.c		\
		ft_lstdelone_bonus.c	\
		ft_lstiter_bonus.c		\
		ft_lstmap_bonus.c

OBJS	= ${SRC:.c=.o}
BONUS_OBJS = ${BONUS:.c=.o}
HEADER	= libft.h
GCC		= gcc
CFLAGS	= -Wall -Wextra -Werror -g
RM		= rm -f

${NAME}:	${SRC}
			${GCC} -c ${HEADER} ${SRC}
			ar rc $(NAME) $(OBJS)

test:		re
			gcc $(CFLAGS) -I. main.c libft.a
			rm -f *.o

all:		${NAME}

clean:
			${RM} ${OBJS} ${BONUS_OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean ${NAME}

bonus: 		$(BONUS)
			${GCC} -c ${BONUS}
			ar rc $(NAME) $(BONUS_OBJS)