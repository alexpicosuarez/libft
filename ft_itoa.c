/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: apico-su <apico-su@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/19 19:29:38 by apico-su          #+#    #+#             */
/*   Updated: 2021/04/19 21:28:59 by apico-su         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*num_calloc(int n, int base)
{
	int		x;
	int		y;
	char	*num;

	x = 1;
	y = 0;
	while (n / x != 0)
	{
		x = x * base;
		y++;
	}
	if (n >= 0)
		y--;
	num = ft_calloc(y + 2, sizeof(char));
	if (!num)
		return (NULL);
	num[0] = '0';
	return (num);
}

char	*ft_itoa(int n)
{
	int long	x[3];
	char		*num;

	if (n == -2147483648)
		return ("-2147483648\0");
	num = num_calloc(n, 10);
	if (!num)
		return (NULL);
	x[0] = 1;
	x[1] = 0;
	x[2] = 0;
	if (n < 0)
	{
		num[0] = '-';
		x[1]++;
		n = -n;
	}
	while (n / x[0])
		x[0] = x[0] * 10;
	while (x[0] / 10 > 0)
	{
		num[x[1]++] = (n / (x[0] / 10)) - (x[2] * 10) + '0';
		x[0] = x[0] / 10;
		x[2] = (n / x[0]);
	}
	return (num);
}
