# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eralonso <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/02 18:06:40 by eralonso          #+#    #+#              #
#    Updated: 2024/08/02 18:16:36 by eralonso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := test

NULL := 
SPACE := $(NULL) #

SRCS_ROOT := src/
OBJS_ROOT := .obj/
BIN_ROOT := bin/

SRCS_DIRS := ./
SRCS_DIRS := $(subst :,$(SPACE),$(SRCS_DIRS))
SRCS_DIRS := $(addprefix $(SRCS_ROOT),$(SRCS_DIRS))
SRCS_DIRS := $(subst $(SPACE),:,$(SRCS_DIRS))

FILES := exit

SUFFIX := s

SRCS := $(addsuffix .$(SUFFIX),$(FILES)),
OBJS := $(addprefix $(OBJS_ROOT),$(addsuffix .o,$(FILES)))

AS := nasm
ASFLAGS := -f elf64

NAME := $(addprefix $(BIN_ROOT),$(NAME))
TO_CREATE_DIRS := $(OBJS_ROOT) $(BIN_ROOT)

vpath %.$(SUFFIX) $(SRCS_DIRS)

all: $(TO_CREATE_DIRS) $(NAME)

$(OBJS_ROOT)%.o: %.$(SUFFIX)
	$(AS) $(ASFLAGS) $< -o $@

$(OBJS_ROOT):
	-mkdir -p $@

$(BIN_ROOT):
	-mkdir -p $@

$(NAME): $(OBJS)
	ld $(OBJS) -o $(NAME)

clean:
ifneq ($(OBJS_ROOT),)
	$(RM) -r $(OBJS_ROOT)
else
	$(RM) $(OBJS)
endif

fclean: clean
ifneq ($(BIN_ROOT),)
	$(RM) -r $(BIN_ROOT)
else
	$(RM) $(NAME)
endif

re: fclean all

.PHONY: all clean fclean re
