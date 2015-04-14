package info.bus.www;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * author : lch
 * date : 2015/4/11
 * depiction :
 */
public class CustomSimpleMappingExceptionResolver extends  SimpleMappingExceptionResolver {

        protected ModelAndView doResolveException(HttpServletRequest request,
                                                  HttpServletResponse response, Object handler, Exception ex) {

                ex.printStackTrace();
                return null;
        }
}
