CC = cc
CFLAGS = 
RM = rm -f

# MiniLibX paths
MLX_DIR = ./minilibx-linux
MLX_INC = -I$(MLX_DIR)
MLX_LIB = -L$(MLX_DIR)
MLX_FLAGS = $(MLX_LIB) -lmlx -lXext -lX11 -lm

# Project files
FILES = \
	mandatory/raycasting.c mandatory/file_bonus.c mandatory/cub3d.c mandatory/leaks.c \
	mandatory/parsing.c mandatory/texters.c mandatory/more_files.c mandatory/file.c \
	mandatory/ohhhh.c mandatory/utils1.c mandatory/utils2.c mandatory/utils3.c mandatory/utils4.c \
	mandatory/rendring_wall.c mandatory/extra_checks.c mandatory/normenet_bonus.c \
	mandatory/ihate_norm_bonus.c mandatory/more.c mandatory/abcd.c \
	mandatory/get_line/get_next_line.c \
	mandatory/libft/ft_bzero.c mandatory/libft/ft_strjoin.c mandatory/libft/ft_atoi.c \
	mandatory/libft/ft_strlen.c mandatory/libft/ft_calloc.c mandatory/libft/ft_split.c \
	mandatory/libft/ft_strdup.c mandatory/libft/ft_strnstr.c mandatory/libft/ft_strchr.c \
	mandatory/libft/ft_itoa.c mandatory/libft/ft_substr.c

FILES_BONUS = \
	cub3d_bonus/raycasting_bonus.c cub3d_bonus/file_bonus.c cub3d_bonus/cub3d_bonus.c \
	cub3d_bonus/leaks_bonus.c cub3d_bonus/parsing_bonus.c cub3d_bonus/texters_bonus.c \
	cub3d_bonus/more_files_bonus.c cub3d_bonus/file2_bonus.c cub3d_bonus/ohhhh_bonus.c \
	cub3d_bonus/utils1_bonus.c cub3d_bonus/utils2_bonus.c cub3d_bonus/utils3_bonus.c \
	cub3d_bonus/utils4_bonus.c cub3d_bonus/utils5_bonus.c cub3d_bonus/utils_bonus.c \
	cub3d_bonus/rendring_wall_bonus.c cub3d_bonus/animation_bonus.c cub3d_bonus/extra_checks_bonus.c \
	cub3d_bonus/normenet_bonus.c cub3d_bonus/ihate_norm_bonus.c cub3d_bonus/more_bonus.c \
	cub3d_bonus/abcd_bonus.c cub3d_bonus/utilspars.c \
	cub3d_bonus/get_line/get_next_line.c \
	cub3d_bonus/libft/ft_bzero.c cub3d_bonus/libft/ft_strjoin.c cub3d_bonus/libft/ft_atoi.c \
	cub3d_bonus/libft/ft_strlen.c cub3d_bonus/libft/ft_calloc.c cub3d_bonus/libft/ft_split.c \
	cub3d_bonus/libft/ft_strdup.c cub3d_bonus/libft/ft_strnstr.c cub3d_bonus/libft/ft_strchr.c \
	cub3d_bonus/libft/ft_itoa.c cub3d_bonus/libft/ft_substr.c

OBJ = $(FILES:.c=.o)
OBJ_BONUS = $(FILES_BONUS:.c=.o)
NAME = cub3D
%.o: %.c
	$(CC) $(CFLAGS) $(MLX_INC) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(MLX_INC) $(OBJ) $(MLX_FLAGS) -o $(NAME)

bonus: $(OBJ_BONUS)
	$(CC) $(CFLAGS) $(MLX_INC) $(OBJ_BONUS) $(MLX_FLAGS) -o CUB_BONUS

clean:
	$(RM) $(OBJ) $(OBJ_BONUS)

fclean: clean
	$(RM) $(NAME) CUB_BONUS cub3d

re: fclean all
