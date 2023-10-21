package basicRestAssured;

import org.json.JSONObject;
import org.junit.jupiter.api.Test;

import java.io.File;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.equalTo;


public class BasicRestAssured2 {

    @Test
    public void verifyCreateProjectJsonObject(){
        JSONObject body = new JSONObject();
        body.put("Content","UCB_JsonObject");
        body.put("Icon",8);


        given()
                .auth()
                .preemptive()
                .basic("ucb2023@ucb2023.com","12345")
                .body(body.toString())
                .log().all()
       .when()
                .post("https://todo.ly/api/projects.json")
       .then()
                .statusCode(200)
                .body("Content",equalTo("UCB_JsonObject"))
                .log().all();

    }


}
