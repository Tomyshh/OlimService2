import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  //TODO : implement keys

  Map<String, Map<String, String>> get keys => {
        //French Langage
        'fr_FR': {
          'Name':'Prénom',
          'LastName':'Nom',
          'Mail': 'E-mail',
          'Connexion': 'Connexion',
          'SignIn': 'Connexion',
          'Password': 'Mot de passe',
          'FPassword': 'Mot de passe oublié',
          'NotAbbo': 'Pas encore abboné ? Inscrivez-vous !',
          'Signup':'Inscription',
          'NewRequest': 'Nouvelle demande',
          'MyRequest': 'Mes demandes',
          'MyInformations': 'Mes informations',
          'MyDocs': 'Mes documents',
          'RDV': 'Mes rendez-vous',
          'WebAcces': 'Mes accès internet',
          'PayOnline': 'Paiement en ligne',
          'WEG': 'Eau, gaz, électricité...',
          'Translation': 'Traduction',
          'SMSLettersBills': 'SMS,courrier, lettres...',
          'MakAppoint': 'Prise de RDV',
          'BanksMedical': 'Banques, médeçin...',
          'WriteMessage': 'Rédiger un message',
          'YourMessageTranslat': 'Votre message traduit',
          'FillDocument': 'Remplir un document',
          'BitouahTownHallSchool': 'Bitouah Leumi, mairie, école...',
          'ConversA3': 'Conversation \nà 3',
          'AdvisAtYourDisposal': 'Un conseiller à votre disposition',
          'Sub': 'Abbonements',
          'TVinternetTel': 'TV, internet, téléphone...',
          'FarReq': 'Demande farfelue...',
          'Other': 'Autres',
          'Welcome': 'Bienvenue',
          'Languages': 'Languages',
          'Catego': 'Type de rendez-vous',
          'AddText': 'Ajoutez un texte',
          'AddImageFichier': 'Ajoutez des images/fichiers',
          'YourText': 'Votre texte...',
          'RDVmed': 'Rendez-vous médical',
          'Med': 'Médicale',
          'TpsResMed': "Temps d'attente moyen : \n4 heures",
          'TpsResBank': "Temps d'attente moyen : \n2 heures",
          'TpsResAklita': "Temps d'attente moyen : \n4 heures",
          'TpsResDef': "Temps d'attente moyen : \n2 heures",
          'TpsResPost': "Temps d'attente moyen : \n2 heures",
          'TpsResMairie': "Temps d'attente moyen : \n 1 jour",
          'TpsRes': "Temps d'attente moyen : \n4 heures",
          'PrisedeRDV': 'Prise de rendez-vous',
          'Bank': 'Banque',
          'BureauDef': 'Ministère de la défense',
          'MisradAklita': "Ministère de l'intégration",
          'MisradApnim': "Ministère de l'interieur",
          'Post': 'Poste',
          'Municipality': 'Mairie',
          'TextToTrad': 'Votre message à traduire...',
          'Question':
              "Quel message souhaitez-vous \n que l'on redige en Hébreu?",
          'CB': 'Carte bleu',
          'NoImage': 'Aucune image selectionné',
          'Gallery': 'Gallerie',
          'Camera': 'Camera',
          'YourDoc': 'Votre document à remplir',
          'YourBill': 'Veuillez joindre ci-dessous votre facture à payer ',
          'Convers3': 'Conversation à trois',
          'ExplainYourText':
              'Avec qui souhaitez vous entretenir la conversation ?',
          'Abo': 'Abonnement',
          'QuestionAbo': 'Indiquez à quel abonnement souhaitez-vous souscrire',
          'Others': 'Indiquez tout autre type de demande',
          'TradDoc': 'Traduction de documents',
          'Inscription': 'Inscription',
          'Birth':'Date de naissance',
          'MyAbbo':'Mon abonnement',
          'Gender':'Genre',
          'Male':'Masculin',
          'Female':'Feminin',
          'City':'Ville',
          'Adresse':'Adresse',
          'AcceptTerm':"J'ai lu et j'approuve les",
          'TermAndCondition':' termes et conditions',
          'ConfirmPassword':'Confirmation de mot de passe',
          'Phone':'Téléphone',
          'LastName':'Nom',
          'FirstName':'Prénom',
          'Age':'Âge',
          'Submit':'Suivant',
          "ID":"Numéro d'identité",
          'CocherAccept':'Vous devew accepter les termes et conditions',
          'QueltypedeRDV':'Quel type de rendez-vous souhaitez-vous prendre ?',
          'InfoPerso':'Informations personelles',
          'Country':'Pays',
          'IDandCo':'Identification et connexion',
          'AlreadyRegister?':'Vous avez déjà un compte ?',
          'Partner':'Partenariat',
          'SeeAll':'Voir tout',
          'Construction':'Travaux - Rénovation',
          'ConstructionSentence':'Vos travaux aux plus bas prix avec nos partenaires !',
          "RealEstate":'Immobilier',
          "RealEstateSentence":'Olim vous aide à effectuer vos transactions immobilières - Achat & vente',
          'Plumber':'Plomberie',
          'PlumberSentence':'Olim vous donne tous les bon tuyaux !',
          'Services':'Services',
          'Assurance':'Assurance',
          'AssuranceSentence':'Santé, maison, voiture, vie, Olim assure dans tous les domaines !',
          'Juridique':'Service juridique - Avocat',
          'JuridiqueSentence':'Olim met à votre disposition une protection sans égale',
          'BankSentence':"Votre argent n'a jamais été aussi bien gardé",
          'Info':'Depannage informatique',
          'InfoSentence':'Olim vous garde branché !',
          'Tel':'Opérateur téléphonique - Internet',
          'TelSentence':'Les meilleurs forfaits internet et téléphone !',
          'Electric':'Électricité',
          'ElectricSentence':'Olim vous met en relation avec ses éléctricien partenaires',
          'Climatisation':'Climatisation',
          'ClimatisationSentence':'Toujours à la bonne température',
          'Vitre':'Laveur de vitre',
          'VitreSentence':'Des vitres propres et une maison lumineuse',
          'Electromenager':'Électroménager',
          'ElectromenagerSentence':'Les meilleurs tarifs pour votre électromenager',
          'Type':'Types',
          'ErrorAuth':'E-mail ou mot de passe incorrect',
          'Previous':'Précédent',
          'Next':'Suivant',
          'EncoreQuelqueEtapes':'Encore quelque étapes...',
          'BientotTermine':'Nous avons bientôt terminé...',
          'OnYEstPresque':'On y est presques...',
          'Married':'Marié',
        },
        //English Langage
        'en_US': {
          'Name':'First name',
          'LastName':'Last Name',
          'Mail': 'E-mail',
          'Connexion': 'Connexion',
          'Welcome': 'Welcome',
          'SignIn': 'Sign In',
          'Password': 'Password',
          'FPassword': 'Forgot password',
          'NotAbbo': 'Not subscribed yet? Sign up !',
          'Signup':'Sign up',
          'NewRequest': 'New request',
          'MyRequest': 'My request',
          'MyInformations': 'My informations',
          'MyDocs': 'My files',
          'RDV': 'My appointments',
          'WebAcces': 'Web access',
          'PayOnline': 'Online payment',
          'WEG': 'Water, gaz, electricity...',
          'Translation': 'Translation',
          'SMSLettersBills': 'SMS, letters, bills...',
          'MakAppoint': 'Making appointment',
          'BanksMedical': 'Bank, medical...',
          'WriteMessage': 'Write a message',
          'YourMessageTranslat': 'Your message translated',
          'FillDocument': 'Fill a document',
          'BitouahTownHallSchool': 'Bitouah Leumi, townhall, school...',
          'ConversA3': 'Three-way calling',
          'AdvisAtYourDisposal': 'An advisor at your disposal',
          'Sub': 'Subpscription',
          'TVinternetTel': 'TV, internet, phone...',
          'FarReq': 'Farfetched request...',
          'Other': 'Others',
          'Languages': 'Languages',
          'Catego': 'Type of appointment',
          'AddText': 'Add text',
          'AddImageFichier': 'Add pictures/files',
          'YourText': 'Your text...',
          'RDVmed': 'Medical appointment',
          'Med': 'Medical',
          'TpsResMed': 'Average waiting time : \n1 hours',
          'TpsResBank': "Average waiting time : \n2 hours",
          'TpsResAklita': "Average waiting time : \n4 hours",
          'TpsResDef': "Average waiting time : \n2 hours",
          'TpsResPost': "Average waiting time : \n2 hours",
          'TpsResMairie': "Average waiting time : \n 1 day",
          'PrisedeRDV': 'Making appointment',
          'Bank': 'Bank',
          'BureauDef': 'Ministry of defense',
          'MisradAklita': "Ministry of Integration",
          'MisradApnim': 'Ministry of Interior',
          'Post': 'Post office',
          'Municipality': 'Municipality',
          'TextToTrad': 'Your text to translate',
          'Question': "What message would you like us\nto write in Hebrew?",
          'CB': 'Credit card',
          'NoImage': 'No image captured',
          'Gallery': 'Gallery',
          'Camera': 'Camera',
          'YourDoc': 'Your file to fill',
          'YourBill': 'Please attach your invoice to pay below',
          'Convers3': 'Threesome conversation',
          'ExplainYourText': 'Who would you like to talk to ?',
          'Abo': 'Subscription',
          'QuestionAbo': 'Indicate which subscription you wish to subscribe to',
          'Others': 'Indicate any other type of request',
          'TradDoc': 'Translation of documents',
          'Inscription': 'Subscription',
          'Birth':'Date of birth',
          'MyAbbo':'My subscription',
          'Gender':'Gender',
          'Male':'Male',
          'Female':'Female',
          'City':'City',
          'Adresse':'Adress',
          'AcceptTerm':"I have read and agree to the",
          'TermAndCondition':' terms and conditions',
          'ConfirmPassword':'Password confirmation',
          'Phone':'Phone number',
          'Phone':'Phone',
          'LastName':'LastName',
          'FirstName':'FirstName',
          'Age':'Age',
          'Submit':'Next',
          "ID":"ID",
          'CocherAccept':'You must accept terms and conditions to continue',
          'QueltypedeRDV':'What type of appointment would you like to make',
          'InfoPerso':'Personal information',
          'Country':'Country',
          'IDandCo':'Identification and connection',
          'AlreadyRegister?':'Already have an account ?',
          'Partner':'Partner',
          'SeeAll':'See All',
          'Construction':'Construction',
          'ConstructionSentence':'Your construction at the lowest prices with our partners !',
          "RealEstate":'Real Estate',
          "RealEstateSentence":'Olim helps you with your real estate transactions - Buy & sell',
          'Plumber':'Plumber',
          'PlumberSentence':'Olim gives you all the good tips !',
          'Services':'Services',
          'Assurance':'Insurance',
          'AssuranceSentence':'Health, house, car, life, Olim insures in all areas!',
          'Juridique': 'Legal Department',
          'JuridiqueSentence': 'Olim provides you with unparalleled protection',
          'BankSentence':"Your money has never been better guarded",
          'Info':'Computer troubleshooting',
          'InfoSentence':'Olim keep you connected!',
          'Tel':'Telephone operator - Internet',
          'TelSentence':'The best internet and phone packages!',
          'Electric':'Electricity',
          'ElectricSentence':'Olim puts you in touch with its partner electricians',
          'Climatisation':'Air conditioning',
          'ClimatisationSentence':'Always at the right temperature',
          'Vitre': 'Window cleaner',
          'VitreSentence': 'Clean windows and a bright house',
          'Electromenager':'Appliances',
          'ElectromenagerSentence':'The best rates for your household appliances',
          'Type':'Types',
          'ErrorAuth':'Incorrect email or password',
          'Previous':'Previous',
          'Next':'Next',
          'EncoreQuelqueEtapes':'A few more steps...',
          'BientotTermine':'Hold on ...',
          'OnYEstPresque':'We are almost there...',
          'Married':'Married',
        },
        //Hebrew language
        'he_IL': {
          'Name':'שם פרטי',
          'Mail': 'דואל אלקטרוני',
          'Connexion': 'התחברות',
          'Welcome': 'ברוך הבא',
          'SignIn': 'התחברות',
          'Password': 'סיסמא',
          'FPassword': 'שכחת סיסמא',
          'NotAbbo': 'עוד לא רשום ? רשמ/י עכשיו !',
          'Signup':'רשם/י',
          'NewRequest': 'בקשה חדשה',
          'MyRequest': 'בקשות שלי',
          'MyInformations': 'מידע שלי',
          'MyDocs': 'התיקים שלי',
          'RDV': 'תורים',
          'WebAcces': 'פרטי אינטרנט',
          'PayOnline': 'תשלום אונלין',
          'WEG': 'מים, גז, חשמל...',
          'Translation': 'תרגום',
          'SMSLettersBills': 'הודעה, מכתב, חשבונית..',
          'MakAppoint': 'קביעת תור',
          'BanksMedical': 'בנק, רופא...',
          'WriteMessage': 'כתוב הודעה',
          'YourMessageTranslat': 'הודעה מתורגמת',
          'FillDocument': 'מילוי תפסים',
          'BitouahTownHallSchool': 'ביטוח לאומי, עירייה, בית ספר...',
          'ConversA3': 'שיחה על 3',
          'AdvisAtYourDisposal': 'מייעץ עוזר לך',
          'Sub': 'מנויים',
          'TVinternetTel': 'טלוויזיה, אינטרנת, טלפון...',
          'FarReq': 'בקשות נוספות...',
          'Other': 'אחר',
          'Languages': 'שפות',
          'Catego': 'סוג התור',
          'AddText': 'הוסף טקסט',
          'AddImageFichier': 'הוסף תמונות/קבצים',
          'YourText': 'הטקסט שלך... ',
          'RDVmed': 'תור רפואי',
          'Med': 'רפאוי',
          'TpsResMed': 'זמן המתנה משוערך :\nשעה אחת',
          'TpsResBank': "זמן המתנה משוערך :\nשעתיים",
          'TpsResAklita': "זמן המתנה משוערך :\n ארבע שעות",
          'TpsResDef': "זמן המתנה משוערך :\nשעתיים",
          'TpsResPost': "זמן המתנה משוערך :\nשעתיים",
          'TpsResMairie': "זמן המתנה משוערך :\nיום אחד",
          'PrisedeRDV': 'קביעת תור',
          'Bank': 'בנק',
          'BureauDef': 'משרד הביטחון',
          'MisradAklita': "משרד הקליטה",
          'MisradApnim': 'משרד הפנים',
          'Post': 'דואר ישראל',
          'Municipality': 'עירייה',
          'TextToTrad': 'הטקסט שלך לתרגום',
          'Question': "מה תרצה שנתרגם לך ",
          'CB': 'כרטיס אשראי',
          'NoImage': 'אין תמונה',
          'Gallery': 'גלריה',
          'Camera': 'מצלמה',
          'YourDoc': 'המסמך שלך לתרגום',
          'YourBill': 'החשבונית שלך לתשלום',
          'Convers3': 'שיחה בשלושה',
          'ExplainYourText': 'עם מי תרצה/י לבצע את השיחה ?',
          'Abo': 'מנויים',
          'QuestionAbo': 'לאיזה מנוי תרצה להירשם ?',
          'Others': 'ציין כל סוג אחר של בקשה',
          'TradDoc': 'תרגום של מסמכים',
          'Birth':'תאריך לידה',
          'MyAbbo':'המנוי שלי',
          'Gender':'מין',
          'Male':'זכר',
          'Female':'נקבה',
          'City':'עיר',
          'Adresse':'כתובת',
          'AcceptTerm':"קראתי והסכמתי ל-",
          'TermAndCondition':'תנאי שימוש ',
          'ConfirmPassword':'אימות סיסמא',
          'Phone':'טלפון נייד',
          'LastName':'שם משפחה',
          'FirstName':'שם פרטי',
          'Age':'גיל',
          'Submit':'הבא',
          "ID":"תעודת זהות",
          'QueltypedeRDV':'איזה תור תרצה לקבוע ?',
          'InfoPerso':'פרטים אישיים',
          'Country':'מדינה',
          'IDandCo':'פרטי זיהוי',
          'AlreadyRegister?':' כבר רשום/ה ?',
          'Partner':'פרטנר',
          'SeeAll':'לראות הכל',
          'Construction':'שיפוצים',
          'ConstructionSentence':'השיפוצים שלך במחירים הנמוכים ביותר עם השותפים שלנו !',
          "RealEstate":'מקרקעין',
          "RealEstateSentence":'עולים מסייעים לכם בעסקאות הנדל"ן שלכם',
          'Plumber':'שרברב',
          'PlumberSentence':'עולים נותן לכם את כל הטיפים הטובים !',
          'Services':'שירותים',
          'Assurance':'ביטוח',
          'AssuranceSentence':'בריאות, בית, רכב, חיים, עולים מבטחים בכל התחומים !',
          'Juridique': 'מחלקה משפטית',
          'JuridiqueSentence': 'עולים מספקים לך הגנה שאין שני לה',
          'BankSentence':"הכסף שלך מעולם לא נשמר טוב יותר",
          'Info':'פתרון בעיות במחשב',
          'InfoSentence':'עולים שומרים אותך מחובר!',
          'Tel': 'טלפון - אינטרנט',
          'TelSentence': 'חבילות האינטרנט והטלפון הטובות ביותר !',
          'Electric':'חשמל',
          'ElectricSentence': 'עולים מפגיש אותך עם החשמלאים השותפים שלה',
          'Climatisation': 'מזגנים',
          'ClimatisationSentence':'תמיד בטמפרטורה הנכונה',
          'Vitre': 'מנקה חלונות',
          'VitreSentence': 'חלונות נקיים ובית מואר בזכות עולים',
          'Electromenager':'מכשירי החשמל הביתיים',
          'ElectromenagerSentence':'המחירים הטובים ביותר עבור מכשירי החשמל הביתיים שלך',
          'Type':'סוג',
          'ErrorAuth':'אימייל או סיסמה שגויים',
          'Inscription': 'רישום',
          'Previous':'קודם',
          'Next':'הבא',
          'EncoreQuelqueEtapes':'עוד כמה צעדים...',
          'BientotTermine':'עוד שנייה סיימנו...',
          'OnYEstPresque': 'אנחנו כמעט שם...',
          'Married':'נשוי',
        }
      };
}