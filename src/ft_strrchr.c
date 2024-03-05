/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mafranco <mafranco@student.42barcelona.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/04 21:19:17 by mafranco          #+#    #+#             */
/*   Updated: 2024/03/05 12:42:30 by mafranco         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int		i;
	char	*lst;

	i = 0;
	lst = NULL;
	while (s[i])
	{
		if (s[i] == (char)c)
			lst = ((char *)&s[i]);
		i++;
	}
	if (s[i] == (char)c)
		lst = ((char *)&s[i]);
	return (lst);
}
