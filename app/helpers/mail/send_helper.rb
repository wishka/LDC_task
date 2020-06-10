package main

import (
    "fmt"
    "github.com/sendgrid/sendgrid-go"
    "github.com/sendgrid/sendgrid-go/helpers/mail"
    "os"
)

func main() {
    from := mail.NewEmail("Example User", "test@example.com")
    subject := "Hello World from the SendGrid Go Library"
    to := mail.NewEmail("Example User", "test@example.com")
    content := mail.NewContent("text/plain", "some text here")
    m := mail.NewV3MailInit(from, subject, to, content)

    request := sendgrid.GetRequest(os.Getenv("SENDGRID_API_KEY"), "/v3/mail/send", "https://api.sendgrid.com")
    request.Method = "POST"
    request.Body = mail.GetRequestBody(m)
    response, err := sendgrid.API(request)
    if err != nil {
        fmt.Println(err)
    } else {
        fmt.Println(response.StatusCode)
        fmt.Println(response.Body)
        fmt.Println(response.Headers)
    }
}
