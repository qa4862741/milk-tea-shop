package com.yezic.com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yezic.com.entity.Stores;
import com.yezic.com.entity.User;
import com.yezic.com.service.EmployeeService;
import com.yezic.com.service.StoresService;
import com.yezic.com.service.UserService;
import com.yezic.com.shiro.realm.MyRealm;

@Controller
@RequestMapping("login")
public class LoginController extends BaseController {

	@Resource 
	private MyRealm myRealm;
	
	@Resource
	private StoresService storesService;
	
	@Resource
	private UserService userService;
	
	@Resource
	private EmployeeService employeeService;
	
	@RequestMapping("login")
	public void login(Model model) {
		List<Stores> storesList = storesService.getAll(new Stores());
		model.addAttribute("storesList", storesList);
	}

	@RequestMapping("denied")
	public void denied() {
	}
	
	@RequestMapping(value = "doLogin", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String login(String userName, String password,int storeId, HttpServletRequest request) {
		try {
			if (!request.getMethod().equals("POST")) {
				request.setAttribute("error", "支持POST方法提交！");
			}
			if (StringUtils.isEmpty(userName)|| StringUtils.isEmpty(password)) {
				request.setAttribute("error", "用户名或密码不能为空！");
				return "redirect:/login/login";
			}
			// 想要得到 SecurityUtils.getSubject()　的对象．．访问地址必须跟shiro的拦截地址内．不然后会报空指针
			Subject user = SecurityUtils.getSubject();
			// 用户输入的账号和密码,,存到UsernamePasswordToken对象中..然后由shiro内部认证对比,
			// 认证执行者交由ShiroDbRealm中doGetAuthenticationInfo处理
			// 当以上认证成功后会向下执行,认证失败会抛出异常
			UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
			try {
				user.login(token);
			} catch (LockedAccountException lae) {
				token.clear();
				request.setAttribute("error", "用户已经被锁定不能登录，请与管理员联系！");
				return "redirect:/login/login";
			} catch (ExcessiveAttemptsException e) {
				token.clear();
				request.setAttribute("error", "账号：" + userName + " 登录失败次数过多,锁定10分钟!");
				return "redirect:/login/login";
			} catch (AuthenticationException e) {
				token.clear();
				request.setAttribute("error", "用户或密码不正确！");
				return "redirect:/login/login";
			}
			setAttributeToSession(userName, storeId, user);
			
			//Session session = SecurityUtils.getSubject().getSession();
			/*userLogin.put("userId", session.getAttribute("userSessionId"));
			userLogin.put("accountName", username);
			userLogin.put("loginIP", session.getHost());*/
			//userLoginMapper.addEntity(userLogin);
			request.removeAttribute("error");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "登录异常，请联系管理员！");
			return "redirect:/login/login";
		}
		return "redirect:/";
	}

	private void setAttributeToSession(String userName, int storeId, Subject user) {
		Stores stores = storesService.getOneById(storeId);
		SecurityUtils.getSubject().getSession().setAttribute("stores", stores);
		List<User> userEntity = userService.findUserByName(userName);
		SecurityUtils.getSubject().getSession().setAttribute("user", user);
		SecurityUtils.getSubject().getSession().setAttribute("employ", employeeService.getOneById(userEntity.get(0).getEmployId()));
	}
}
