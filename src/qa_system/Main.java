package qa_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.DatabaseMetaData;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class Main extends ActionSupport{
	public String Username;
	public String Password;
	public String choose_text;
	public String choosea;
	public String chooseb;
	public String choosec;
	public String choosed;
	public String answer;
	public String hard;
	public String[] problems;
	ArrayList<String> Description = new ArrayList<String>();
	ArrayList<String> Answer1 = new ArrayList<String>();
	ArrayList<String> HardLevel = new ArrayList<String>();
	ArrayList<String> ExamList = new ArrayList<String>();
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

	public String getChoose_text() {
		return choose_text;
	}
	public void setChoose_text(String choose_text) {
		this.choose_text = choose_text;
	}
	public String getChoosea() {
		return choosea;
	}
	public void setChoosea(String choosea) {
		this.choosea = choosea;
	}
	public String getChooseb() {
		return chooseb;
	}
	public void setChooseb(String chooseb) {
		this.chooseb = chooseb;
	}
	public String getChoosec() {
		return choosec;
	}
	public void setChoosec(String choosec) {
		this.choosec = choosec;
	}
	public String getChoosed() {
		return choosed;
	}
	public void setChoosed(String choosed) {
		this.choosed = choosed;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getHard() {
		return hard;
	}
	public void setHard(String hard) {
		this.hard = hard;
	}
	
	public ArrayList<String> getDescription() {
		return Description;
	}
	public void setDescription(ArrayList<String> description) {
		Description = description;
	}
	public ArrayList<String> getHardLevel() {
		return HardLevel;
	}
	public void setHardLevel(ArrayList<String> hardLevel) {
		HardLevel = hardLevel;
	}
	public ArrayList<String> getAnswer1() {
		return Answer1;
	}
	public void setAnswer1(ArrayList<String> answer1) {
		Answer1 = answer1;
	}
	public String[] getProblems() {
		return problems;
	}
	public void setProblems(String[] problems) {
		this.problems = problems;
	}
	
	public ArrayList<String> getExamList() {
		return ExamList;
	}
	
	public void setExamList(ArrayList<String> examList) {
		ExamList = examList;
	}
	
	public String login_name() throws SQLException {
		Statement stmt = (Statement) Tool.initSQL("user", "root","qazwsx@34");
		ResultSet rs = stmt.executeQuery("select * from user1 where username=\""+Username+"\"");
		if(!rs.next()){
			System.out.println("dwd");
			return ERROR;
		}
		if(Username.equals(rs.getString("Username"))&&Password.equals(rs.getString("password"))&&rs.getString("whose").equals("teacher")) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String judge() throws SQLException {
		Statement stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
		stmt.executeUpdate("INSERT INTO judge (description, answer, hardlevel)VALUES(\""+choose_text+"\", \""+answer+"\", \""+hard+"\")");
		return "success";
		
	}
	
	public String choose() throws SQLException {
		Statement stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
		stmt.executeUpdate("INSERT INTO choose (description, optiona,optionb,optionc,optiond,answer, hardlevel)VALUES(\""+
		choose_text+"\", \""+choosea+"\", \""+chooseb+"\", \""+choosec+"\", \""+choosed+"\", \""+answer+"\", \""+hard+"\")");
		return "success";
		
	}
	public String question() throws SQLException {
		Statement stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
		stmt.executeUpdate("INSERT INTO question (description, answer, hardlevel)VALUES(\""+choose_text+"\", \""+answer+"\", \""+hard+"\")");
		return "success";
		
	}
	
	public String search() throws SQLException{
		Statement stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
		ResultSet rs = stmt.executeQuery("select * from choose");
		while(rs.next()) {
			Description.add("选择题:"+rs.getString("description"));
			//System.out.println(rs.getString("description"));
			Answer1.add(rs.getString("answer"));
			HardLevel.add(rs.getString("hardlevel"));
		}
		rs = stmt.executeQuery("select * from judge");
		while(rs.next()) {
			Description.add("判断题:"+rs.getString("description"));
			//System.out.println(rs.getString("description"));
			Answer1.add(rs.getString("answer"));
			HardLevel.add(rs.getString("hardlevel"));
		}
		rs = stmt.executeQuery("select * from question");
		while(rs.next()) {
			Description.add("问答题:"+rs.getString("description"));
			//System.out.println(rs.getString("description"));
			Answer1.add(rs.getString("answer"));
			HardLevel.add(rs.getString("hardlevel"));
		}
		return SUCCESS;
	}
	
	public String ConstructTest() throws SQLException {
		Statement stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
		Statement stmt1 = (Statement) Tool.initSQL("test", "root","qazwsx@34");
		ResultSet rs;
		int CN=0;
		int JN=0;
		int QN=0;
		rs=stmt1.executeQuery("select * from num");
		if(!rs.next()){
			System.out.println("未知错误");
			return ERROR;
		}
		int id= rs.getInt("id");
		stmt1.executeUpdate("UPDATE num SET id= "+Integer.toString(id+1)+ " WHERE id= "+Integer.toString(id));
		String table = "exam"+Integer.toString(id+1);
		stmt1.executeUpdate("create table "+table+" (type varchar(20) NOT NULL,description varchar(400),optiona varchar(20),"
				+ "optionb varchar(20),optionc varchar(20),optiond varchar(20),answer varchar(50),hardlevel varchar(20))");
		for(int i=0;i<problems.length;i++) {
			String a[]=problems[i].split(":");
			String descrp=problems[i].substring(4);
			System.out.println(a[0]);
			System.out.println(descrp);
			if(a[0].equals("选择题")) {
				CN++;
				rs = stmt.executeQuery("select * from problem.choose where description=\""+descrp+"\"");
				if(!rs.next()){
					System.out.println("c未知错误");
					return ERROR;
				}
				String optiona = rs.getString("optiona");
				String optionb = rs.getString("optionb");
				String optionc = rs.getString("optionc");
				String optiond = rs.getString("optiond");
				String answer = rs.getString("answer");
				String hard=rs.getString("hardlevel");
				stmt1.executeUpdate("INSERT INTO "+table+" (type,description, optiona,optionb,optionc,optiond,answer, hardlevel)VALUES(\""+
						"choose"+"\", \""+descrp+"\", \""+optiona+"\", \""+optionb+"\", \""+optionc+"\", \""+optiond+"\", \""+answer+"\", \""+hard+"\")");
				
				
				
			}
			else if(a[0].equals("判断题")) {
				JN++;
				stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
				rs = stmt.executeQuery("select * from problem.judge where description=\""+descrp+"\"");
				if(!rs.next()){
					System.out.println("j未知错误");
					return ERROR;
				}
				String answer = rs.getString("answer");
				String hard=rs.getString("hardlevel");
				stmt1.executeUpdate("INSERT INTO "+ table+" ( type,description, answer, hardlevel)VALUES(\""+"judge"+"\", \""+descrp+"\", \""+answer+"\", \""+hard+"\")");
				
				
			}
			else {
				QN++;
				stmt = (Statement) Tool.initSQL("problem", "root","qazwsx@34");
				rs = stmt.executeQuery("select * from problem.question where description=\""+descrp+"\"");
				System.out.println(descrp);
				if(!rs.next()){
					System.out.println("q未知错误");
					return ERROR;
				}
				String answer = rs.getString("answer");
				String hard=rs.getString("hardlevel");
				stmt1.executeUpdate("INSERT INTO "+"  "+ table+" ( type,description, answer, hardlevel)VALUES(\""+"question"+"\", \""+descrp+"\", \""+answer+"\", \""+hard+"\")");
				
			}
		}
		return SUCCESS;
		
	}
	

	
	public String exam() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"test"+"?characterEncoding=utf8","root","qazwsx@34"); 
		DatabaseMetaData databaseMetaData = (DatabaseMetaData) connect.getMetaData();
		ResultSet tables = databaseMetaData.getTables(null, null, "%", null);
		while (tables.next()) {
			if("num".equals(tables.getString("TABLE_NAME"))) {
				continue;
			}
			ExamList.add(tables.getString("TABLE_NAME"));
			HardLevel.add(GetHardLevel(tables.getString("TABLE_NAME")));
		}
		return SUCCESS;
		
		
	}
	public String GetHardLevel(String TableName) throws SQLException {
		Statement stmt = (Statement) Tool.initSQL("test", "root","qazwsx@34");
		ResultSet rs = stmt.executeQuery("select * from "+TableName);
		int hard=0;
		int i=0;
		while(rs.next()) {
			hard += Integer.parseInt((rs.getString("hardlevel")));
			i++;
		}
		float hl=hard/i;
		return String.valueOf(hl);
	}
	
	
	
	
	
}
