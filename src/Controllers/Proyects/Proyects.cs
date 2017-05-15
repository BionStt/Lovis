﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace lovis.Controllers.Proyects
{
    public class Proyects
    {
        #region ATTRIBUTES

        public string Id { get; set; }
        public string Title { get; set; }
        public string Summary { get; set; }
        public string IdLicense { get; set; }

        #endregion

        #region CONSTRUCTORS

        /// <summary>
        /// Empty constructor
        /// </summary>
        public Proyects() { }

        /// <summary>
        /// Constructor filled with a Proyect
        /// </summary>
        /// <param name="P"></param>
        public Proyects(Proyects P) { }

        /// <summary>
        /// Constructor filled with current User
        /// </summary>
        /// <param name="u"></param>
        public Proyects(Users.Users u) { }

        /// <summary>
        /// Constructor that creates a proyect, creates a license for it and then creates a UserLicense linking the new License and the user that created
        /// this proyect.
        /// </summary>
        /// <param name="title"></param>
        /// <param name="summary"></param>
        /// <param name="idTemplate"></param>
        /// <param name="idLicense"></param>
        /// <param name="u"></param>
        public Proyects(string title, string summary, string idLicense, Users.Users u)
        {
            Id = Security.CryptoUtils.SHA256HashStringForUTF8String(lovis.Security.CryptoUtils.RandomKey());
            Title = Security.CryptoUtils.EncodeElementString(this, title);
            Summary = Security.CryptoUtils.EncodeElementString(this, summary);

            // Create a new License for this PROYECT
            License.License L = new License.License(u);

            // Set IdLicense for this Proyect IDLICENSE
            IdLicense = L.Id;

            // Create a UserLicens with this new IdLicense and IdUser
            UserLicense.UserLicense UL = new UserLicense.UserLicense(u.Id, idLicense, 0, false);
        }

        #endregion

        #region GET PROYECTS

        public Proyects DecodeProyect(Proyects p)
        {


            p.Title = Security.CryptoUtils.DecodeElementString(p, p.Title);
            p.Summary = Security.CryptoUtils.DecodeElementString(p, p.Summary);

            return p;
        }

        public List<Proyects> GetAllDecodedProyects(UserLicense.UserLicense UL)
        {
            List<Proyects> LP = new List<Proyects>();

            // Its necessary to fill this LIST with Proyects from the license
            // which is coming from the UserLicense table, do a query where the
            // UL.idUser is the same as the current USER



            foreach (Proyects p in LP)
            {
                p.DecodeProyect(p);
            }

            return LP;
        }

        #endregion

        #region NEW 

        /// <summary>
        /// Method that adds proyect to database
        /// </summary>
        public void New()
        {
            // Add to database
            // entityframework
        }

        #endregion

        #region EDIT

        public void Edit(string title, string summary)
        {
            // Edit in database
            // Entityframework

            Title = Security.CryptoUtils.EncodeElementString(this, title);
            Summary = Security.CryptoUtils.EncodeElementString(this, summary);



        }

        #endregion

        #region REMOVE

        public void Remove()
        {

        }

        #endregion
    }
}