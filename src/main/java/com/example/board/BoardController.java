package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class BoardController {

    @Autowired
    BoardService boardService;

    @RequestMapping("/board/list")
    public String boardlist(Model model){
        model.addAttribute("list", boardService.getBoardList());
        return  "boardlist";
    }

    @RequestMapping(value ="/view/{id}")
    public String boardView(@PathVariable("id") int id, Model model) {
        model.addAttribute("view",boardService.getBoard(id));
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u", boardVO);
        return "view";
    }

    @RequestMapping(value ="/add")
    public String addPost()
    {
        return "addpostform";
    }

    @RequestMapping(value ="/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo) {
        if(boardService.insertBoard(vo) == 0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공!!");
        return "redirect:board/list";
    }

    @RequestMapping(value ="/edit/{id}")
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u", boardVO);
        return "editform";
    }

    @RequestMapping(value ="/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        int i = boardService.updateBoard(vo);
        if(i == 0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!");
        return "redirect:board/list";
    }

    @RequestMapping(value ="/deleteok/{id}")
    public String deletePostOk(@PathVariable("id") int id) {
        int i = boardService.deleteBoard(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!");
        return "redirect:../board/list";
    }

    @RequestMapping(value ="/views/{id}")
    public String viewPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u", boardVO);
        return "views";
    }


}

