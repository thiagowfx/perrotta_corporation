package com.thiagoperrotta.pagehandler;

import com.thiagoperrotta.IFPageHandler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class pagehandler_pagina2_jsp implements IFPageHandler {
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        return "page2.jsp";
    }
}