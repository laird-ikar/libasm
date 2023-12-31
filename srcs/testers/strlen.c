/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strlen.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bguyot <bguyot@student.42mulhouse.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/18 16:01:23 by bguyot            #+#    #+#             */
/*   Updated: 2023/11/21 11:33:34 by bguyot           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../libasm.h"
#include <string.h>
#include <errno.h>
#include <stdio.h>

#ifdef	FT
#define	test(a) ft_strlen(a)
#else
#define test(a) strlen(a)
#endif

int	main(int argc, char **argv)
{
	if (argc == 1)
		return (0);
	if (!strcmp(argv[1], "NULL"))
		argv[1] = NULL;
	printf("return value:\t%lu\nerrno:\t\t\t%d\n", strlen(argv[1]), errno);
	return (0);
}
