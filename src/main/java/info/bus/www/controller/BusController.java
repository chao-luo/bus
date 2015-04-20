package info.bus.www.controller;

import info.bus.www.dao.FeedBackDao;
import info.bus.www.dao.LineDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * author : lch
 * date : 2015/4/10
 * depiction :
 */
@Controller
public class BusController {

    private Logger log = LoggerFactory.getLogger(BusController.class);

    @Autowired
    private LineDao lineDao;

    @Autowired
    private FeedBackDao feedBackDao;

    @RequestMapping("/line/{lineNumber}")
    @ResponseBody
    public List<Map<String, Object>> queryLinePath(@PathVariable Integer lineNumber) {
        log.info("line number is {}", lineNumber);
        return lineDao.selectLinePath(lineNumber);
    }

    @RequestMapping("/line/all")
    @ResponseBody
    public List<Map<String, Object>> queryAllLinePath() {
        return lineDao.selectAllLinePath();
    }

    @RequestMapping(value = "/feedback", method = RequestMethod.POST)
    @ResponseBody
    public int addFeedBack(String content) {
        return feedBackDao.saveFeedBack(content,"1");
    }

}
