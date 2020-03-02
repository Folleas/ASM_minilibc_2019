##
## EPITECH PROJECT, 2020
## ASM_minilibc_2019
## File description:
## Makefile
##

NA				=		nasm

ASFLAGS			=		-f elf64

CC				=		ld

CFLAGS			=		-fPIC -shared

RM				=		rm -f

NAME			=		libasm.so

SRCS_DIR		=		src/

SRCS_FILES		=		strlen.asm		\
						strncmp.asm		\
						strchr.asm		\
						rindex.asm		\

SRCS			=		$(addprefix $(SRCS_DIR), $(SRCS_FILES))

OBJS			=		$(SRCS:.asm=.o)


all: 					$(NAME)

$(NAME):				$(OBJS)
						$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: 					%.asm
						$(NA) $(ASFLAGS) $< -o $@

clean:
						$(RM) $(OBJS)

fclean: 				clean
						$(RM) $(NAME)

re:						fclean all

.PHONY: 				all clean fclean re