package daos;

import dbhelper.DBUtils;
import dtos.Account;
import dtos.Answer;
import dtos.Question;
import dtos.Quiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;

/**
 *
 * @author macbookpro2018
 */
public class QuizDAO {

    public ArrayList<String> getQuizsIDbyType(String type) throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        String sql = "SELECT QuizID FROM Quiz WHERE QuizType=?";

        ArrayList<String> list = new ArrayList();
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pstm = con.prepareStatement(sql);
                pstm.setString(1, type);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    list.add(rs.getString("QuizID"));
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return list;
    }

    public Quiz getQuizbyQuizID(String QuizID) throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Question WHERE QuizID=?";

        ArrayList<Question> list = new ArrayList();
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pstm = con.prepareStatement(sql);
                pstm.setString(1, QuizID);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    list.add(new Question(rs.getString("QuestionID"),
                            rs.getString("QuizID"),
                            rs.getString("Question"),
                            rs.getString("ImageUrl"),
                            getAnswersbyQuestionID(rs.getString("QuestionID"))));
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return new Quiz(list);
    }

    public ArrayList<Answer> getAnswersbyQuestionID(String QuestionID) throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Answer WHERE QuestionID=?";

        ArrayList<Answer> list = new ArrayList();
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pstm = con.prepareStatement(sql);
                pstm.setString(1, QuestionID);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    list.add(new Answer(rs.getString("QuestionID"),
                            rs.getString("Answer"),
                            rs.getString("isCorrect")));
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return list;
    }

    public static void main(String[] agrs) throws NamingException, SQLException {
//        QuizDAO accDAO = new QuizDAO();
//        Account acc = new Account("user1", "123123", "user");
//        boolean check = accDAO.register(acc);
//        System.out.println(check);
    }

}