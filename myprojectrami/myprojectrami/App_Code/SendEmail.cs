
using System.Net.Mail;
using System.Net;
using System;

public class SendEmail
    {
        public void Send(string email, string subject, string body, string code)
        {
            SmtpClient Client = new SmtpClient()
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential()
                {
                    UserName = "theworldofpc89@gmail.com",
                    Password = "zmotyyjdzpetkmsi"
                }

            };
            MailAddress FromEmail = new MailAddress("theworldofpc89@gmail.com", "‪website pc‬‏");
            string ToEmail = email;
            MailMessage Message = new MailMessage()
            {
                From = FromEmail,
                Subject = subject,
                Body = body + code
            };

            Message.To.Add(ToEmail);

            Client.Send(Message);

        }
    public bool ChkEmail(string email)
    {
        try
        {
            MailAddress Email = new MailAddress(email, "‪Someone‬‏");
        }
        catch (Exception ex)
        {

            return false;
        }
       

        return true;
    }
         public string GetCode(int length)
         {
             char[] chArray = { 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' };

             string str ="";
             Random ran = new Random();
             for (int i = 0; i < length; i++)
             {
                 int index = ran.Next(1, chArray.Length);
                 
                     str = str + chArray[index];
   
             }
             return str;
         }

}
