NAME := test

NULL := 
SPACE := $(NULL) #

SRCS_ROOT := src/
OBJS_ROOT := obj/

SRCS_DIRS := ./:
SRCS_DIRS := $(subst :,$(SPACE),$(SRCS_DIRS))
SRCS_DIRS := $(addprefix $(SRCS_ROOT),$(SRCS_DIRS))
SRCS_DIRS := $(subst $(SPACE),:,$(SRCS_DIRS))

FILES := exit

SUFFIX := .s

SRCS := $(addsuffix .$(SUFFIX),$(FILES)),
OBJS := $(addprefix $(OBJS_ROOT),$(addsuffix .o,$(FILES)))

AS := nasm
ASFLAGS := -f elf64

vpath %.$(SUFFIX) $(SRCS_DIRS)

#%.o: %.$(SUFFIX)
#	nasm -f elf64 $< -o $@

all: $(OBJS_ROOT) $(NAME)

$(OBJS_ROOT):
	-mkdir -p $@

$(NAME): $(OBJS)
	ld $(OBJS) -o $(NAME)

clean:
	$(RM) -r $(OBJS_ROOT)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
