; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    exit.s                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: eralonso <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/08/02 18:06:52 by eralonso          #+#    #+#              ;
;    Updated: 2024/08/02 18:06:52 by eralonso         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text

global sip ; _start == default entry symbol

sip:
	mov rax, 60
	mov rdi, 42
	syscall
