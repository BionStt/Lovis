﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace lovis.Controllers.Email
{
    public class Email
    {
        public static void SendEmailElementNotification(string useremail, string projectname, string elementtitle, string elementsummary, string elementtype, string elementstate, string elementpriority, string elementassignedto, string elementdatecreation, string elementdatestart, string elementdatefinish, string name, string assignedby)
        {
            var fromAddress = new MailAddress(Controllers.Const.Const.EmailUsername, "Lovis");
            var toAddress = new MailAddress(useremail, name);
            string fromPassword = Controllers.Const.Const.EmailPassword;
            string subject = "Lovis | A task has been assigned to you.";

            string mailTitle = @"<h1 style=""text-align:center;"">Lovis</h1><hr>";
            string mailIntroduction = @"<p>A task was assigned to you in " + projectname + " by " + assignedby + ".</p>";
            string mailElementTitle = @"<p><b>Title:</b> " + elementtitle + ".</p>";
            string mailSummary = @"<p><b>Summary:</b> " + elementsummary + ".</p>";
            string mailType = @"<p><b>Type:</b> " + elementtype + ".</p>";
            string mailState = @"<p><b>State:</b> " + elementstate + ".</p>";
            string mailPriority = @"<p><b>Priority:</b> " + elementpriority + ".</p>";
            string mailAssignedto = @"<p><b>Assigned to:</b> " + elementassignedto + ".</p>";
            string mailDatecreation = @"<p><b>Date creation:</b> " + elementdatecreation + ".</p>";
            string mailDatestart = @"<p><b>Date start:</b> " + elementdatestart + ".</p>";
            string mailDatefinish = @"<p><b>Date finish:</b> " + elementdatefinish + ".</p>";
            string mailFooter = @"<hr><p style=""text-align:center; color: gray;"">This message was autamatically generated by Lovis as a notification.</p>";
            string body = mailTitle + mailIntroduction + mailElementTitle + mailSummary + mailType + mailState + mailPriority + mailAssignedto + mailDatecreation + mailDatestart + mailDatefinish + mailFooter;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                message.IsBodyHtml = true;
                smtp.Send(message);
            }
        }

        public static void SendEmailProjectNotification(string useremail, string projectname, string projectsummary, string projectowner, string projectwebsite, string projectrepository, string projectsupport, string name)
        {
            var fromAddress = new MailAddress(Controllers.Const.Const.EmailUsername, "Lovis");
            var toAddress = new MailAddress(useremail, name);
            string fromPassword = Controllers.Const.Const.EmailPassword;
            string subject = "Lovis | Project " + projectname + " successfully created.";

            string mailTitle = @"<h1 style=""text-align:center;"">Lovis</h1><hr>";
            string mailIntroduction = @"<p>You have successfully created " + projectname + ".</p>";
            string mailSummary = @"<p><b>Summary:</b> " + projectsummary + ".</p>";
            string mailOwner = @"<p><b>Owner:</b> " + projectowner + ".</p>";
            string mailWebsite = @"<p><b>Website:</b> " + projectwebsite + ".</p>";
            string mailRepository = @"<p><b>Repository:</b> " + projectrepository + ".</p>";
            string mailSupport = @"<p><b>Support:</b> " + projectsupport + ".</p>";
            string mailFooter = @"<hr><p style=""text-align:center; color: gray;"">This message was autamatically generated by Lovis as a notification.</p>";
            string body = mailTitle + mailIntroduction + mailSummary + mailOwner + mailWebsite + mailRepository + mailSupport + mailFooter;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                message.IsBodyHtml = true;
                smtp.Send(message);
            }
        }

        public static void SendEmailConfirmationRegistration(string useremail, string token, string name, string surname, DateTime dateexpiration)
        {
            var fromAddress = new MailAddress(Controllers.Const.Const.EmailUsername, "Lovis");
            var toAddress = new MailAddress(useremail, name);
            string fromPassword = Controllers.Const.Const.EmailPassword;
            string subject = "Lovis | Confirm your registration.";

            string generateLink = "http://localhost:58845/Views/Confirmation/Confirmation.aspx" + "?token=" + token + "?useremail=" + useremail;

            string mailTitle = @"<h1 style=""text-align:center;"">Lovis</h1><hr>";
            string mailIntroduction = @"<p style=""text-align:center;"">Dear " + name + " " + surname + " click in the following link to confirm your registration, this link last will until " + dateexpiration.ToString() + ".</p>";
            string mailLink = @"<p style=""text-align:center;""><b> <a href=" + generateLink + ">Click here</a>" + "</b>.</p>";
            string mailFooter = @"<hr><p style=""text-align:center; color: gray;"">This message was autamatically generated by Lovis as a notification.</p>";
            string body = mailTitle + mailIntroduction + mailLink + mailFooter;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                message.IsBodyHtml = true;
                smtp.Send(message);
            }
        }

        public static void SendEmailInvitationProject(string useremail, string owner, string token, string name, string surname, string projectname, DateTime dateexpiration)
        {
            var fromAddress = new MailAddress(Controllers.Const.Const.EmailUsername, "Lovis");
            var toAddress = new MailAddress(useremail, name);
            string fromPassword = Controllers.Const.Const.EmailPassword;
            string subject = "Lovis | You have been invited to " + projectname + ".";

            string generateLink = "http://localhost:58845/Views/Confirmation/ConfirmationProject.aspx" + "?token=" + token;

            string mailTitle = @"<h1 style=""text-align:center;"">Lovis</h1><hr>";
            string mailIntroduction = @"<p style=""text-align:center;"">" + owner + " has invited you to " + projectname + ". This invitation will last until " + dateexpiration.ToString() + ".</p> ";
            string mailLink = @"<p style=""text-align:center;""><b> <a href=" + generateLink + ">Click here to accept the invitation</a>" + "</b>.</p>";
            string mailFooter = @"<hr><p style=""text-align:center; color: gray;"">This message was autamatically generated by Lovis as a notification.</p>";
            string body = mailTitle + mailIntroduction + mailLink + mailFooter;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                message.IsBodyHtml = true;
                smtp.Send(message);
            }
        }

        public static void SendEmailUserAcceptedInvitation(string useremail, string token, string name, string surname, string projectname, DateTime dateexpiration)
        {
            var fromAddress = new MailAddress(Controllers.Const.Const.EmailUsername, "Lovis");
            var toAddress = new MailAddress(useremail, name);
            string fromPassword = Controllers.Const.Const.EmailPassword;
            string subject = "Lovis | " + name + " " + surname + " accepted your invitation for " + projectname + ".";

            string mailTitle = @"<h1 style=""text-align:center;"">Lovis</h1><hr>";
            string mailIntroduction = @"<p style=""text-align:center;"">The invitation sent to " + name + " " + surname + " for " + projectname + " has been accepted.</p> ";
            string mailFooter = @"<hr><p style=""text-align:center; color: gray;"">This message was autamatically generated by Lovis as a notification.</p>";
            string body = mailTitle + mailIntroduction + mailFooter;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                message.IsBodyHtml = true;
                smtp.Send(message);
            }
        }
    }
}