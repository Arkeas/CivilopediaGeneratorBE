using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Xml;

namespace CivilopediaGeneratorBE
{
	public partial class Form1 : Form
	{
		// Eras.
		//string strLanguage = "en_US";
		//string strLanguage = "DE_DE";
		//string strLanguage = "ES_ES";
		//string strLanguage = "FR_FR";
		//string strLanguage = "IT_IT";
		//string strLanguage = "JA_JP";
		//string strLanguage = "KO_KR";
		//string strLanguage = "PL_PL";
		//string strLanguage = "RU_RU";
		string _strLanguage = "";
		private const string ERAS_XML = "D:\\Games\\Steam\\steamapps\\common\\Sid Meier's Civilization Beyond Earth\\assets\\Gameplay\\XML\\GameInfo\\CivBEEras.xml";
		//private const string ERAS_XML = "C:\\temp\\stuff\\xml\\Gameplay\\XML\\GameInfo\\CIV5Eras.xml";
		//private const string ERAS_TITLES = "C:\\temp\\stuff\\xml\\Gameplay\\XML\\NewText\\EN_US\\CIV5GameTextInfos_Objects.xml";

		private const string FILE_PATH = "D:\\Games\\Steam\\steamapps\\common\\Sid Meier's Civilization Beyond Earth\\assets";
        private const string FILE_PATH_EXP = "D:\\Games\\Steam\\steamapps\\common\\Sid Meier's Civilization Beyond Earth\\assets\\DLC\\Expansion1";
        private const string FILE_PATH_IMAGES = "D:\\temp\\unpackBE";
		//private const string FILE_PATH = "C:\\temp\\stuff\\xml";

		private string _strHtmlPath = "";
		private string _strXml = "";

		// All files of a given type begin with the same string, so define them here.
		private const string CONCEPT_PREFIX = "CivBEConcepts";
		private const string TECHNOLOGY_PREFIX = "CivBETechnologies";
		private const string UNIT_PREFIX = "CivBEUnits";
		private const string UNIT_CLASS_PREFIX = "CivBEUnitClasses";
		private const string UNIT_UPGRADES_PREFIX = "CivBEUnitUpgrades";
		private const string UNIT_PERKS_PREFIX = "CivBEUnitPerks";
		private const string COMBAT_INFO_PREFIX = "CivBEUnitCombatInfos";
		private const string PROMOTION_PREFIX = "CivBEUnitPromotions";
		private const string BUILDING_PREFIX = "CivBEBuildings";
		private const string BUILDING_CLASS_PREFIX = "CivBEBuildingClasses";
		private const string PROJECT_PREFIX = "CivBEProjects";
		private const string POLICY_PREFIX = "CivBEPolicies";
        private const string DIPLOMACY_PREFIX = "CivBEPersonalityTraits";
        //private const string POLICY_BRANCH_TYPE_PREFIX = "CIV5PolicyBranchTypes";
        private const string SPECIALIST_PREFIX = "CivBESpecialists";
		private const string CIVILIZATION_PREFIX = "CivBECivilization";
		private const string LEADER_PREFIX = "CivBELeader";
		private const string CITY_STATE_PREFIX = "CivBEMinorCivilizations";
		private const string TERRAIN_PREFIX = "CivBETerrains";
		private const string FEATURE_PREFIX = "CivBEFeatures";
		private const string RESOURCE_PREFIX = "CivBEResources";
		private const string RESOURCE_CLASS_PREFIX = "CivBEResourceClasses";
		private const string IMPROVEMENT_PREFIX = "CivBEImprovements";
		private const string TRAIT_PREFIX = "CivBETraits";
		private const string BUILDS_PREFIX = "CivBEBuilds";
		private const string ROUTES_PREFIX = "CivBERoutes";
		private const string TEXT_PREFIX = "CivBEGameTextInfos";
		//private const string TEXT_PREFIX2 = "Civ5Civlopedia";
		private const string RELIGION_PREFIX = "CivBEReligions";
		private const string BELIEFS_PREFIX = "CivBEBeliefs";
		private const string RESOLUTIONS_PREFIX = "CivBEResolutions";
		private const string AFFINITIES_PREFIX = "CivBEAffinities";
		private const string ART_DEFINES_PREFIX = "CivBEArtDefines";
		private const string ORBITAL_PREFIX = "CivBEOrbitalUnits";
		private const string ATLAS_PREFIX = "";

		private readonly List<string> _lstImprovementsFiles = new List<string>();

		// Lists to hold all of the paths for the files we'll find.
		private readonly List<string> _lstConcepts = new List<string>();
		private readonly List<string> _lstTechnologies = new List<string>();
		private readonly List<string> _lstUnits = new List<string>();
		private readonly List<string> _lstUnitClasses = new List<string>();
		private readonly List<string> _lstUnitUpgrades = new List<string>();
		private readonly List<string> _lstUnitPerks = new List<string>();
		private readonly List<string> _lstCombatInfos = new List<string>();
		private readonly List<string> _lstPromotions = new List<string>();
		private readonly List<string> _lstBuildings = new List<string>();
		private readonly List<string> _lstBuildingClasses = new List<string>();
		private readonly List<string> _lstProjects = new List<string>();
		private readonly List<string> _lstPolicies = new List<string>();
		private readonly List<string> _lstPolicyBranchTypes = new List<string>();
		private readonly List<string> _lstSpecialists = new List<string>();
		private readonly List<string> _lstCivilizations = new List<string>();
		private readonly List<string> _lstLeaders = new List<string>();
		private readonly List<string> _lstCityStates = new List<string>();
		private readonly List<string> _lstTerrains = new List<string>();
		private readonly List<string> _lstFeatures = new List<string>();
		private readonly List<string> _lstResources = new List<string>();
		private readonly List<string> _lstResourceClasses = new List<string>();
		private readonly List<string> _lstImprovements = new List<string>();
		private readonly List<string> _lstBuilds = new List<string>();
		private readonly List<string> _lstRoutes = new List<string>();
		private readonly List<string> _lstTraits = new List<string>();
		private readonly List<string> _lstTexts = new List<string>();
		private readonly List<string> _lstReligions = new List<string>();
		private readonly List<string> _lstBeliefs = new List<string>();
		private readonly List<string> _lstResolutions = new List<string>();
		private readonly List<string> _lstAffinities = new List<string>();
		private readonly List<string> _lstArtDefines = new List<string>();
		private readonly List<string> _lstOrbitals = new List<string>();
		private readonly List<XmlDocument> _lstTextDocs = new List<XmlDocument>();

		private readonly List<string> _lstLanguages = new List<String>();

		private readonly List<string> _lstAtlasFiles = new List<string>();
		private readonly List<Atlas> _lstAtlas256 = new List<Atlas>();
		private readonly List<Atlas> _lstAtlas128 = new List<Atlas>();
		private readonly List<Atlas> _lstAtlas64 = new List<Atlas>();

		// Commonly-used Labels.
		string TXT_KEY_PEDIA_PREREQ_TECH_LABEL = "";
		string TXT_KEY_PEDIA_LEADS_TO_TECH_LABEL = "";
		string TXT_KEY_PEDIA_UNIT_UNLOCK_LABEL = "";
		string TXT_KEY_PEDIA_BLDG_UNLOCK_LABEL = "";
		string TXT_KEY_PEDIA_PROJ_UNLOCK_LABEL = "";
		string TXT_KEY_PEDIA_RESRC_RVL_LABEL = "";
		string TXT_KEY_PEDIA_WORKER_ACTION_LABEL = "";
		string TXT_KEY_PEDIA_GAME_INFO_LABEL = "";
		string TXT_KEY_PEDIA_COMBAT_LABEL = "";
		string TXT_KEY_PEDIA_RANGEDCOMBAT_LABEL = "";
		string TXT_KEY_PEDIA_RANGE_LABEL = "";
		string TXT_KEY_PEDIA_OBSOLETE_TECH_LABEL = "";
		string TXT_KEY_COMMAND_UPGRADE = "";
		string TXT_KEY_PEDIA_CIVILIZATIONS_LABEL = "";
		string TXT_KEY_PEDIA_REPLACES_LABEL = "";
		string TXT_KEY_PEDIA_COMBATTYPE_LABEL = "";
		string TXT_KEY_PEDIA_FREEPROMOTIONS_LABEL = "";
		string TXT_KEY_PEDIA_REQ_PROMOTIONS_LABEL = "";
		string TXT_KEY_PEDIA_MAINT_LABEL = "";
		string TXT_KEY_PEDIA_REQ_BLDG_LABEL = "";
		string TXT_KEY_PEDIA_REQ_RESRC_LABEL = "";
		string TXT_KEY_PEDIA_LOCAL_RESRC_LABEL = "";
		string TXT_KEY_PEDIA_DEFENSE_LABEL = "";
		string TXT_KEY_PEDIA_HAPPINESS_LABEL = "";
		string TXT_KEY_PEDIA_CULTURE_LABEL = "";
		string TXT_KEY_PEDIA_GOLD_LABEL = "";
		string TXT_KEY_PEDIA_PRODUCTION_LABEL = "";
		string TXT_KEY_PEDIA_FOOD_LABEL = "";
		string TXT_KEY_PEDIA_HEALTH_LABEL = "";
		string TXT_KEY_PEDIA_ENERGY_LABEL = "";
		string TXT_KEY_PEDIA_SCIENCE_LABEL = "";
		string TXT_KEY_PEDIA_SPEC_LABEL = "";
		string TXT_KEY_PEDIA_QUOTE_LABEL = "";
		string TXT_KEY_PEDIA_COST_LABEL = "";
		string TXT_KEY_PEDIA_POLICYBRANCH_LABEL = "";
		string TXT_KEY_PEDIA_TENET_LEVEL = "";
		string TXT_KEY_PEDIA_PREREQ_POLICY_LABEL = "";
		string TXT_KEY_PEDIA_PREREQ_ERA_LABEL = "";
		string TXT_KEY_PEDIA_UNIQUEBLDG_LABEL = "";
		string TXT_KEY_PEDIA_UNIQUEIMPRV_LABEL = "";
		string TXT_KEY_PEDIA_FEATURES_LABEL = "";
		string TXT_KEY_PEDIA_RESOURCESFOUND_LABEL = "";
		string TXT_KEY_PEDIA_REVEAL_TECH_LABEL = "";
		string TXT_KEY_PEDIA_IMPROVES_RESRC_LABEL = "";
		string TXT_KEY_PEDIA_STRATEGY_LABEL = "";
		string TXT_KEY_PEDIA_HISTORICAL_LABEL = "";
		string TXT_KEY_PEDIA_YIELD_LABEL = "";
		string TXT_KEY_PEDIA_FOUNDON_LABEL = "";
		string TXT_KEY_PEDIA_MOUNTAINADJYIELD_LABEL = "";
		string TXT_KEY_PEDIA_SUMMARY_LABEL = "";
		string TXT_KEY_PEDIA_LIVED_LABEL = "";
		string TXT_KEY_PEDIA_TITLES_LABEL = "";
		string TXT_KEY_PEDIA_LEADERS_LABEL = "";
		string TXT_KEY_PEDIA_UNIQUEUNIT_LABEL = "";
		string TXT_KEY_PEDIA_MOVECOST_LABEL = "";
		string TXT_KEY_PEDIA_COMBATMOD_LABEL = "";
		string TXT_KEY_PEDIA_TERRAINS_LABEL = "";
		string TXT_KEY_PEDIA_IMPROVEMENTS_LABEL = "";
		string TXT_KEY_PEDIA_MOVEMENT_LABEL = "";
		string TXT_KEY_PEDIA_FAITH_LABEL = "";
		string TXT_KEY_PEDIA_GREAT_WORKS_LABEL = "";
		string TXT_KEY_GREAT_WORK_SLOT_ART_ARTIFACT_EMPTY_TOOLTIP = "";
		string TXT_KEY_GREAT_WORK_SLOT_LITERATURE_EMPTY_TOOLTIP = "";
		string TXT_KEY_GREAT_WORK_SLOT_MUSIC_EMPTY_TOOLTIP = "";
		string TXT_KEY_PEDIA_ABILITIES_LABEL = "";
		string TXT_KEY_ABLTY_FRESH_WATER_STRING = "";
		string TXT_KEY_ABLTY_NO_FRESH_WATER_STRING = "";
		string TXT_KEY_ALLOWS_OPEN_BORDERS = "";
		string TXT_KEY_ABLTY_YIELD_IMPRVD_STRING = "";
		string TXT_KEY_YIELD_SCIENCE = "";
		string TXT_KEY_PEDIA_AFFINITIES_LABEL = "";
		string TXT_KEY_PEDIA_ORBITAL_EFFECT_RANGE_LABEL = "";
		string TXT_KEY_PEDIA_ORBITAL_TURN_DURATION_LABEL = "";
		string TXT_KEY_FREE = "";

		// MasterPage Titles.
		string TXT_KEY_PEDIA_CATEGORY_1_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_2_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_3_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_4_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_5_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_6_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_7_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_8_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_9_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_10_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_11_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_12_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_13_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_14_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_15_LABEL = "";
		string TXT_KEY_PEDIA_CATEGORY_16_LABEL = "";
        string TXT_KEY_PEDIA_CATEGORY_17_LABEL = "";
        string TXT_KEY_PEDIA_CATEGORY_18_LABEL = "";

        #region Control events
        public Form1()
		{
			InitializeComponent();
		}

		private void cmdGenerate_Click(object sender, EventArgs e)
		{
			if (chkEnglish.Checked)
				_lstLanguages.Add("en_US");
			if (chkGerman.Checked)
				_lstLanguages.Add("DE_DE");
			if (chkSpanish.Checked)
				_lstLanguages.Add("ES_ES");
			if (chkFrench.Checked)
				_lstLanguages.Add("FR_FR");
			if (chkItalian.Checked)
				_lstLanguages.Add("IT_IT");
			if (chkJapanese.Checked)
				_lstLanguages.Add("JA_JP");
			if (chkKorean.Checked)
				_lstLanguages.Add("KO_KR");
			if (chkPolish.Checked)
				_lstLanguages.Add("PL_PL");
			if (chkRussian.Checked)
				_lstLanguages.Add("RU_RU");
			if (chkChinese.Checked)
				_lstLanguages.Add("ZH_HANT_HK");
			if (chkSimplified.Checked)
				_lstLanguages.Add("ZH_HANS_CN");

			txtDebug.Text += "\r\nBuilding Atlas information";
			FindFiles(FILE_PATH, ATLAS_PREFIX, _lstAtlasFiles, true, 64);
			_lstAtlasFiles.Clear();
			FindFiles(FILE_PATH, ATLAS_PREFIX, _lstAtlasFiles, true, 128);
			_lstAtlasFiles.Clear();
			FindFiles(FILE_PATH, ATLAS_PREFIX, _lstAtlasFiles, true, 256);

			foreach (string strCurrentLanguage in _lstLanguages)
			{
				_strLanguage = strCurrentLanguage;
				txtDebug.Text += "\r\nProcessing Language " + _strLanguage;
				txtDebug.SelectionStart = txtDebug.TextLength;
				txtDebug.ScrollToCaret();
				Application.DoEvents();

				string strStart = DateTime.Now.ToString();
				BuildLists();
				if (_strLanguage == "en_US")
					_strHtmlPath = "html";
				else
					_strHtmlPath = "html\\" + _strLanguage.ToLower().Replace("_", "-");

				_strXml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
				_strXml += "<pages>";

				// Game Concepts.
				if (chkGameConcepts.Checked)
					GenerateConcepts();
				// Technologies.
				if (chkTechnologies.Checked)
					GenerateTechnologies();
				// Units.
				if (chkUnits.Checked)
					GenerateUnits();
				// Promotions.
				if (chkUnitUpgrades.Checked)
					GenerateUnitUpgrades();
				// Buildings.
				if (chkBuildings.Checked)
					GenerateBuildings();
				// Wonders.
				if (chkWonders.Checked)
					GenerateWonders();
				// Policies.
				if (chkPolicies.Checked)
					GenerateVirtues();
				// Great People.
				if (chkCovertOps.Checked)
					GenerateCovertOps();
				// Sponsors/Leaders.
				if (chkSponsors.Checked)
					GenerateSponsors();
				// City-States.
				if (chkQuests.Checked)
					GenerateQuests();
				// Terrains and Features.
				if (chkTerrains.Checked)
					GenerateTerrains();
				// Resources.
				if (chkResources.Checked)
					GenerateResources();
				// Improvements.
				if (chkImprovements.Checked)
					GenerateImprovements();
				// Religions.
				if (chkAffinity.Checked)
					GenerateAffinities();
				// Resolutions.
				if (chkStations.Checked)
					GenerateStations();
				// Home Page.
				if (chkHome.Checked)
					GenerateHome();

				_strXml += "</pages>";

				File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "pages.xml"), _strXml);

				txtDebug.Text += "\r\nDONE!";
				txtDebug.SelectionStart = txtDebug.TextLength;
				txtDebug.ScrollToCaret();

				txtDebug.Text += "\r\nStarted " + strStart;
				txtDebug.Text += "\r\nEnded " + DateTime.Now.ToString();
				txtDebug.SelectionStart = txtDebug.TextLength;
				txtDebug.ScrollToCaret();
			}
		}

		private void cmdSelectAll_Click(object sender, EventArgs e)
		{
			chkGameConcepts.Checked = true;
			chkTechnologies.Checked = true;
			chkUnits.Checked = true;
			chkUnitUpgrades.Checked = true;
			chkBuildings.Checked = true;
			chkWonders.Checked = true;
			chkPolicies.Checked = true;
			chkCovertOps.Checked = true;
			chkSponsors.Checked = true;
			chkQuests.Checked = true;
			chkTerrains.Checked = true;
			chkResources.Checked = true;
			chkImprovements.Checked = true;
			chkAffinity.Checked = true;
			chkHome.Checked = true;
			chkStations.Checked = true;
		}
		#endregion

		#region Helper methods
		private XmlDocument MergeXml(List<string> lstFiles)
		{
			XmlDocument objReturnDocument = new XmlDocument();

			int intCount = 0;
			foreach (string strXmlFile in lstFiles)
			{
				intCount++;
				XmlDocument objNewDocument = new XmlDocument();
				objNewDocument.Load(strXmlFile);

				if (intCount > 1)
				{
					foreach (XmlNode objXmlType in objNewDocument.SelectNodes("/GameData"))
					{
						foreach (XmlNode objXmlChild in objXmlType.ChildNodes)
						{
							if (objXmlChild.NodeType != XmlNodeType.Comment)
							{
								XmlNode objAttachNode = objReturnDocument.SelectSingleNode("/GameData/" + objXmlChild.Name);
								if (objAttachNode == null)
								{
									XmlNode objImportParent = objReturnDocument.ImportNode(objXmlChild, true);
									objReturnDocument.SelectSingleNode("/GameData").AppendChild(objImportParent);
									objAttachNode = objReturnDocument.SelectSingleNode("/GameData/" + objXmlChild.Name);
								}

								foreach (XmlNode objXmlNode in objXmlChild.SelectNodes("Delete"))
								{
									string strField = "";
									string strValue = "";

									if (objXmlNode.Attributes.Count != 0)
									{
										strField = objXmlNode.Attributes[0].Name;
										strValue = objXmlNode.Attributes[0].InnerText;
									}
									else
									{
									}

									List<XmlNode> lstDeleteNodes = new List<XmlNode>();

									if (strField != "")
									{
										foreach (XmlNode objTemp in objAttachNode.ChildNodes)
										{
											if (objTemp.NodeType != XmlNodeType.Comment)
											{
												if (objTemp.Name == "Row")
												{
													if (objTemp[strField].InnerText == strValue)
														lstDeleteNodes.Add(objTemp);
												}
											}
										}

										foreach (XmlNode objDelete in lstDeleteNodes)
											objAttachNode.RemoveChild(objDelete);
									}
								}

								foreach (XmlNode objXmlNode in objXmlChild.SelectNodes("Row"))
								{
									XmlNode objImport = objReturnDocument.ImportNode(objXmlNode, true);
									//objBuildingDocument.DocumentElement.AppendChild(objImport);
									objAttachNode.AppendChild(objImport);
								}
							}
						}
					}
				}
				else
				{
					objReturnDocument.LoadXml(objNewDocument.OuterXml);
				}
			}

			// Replace.
			foreach (string strXmlFile in lstFiles)
			{
				XmlDocument objNewDocument = new XmlDocument();
				objNewDocument.Load(strXmlFile);

				foreach (XmlNode objXmlType in objNewDocument.SelectNodes("/GameData"))
				{
					foreach (XmlNode objXmlChild in objXmlType.ChildNodes)
					{
						foreach (XmlNode objXmlNode in objXmlChild.SelectNodes("Replace"))
						{
							try
							{
								XmlNode objFindNode = objReturnDocument.SelectSingleNode("/GameData/" + objXmlChild.Name + "/Row[Type = \"" + objXmlNode["Type"].InnerText + "\"]");
								objFindNode.InnerXml = objXmlNode.InnerXml;
							}
							catch
							{
								XmlNode objFindNode = RenameNode(objXmlNode, objXmlNode.NamespaceURI, "Row");
								XmlNode objImport = objReturnDocument.ImportNode(objXmlNode, true);
								XmlNode objAppendNode = objReturnDocument.SelectSingleNode("/GameData/" + objXmlChild.Name);
								objAppendNode.AppendChild(objImport);
								// An exception will happen if we're trying to replace something that was deleted previously.
							}
						}
					}
				}
			}

			// Update.
			foreach (string strXmlFile in lstFiles)
			{
				XmlDocument objNewDocument = new XmlDocument();
				objNewDocument.Load(strXmlFile);

				foreach (XmlNode objXmlType in objNewDocument.SelectNodes("/GameData"))
				{
					foreach (XmlNode objXmlChild in objXmlType.ChildNodes)
					{
						if (objXmlChild.NodeType != XmlNodeType.Comment)
						{
							XmlNode objAttachNode = objReturnDocument.SelectSingleNode("/GameData/" + objXmlChild.Name);

							foreach (XmlNode objXmlNode in objXmlChild.SelectNodes("Update"))
							{
								XmlNode objWhere = objXmlNode["Where"];
								string strField = objWhere.Attributes[0].Name;
								string strValue = objWhere.Attributes[0].InnerText;

								XmlNode objSet = objXmlNode["Set"];

								if (strField != "")
								{
									foreach (XmlNode objTemp in objAttachNode.ChildNodes)
									{
										if (objTemp.NodeType != XmlNodeType.Comment)
										{
											if (objTemp.Name == "Row")
											{
												if (objTemp[strField].InnerText == strValue)
												{
													foreach (XmlNode objUpdateItem in objSet.ChildNodes)
													{
														if (objTemp[objUpdateItem.Name] != null)
															objTemp[objUpdateItem.Name].InnerText = objUpdateItem.InnerText;
														else
														{
															XmlNode objImport = objReturnDocument.ImportNode(objUpdateItem, true);
															objTemp.AppendChild(objImport);
														}
													}
												}
											}
										}
									}

									//foreach (XmlNode objDelete in lstDeleteNodes)
									//objAttachNode.RemoveChild(objDelete);
								}

								try
								{
									XmlNode objFindNode = objReturnDocument.SelectSingleNode("/GameData/" + objXmlChild.Name + "/Row[Type = \"" + objXmlNode["Type"].InnerText + "\"]");
									objFindNode.InnerXml = objXmlNode.InnerXml;
								}
								catch
								{
								}
							}
						}
					}
				}
			}

			return objReturnDocument;
		}

		public XmlNode RenameNode(XmlNode node, string namespaceURI, string qualifiedName)
		{
			if (node.NodeType == XmlNodeType.Element)
			{
				XmlElement oldElement = (XmlElement)node;
				XmlElement newElement =
				node.OwnerDocument.CreateElement(qualifiedName, namespaceURI);
				while (oldElement.HasAttributes)
				{
					newElement.SetAttributeNode(oldElement.RemoveAttributeNode(oldElement.Attributes[0]));
				}
				while (oldElement.HasChildNodes)
				{
					newElement.AppendChild(oldElement.FirstChild);
				}
				if (oldElement.ParentNode != null)
				{
					oldElement.ParentNode.ReplaceChild(newElement, oldElement);
				}
				return newElement;
			}
			else
			{
				return null;
			}
		}

		private string GetName(string strTag)
		{
			string strReturn = "";
			strReturn = GetName(strTag, _lstImprovements);
			if (strReturn == "")
				strReturn = GetName(strTag, _lstBuildings);
			if (strReturn == "")
				strReturn = GetName(strTag, _lstRoutes);

			return strReturn;
		}

		private string GetName(string strTag, List<string> lstList)
		{
			XmlDocument objXmlDocument = MergeXml(lstList);
			XmlNode objGameData = objXmlDocument.SelectSingleNode("/GameData");
			foreach (XmlNode objXmlTop in objGameData.ChildNodes)
			{
				if (objXmlTop.NodeType != XmlNodeType.Comment)
				{
					foreach (XmlNode objXmlNode in objXmlTop)
					{
						if (objXmlNode["Type"] != null)
						{
							if (objXmlNode["Type"].InnerText == strTag)
								return GetString(objXmlNode["Description"].InnerText);
						}
					}
				}
			}
			return string.Empty;
		}

		/// <summary>
		/// Search all text files and return the string for the specified Tag.
		/// </summary>
		/// <param name="strTag">Tag to search for.</param>
		private string GetString(string strTag, bool blnParse = true)
		{
			string strReturn = "";

			//foreach (String strXmlFile in _lstTexts)
			//{
			//    XmlDocument objDocument = new XmlDocument();
			//    objDocument.Load(strXmlFile);
			//    XmlNode objNode;
			//    try
			//    {
			//        objNode = objDocument.SelectSingleNode("/GameData/Language_" + strLanguage + "/Row[@Tag = \"" + strTag + "\"]");
			//        strReturn = ParseString(objNode["Text"].InnerText);
			//        break;
			//    }
			//    catch
			//    {
			//    }
			//}

			if (strTag == "UNIT_PROPHET")
			{
			}

			foreach (XmlDocument objDocument in _lstTextDocs)
			{
				if (objDocument.BaseURI.Contains("Expansion2"))
					strReturn = ReturnString(objDocument, strTag, blnParse);
				if (strReturn != "")
					break;
			}

			if (strReturn == "")
			{
				foreach (XmlDocument objDocument in _lstTextDocs)
				{
					if (objDocument.BaseURI.Contains("Expansion1") && !objDocument.NamespaceURI.Contains("Expansion2"))
						strReturn = ReturnString(objDocument, strTag, blnParse);
					if (strReturn != "")
						break;
				}
			}

			if (strReturn == "")
			{
				foreach (XmlDocument objDocument in _lstTextDocs)
				{
					if (!objDocument.BaseURI.Contains("Expansion1"))
						strReturn = ReturnString(objDocument, strTag, blnParse);
					if (strReturn != "")
						break;
				}
			}

			return strReturn;
		}

		private string ReturnString(XmlDocument objDocument, string strTag, bool blnParse)
		{
			string strReturn = "";
			XmlNode objNode;
			try
			{
				objNode = objDocument.SelectSingleNode("/GameData/Language_" + _strLanguage + "/Row[@Tag = \"" + strTag + "\"]");
				if (blnParse)
					strReturn = ParseString(objNode["Text"].InnerText);
				else
					strReturn = objNode["Text"].InnerText;

				// Check for "|" which means we need to check the Plurality field as well.
				if (strReturn.Contains("|"))
				{
					int intPlurality = 0;
					if (objNode["Plurality"] != null)
					{
						string[] strPluarality = objNode["Plurality"].InnerText.Split('|');
						intPlurality = Convert.ToInt32(strPluarality[0]) - 1;
					}
					string[] strStrings = strReturn.Split('|');
					strReturn = strStrings[intPlurality];
				}
			}
			catch
			{
			}

			while (strReturn.Contains("{") && blnParse)
			{
				int intStart = strReturn.IndexOf("{");
				int intEnd = strReturn.IndexOf("}");
				string strReplace = strReturn.Substring(intStart, intEnd - intStart + 1);
				string strReplacement = GetString(strReplace.Replace("{", string.Empty).Replace("}", string.Empty), true);
				strReturn = strReturn.Replace(strReplace, strReplacement);
			}


			return strReturn;
		}

		/// <summary>
		/// Search all files in a List and return the string for the specified Key.
		/// </summary>
		/// <param name="lstList">List to search.</param>
		/// <param name="strTable">Table to search.</param>
		/// <param name="strKey">Key string to return.</param>
		private string FindDescription(List<string> lstList, string strTable, string strKey)
		{
			string strReturn = "";
			foreach (string strFile in lstList)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strFile);

				XmlNode objNode = objDocument.SelectSingleNode("/GameData/" + strTable + "/Row[Type = \"" + strKey + "\"]");
				if (objNode != null)
				{
					strReturn = GetString(objNode["Description"].InnerText).Replace("'", "\\'");
					break;
				}
			}

			return strReturn;
		}

		/// <summary>
		/// Create a List of Groups for the Eras.
		/// <param name="blnAddReligious">Whether or not the Religious pseudo-Era should be added.</param>
		/// </summary>
		private List<Group> CreateEraGroups(bool blnAddReligious = false)
		{
			List<Group> lstReturn = new List<Group>();

			if (blnAddReligious)
			{
				// Manually add the Religious "Era".
				Group objReligious = new Group();
				objReligious.Key = "TXT_KEY_PEDIA_RELIGIOUS";
				objReligious.Name = GetString("TXT_KEY_PEDIA_RELIGIOUS");
				lstReturn.Add(objReligious);
			}

			XmlDocument objDocument = new XmlDocument();
			objDocument.Load(ERAS_XML);

			foreach (XmlNode objEra in objDocument.SelectNodes("/GameData/Eras/Row"))
			{
				Group objGroup = new Group();
				objGroup.Key = objEra["Type"].InnerText;
				objGroup.Name = GetEra(objEra["Type"].InnerText);
				lstReturn.Add(objGroup);
			}

			return lstReturn;
		}

		/// <summary>
		/// Get the name of the Era from the Era Tag.
		/// </summary>
		/// <param name="strEra">Era tag to lookup.</param>
		private string GetEra(string strEra)
		{
			XmlDocument objDocument = new XmlDocument();
			objDocument.Load(ERAS_XML);
			XmlNode objNode = objDocument.SelectSingleNode("/GameData/Eras/Row[Type = \"" + strEra + "\"]");
			string strReturn = GetString(objNode["Description"].InnerText);
			return strReturn;
		}

		/// <summary>
		/// Parse out special tags and return the modified string.
		/// </summary>
		/// <param name="strString">String to modify.</param>
		private string ParseString(string strString)
		{
			string strReturn = strString;

			// String Formatting.
			strReturn = strReturn.Replace("[ENDCOLOR]", "</span>");
			strReturn = strReturn.Replace("[TAB]", string.Empty);
            strReturn = strReturn.Replace("[ICON_INVISIBLE]", string.Empty);
            strReturn = strReturn.Replace("[NEWLINE]", "<br />");
			strReturn = strReturn.Replace("[COLOR_POSITIVE_TEXT]", "<span class=\"color_positive_text\">");
			strReturn = strReturn.Replace("[COLOR_WARNING_TEXT]", "<span class=\"color_warning_text\">");
			strReturn = strReturn.Replace("[COLOR_CYAN]", "<span class=\"color_cyan_text\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_IMPROVEMENT]", "<span class=\"color_highlight_improvement\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_UNIT]", "<span class=\"color_highlight_unit\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_BUILDING]", "<span class=\"color_highlight_building\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_WONDER]", "<span class=\"color_highlight_wonder\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_ACTION]", "<span class=\"color_highlight_action\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_RESOURCE]", "<span class\"color_highlight_resource\">");
			strReturn = strReturn.Replace("[COLOR_HIGHLIGHT_TEXT]", "<span class=\"color_highlight_text\">");
			// Correct the single instance of "[NEWLINE " in the Robotics Technology text.
			strReturn = strReturn.Replace("[NEWLINE ", "<br />");
			// Replace "[...]" with nothing as this doesn't get rendered in the game's Civilopedia.
			strReturn = strReturn.Replace("[...]", string.Empty);

			// Images.
			strReturn = strReturn.Replace("[ICON_CAPITAL]", "<img src=\"/civilopediabe/images/capital.png\" alt=\"capital\" />");
			strReturn = strReturn.Replace("[ICON_CITIZEN]", "<img src=\"/civilopediabe/images/citizen.png\" alt=\"citizen\" />");
			strReturn = strReturn.Replace("[ICON_CONNECTED]", "<img src=\"/civilopediabe/images/connected.png\" alt=\"connected\" />");
			strReturn = strReturn.Replace("[ICON_CULTURE]", "<img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" />");
			strReturn = strReturn.Replace("[ICON_FOOD]", "<img src=\"/civilopediabe/images/food.png\" alt=\"food\" />");
			strReturn = strReturn.Replace("[ICON_GOLD]", "<img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" />");
			strReturn = strReturn.Replace("[ICON_GOLDEN_AGE]", "<img src=\"/civilopediabe/images/golden_age.png\" alt=\"golden age\" />");
			strReturn = strReturn.Replace("[ICON_GREAT_PEOPLE]", "<img src=\"/civilopediabe/images/great_people.png\" alt=\"great people\" />");
			strReturn = strReturn.Replace("[ICON_HAPPINESS_1]", "<img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />");
			strReturn = strReturn.Replace("[ICON_HAPPINESS_4]", "<img src=\"/civilopediabe/images/happiness_4.png\" alt=\"unhappiness\" />");
			strReturn = strReturn.Replace("[ICON_INFLUENCE]", "<img src=\"/civilopediabe/images/influence.png\" alt=\"influence\" />");
			strReturn = strReturn.Replace("[ICON_MOVES]", "<img src=\"/civilopediabe/images/moves.png\" alt=\"moves\" />");
			strReturn = strReturn.Replace("[ICON_OCCUPIED]", "<img src=\"/civilopediabe/images/occupied.png\" alt=\"occupied\" />");
			strReturn = strReturn.Replace("[ICON_PRODUCTION]", "<img src=\"/civilopediabe/images/production.png\" alt=\"production\" />");
			strReturn = strReturn.Replace("[ICON_RANGE_STRENGTH]", "<img src=\"/civilopediabe/images/range_strength.png\" alt=\"range strength\" />");
			strReturn = strReturn.Replace("[ICON_RESEARCH]", "<img src=\"/civilopediabe/images/research.png\" alt=\"research\" />");
			strReturn = strReturn.Replace("[ICON_STRENGTH]", "<img src=\"/civilopediabe/images/strength.png\" alt=\"strength\" />");
			strReturn = strReturn.Replace("[ICON_PEACE]", "<img src=\"/civilopediabe/images/peace.png\" alt=\"peace\" />");
			strReturn = strReturn.Replace("[ICON_RELIGION]", "<img src=\"/civilopediabe/images/religion.png\" alt=\"religion\" />");
			strReturn = strReturn.Replace("[ICON_INTERNATIONAL_TRADE]", "<img src=\"/civilopediabe/images/internationaltrade.png\" alt=\"international trade\" />");
			strReturn = strReturn.Replace("[ICON_TROPHY_GOLD]", "<img src=\"/civilopediabe/images/trophygold.png\" alt=\"gold trophy\" />");
			strReturn = strReturn.Replace("[ICON_TROPHY_SILVER]", "<img src=\"/civilopediabe/images/trophysilver.png\" alt=\"silver trophy\" />");
			strReturn = strReturn.Replace("[ICON_TROPHY_BRONZE]", "<img src=\"/civilopediabe/images/trophybronze.png\" alt=\"bronze trophy\" />");
			strReturn = strReturn.Replace("[ICON_TOURISM]", "<img src=\"/civilopediabe/images/tourism.png\" alt=\"tourism\" />");
			strReturn = strReturn.Replace("[ICON_DIPLOMAT]", "<img src=\"/civilopediabe/images/diplomat.png\" alt=\"diplomat\" />");
			strReturn = strReturn.Replace("[ICON_ENERGY]", "<img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />");
			strReturn = strReturn.Replace("[ICON_PETROLEUM]", "<img src=\"/civilopediabe/images/petroleum.png\" alt=\"petroleum\" />");
			strReturn = strReturn.Replace("[ICON_HEALTH]", "<img src=\"/civilopediabe/images/health.png\" alt=\"health\" />");
			strReturn = strReturn.Replace("[ICON_HEALTH_1]", "<img src=\"/civilopediabe/images/health.png\" alt=\"health\" />");
			strReturn = strReturn.Replace("[ICON_HEALTH_4]", "<img src=\"/civilopediabe/images/unhealth.png\" alt=\"unhealth\" />");
			strReturn = strReturn.Replace("[ICON_UNHEALTH]", "<img src=\"/civilopediabe/images/unhealth.png\" alt=\"unhealth\" />");
			strReturn = strReturn.Replace("[ICON_FIRAXITE]", "<img src=\"/civilopediabe/images/firaxite.png\" alt=\"firaxite\" />");
			strReturn = strReturn.Replace("[ICON_FLOAT_STONE]", "<img src=\"/civilopediabe/images/floatstone.png\" alt=\"floatstone\" />");
			strReturn = strReturn.Replace("[ICON_GEOTHERMAL_ENERGY]", "<img src=\"/civilopediabe/images/geothermal_energy.png\" alt=\"geothermal energy\" />");
			strReturn = strReturn.Replace("[ICON_COPPER]", "<img src=\"/civilopediabe/images/copper.png\" alt=\"copper\" />");
			strReturn = strReturn.Replace("[ICON_SILICA]", "<img src=\"/civilopediabe/images/silica.png\" alt=\"silica\" />");
			strReturn = strReturn.Replace("[ICON_TITANIUM]", "<img src=\"/civilopediabe/images/titanium.png\" alt=\"titanium\" />");
			strReturn = strReturn.Replace("[ICON_CHITIN]", "<img src=\"/civilopediabe/images/chitin.png\" alt=\"chitin\" />");
			strReturn = strReturn.Replace("[ICON_RESILIN]", "<img src=\"/civilopediabe/images/resilin.png\" alt=\"resilin\" />");
			strReturn = strReturn.Replace("[ICON_FIBER]", "<img src=\"/civilopediabe/images/fiber.png\" alt=\"fiber\" />");
			strReturn = strReturn.Replace("[ICON_FRUIT]", "<img src=\"/civilopediabe/images/fruit.png\" alt=\"fruit\" />");
			strReturn = strReturn.Replace("[ICON_FUNGUS]", "<img src=\"/civilopediabe/images/fungus.png\" alt=\"fungus\" />");
			strReturn = strReturn.Replace("[ICON_TUBERS]", "<img src=\"/civilopediabe/images/tubers.png\" alt=\"tubers\" />");
			strReturn = strReturn.Replace("[ICON_BASALT]", "<img src=\"/civilopediabe/images/basalt.png\" alt=\"basalt\" />");
			strReturn = strReturn.Replace("[ICON_ALGAE]", "<img src=\"/civilopediabe/images/algae.png\" alt=\"algae\" />");
			strReturn = strReturn.Replace("[ICON_CORAL]", "<img src=\"/civilopediabe/images/coral.png\" alt=\"coral\" />");
			strReturn = strReturn.Replace("[ICON_XENOMASS]", "<img src=\"/civilopediabe/images/xenomass.png\" alt=\"xenomass\" />");
			strReturn = strReturn.Replace("[ICON_SCIENCE]", "<img src=\"/civilopediabe/images/research.png\" alt=\"science\" />");
            strReturn = strReturn.Replace("[ICON_PLANKTON]", "<img src=\"/civilopediabe/images/plankton.png\" alt=\"plankton\" />");
            strReturn = strReturn.Replace("[ICON_CHELONIA]", "<img src=\"/civilopediabe/images/chelonia.png\" alt=\"chelonia\" />");
            strReturn = strReturn.Replace("[ICON_EGGS]", "<img src=\"/civilopediabe/images/eggs.png\" alt=\"eggs\" />");
            strReturn = strReturn.Replace("[ICON_SHELL]", "<img src=\"/civilopediabe/images/shell.png\" alt=\"shell\" />");
            strReturn = strReturn.Replace("[ICON_MINERALS]", "<img src=\"/civilopediabe/images/minerals.png\" alt=\"minerals\" />");
            strReturn = strReturn.Replace("[ICON_VENTS]", "<img src=\"/civilopediabe/images/vents.png\" alt=\"vents\" />");

            // Affinity Images.
            strReturn = strReturn.Replace("[ICON_PURITY]", "<img src=\"/civilopediabe/images/AFFINITY_TYPE_PURITY.png\" alt=\"purity\" />");
			strReturn = strReturn.Replace("[ICON_SUPREMACY]", "<img src=\"/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png\" alt=\"supremacy\" />");
			strReturn = strReturn.Replace("[ICON_HARMONY]", "<img src=\"/civilopediabe/images/AFFINITY_TYPE_HARMONY.png\" alt=\"harmony\" />");

			// Affinity Colours.
			strReturn = strReturn.Replace("[COLOR_PURITY_AFFINITY]", "<span class=\"color_purity_affinity\">");
			strReturn = strReturn.Replace("[COLOR_SUPREMACY_AFFINITY]", "<span class=\"color_supremacy_affinity\">");
			strReturn = strReturn.Replace("[COLOR_HARMONY_AFFINITY]", "<span class=\"color_harmony_affinity\">");

			// Resource Images.
			strReturn = strReturn.Replace("[ICON_RES_ALUMINUM]", "<img src=\"/civilopediabe/images/res_aluminum.png\" alt=\"aluminum\" />");
			strReturn = strReturn.Replace("[ICON_RES_BANANA]", "<img src=\"/civilopediabe/images/res_bananas.png\" alt=\"bananas\" />");
			strReturn = strReturn.Replace("[ICON_RES_BANANAS]", "<img src=\"/civilopediabe/images/res_bananas.png\" alt=\"bananas\" />");
			strReturn = strReturn.Replace("[ICON_RES_CITRUS]", "<img src=\"/civilopediabe/images/res_citrus.png\" alt=\"citrus\" />");
			strReturn = strReturn.Replace("[ICON_RES_COAL]", "<img src=\"/civilopediabe/images/res_coal.png\" alt=\"coal\" />");
			strReturn = strReturn.Replace("[ICON_RES_COPPER]", "<img src=\"/civilopediabe/images/res_copper.png\" alt=\"copper\" />");
			strReturn = strReturn.Replace("[ICON_RES_COTTON]", "<img src=\"/civilopediabe/images/res_cotton.png\" alt=\"cotton\" />");
			strReturn = strReturn.Replace("[ICON_RES_COW]", "<img src=\"/civilopediabe/images/res_cow.png\" alt=\"cow\" />");
			strReturn = strReturn.Replace("[ICON_RES_CRAB]", "<img src=\"/civilopediabe/images/res_crab.png\" alt=\"cow\" />");
			strReturn = strReturn.Replace("[ICON_RES_DEER]", "<img src=\"/civilopediabe/images/res_deer.png\" alt=\"deer\" />");
			strReturn = strReturn.Replace("[ICON_RES_DYES]", "<img src=\"/civilopediabe/images/res_dyes.png\" alt=\"dyes\" />");
			strReturn = strReturn.Replace("[ICON_RES_FISH]", "<img src=\"/civilopediabe/images/res_fish.png\" alt=\"fish\" />");
			strReturn = strReturn.Replace("[ICON_RES_FUR]", "<img src=\"/civilopediabe/images/res_fur.png\" alt=\"fur\" />");
			strReturn = strReturn.Replace("[ICON_RES_GEMS]", "<img src=\"/civilopediabe/images/res_gems.png\" alt=\"gems\" />");
			strReturn = strReturn.Replace("[ICON_RES_GOLD]", "<img src=\"/civilopediabe/images/res_gold.png\" alt=\"gold\" />");
			strReturn = strReturn.Replace("[ICON_RES_HORSE]", "<img src=\"/civilopediabe/images/res_horses.png\" alt=\"horses\" />");
			strReturn = strReturn.Replace("[ICON_RES_HORSES]", "<img src=\"/civilopediabe/images/res_horses.png\" alt=\"horses\" />");
			strReturn = strReturn.Replace("[ICON_RES_INCENSE]", "<img src=\"/civilopediabe/images/res_incense.png\" alt=\"incense\" />");
			strReturn = strReturn.Replace("[ICON_RES_IRON]", "<img src=\"/civilopediabe/images/res_iron.png\" alt=\"iron\" />");
			strReturn = strReturn.Replace("[ICON_RES_IVORY]", "<img src=\"/civilopediabe/images/res_ivory.png\" alt=\"ivory\" />");
			strReturn = strReturn.Replace("[ICON_RES_JEWELRY]", "<img src=\"/civilopediabe/images/res_jewelry.png\" alt=\"jewelry\" />");
			strReturn = strReturn.Replace("[ICON_RES_MARBLE]", "<img src=\"/civilopediabe/images/res_marble.png\" alt=\"marble\" />");
			strReturn = strReturn.Replace("[ICON_RES_OIL]", "<img src=\"/civilopediabe/images/res_oil.png\" alt=\"oil\" />");
			strReturn = strReturn.Replace("[ICON_OIL]", "<img src=\"/civilopediabe/images/res_oil.png\" alt=\"oil\" />");
			strReturn = strReturn.Replace("[ICON_RES_PEARLS]", "<img src=\"/civilopediabe/images/res_pearls.png\" alt=\"pearls\" />");
			strReturn = strReturn.Replace("[ICON_RES_PORCELAIN]", "<img src=\"/civilopediabe/images/res_porcelain.png\" alt=\"porcelain\" />");
			strReturn = strReturn.Replace("[ICON_RES_SALT]", "<img src=\"/civilopediabe/images/res_salt.png\" alt=\"salt\" />");
			strReturn = strReturn.Replace("[ICON_RES_SHEEP]", "<img src=\"/civilopediabe/images/res_sheep.png\" alt=\"sheep\" />");
			strReturn = strReturn.Replace("[ICON_RES_SILK]", "<img src=\"/civilopediabe/images/res_silk.png\" alt=\"silk\" />");
			strReturn = strReturn.Replace("[ICON_RES_SILVER]", "<img src=\"/civilopediabe/images/res_silver.png\" alt=\"silver\" />");
			strReturn = strReturn.Replace("[ICON_RES_SPICES]", "<img src=\"/civilopediabe/images/res_spices.png\" alt=\"spices\" />");
			strReturn = strReturn.Replace("[ICON_RES_STONE]", "<img src=\"/civilopediabe/images/res_stone.png\" alt=\"stone\" />");
			strReturn = strReturn.Replace("[ICON_RES_SUGAR]", "<img src=\"/civilopediabe/images/res_sugar.png\" alt=\"sugar\" />");
			strReturn = strReturn.Replace("[ICON_RES_TRUFFLES]", "<img src=\"/civilopediabe/images/res_truffles.png\" alt=\"silk\" />");
			strReturn = strReturn.Replace("[ICON_RES_URANIUM]", "<img src=\"/civilopediabe/images/res_uranium.png\" alt=\"uranium\" />");
			strReturn = strReturn.Replace("[ICON_RES_WHALE]", "<img src=\"/civilopediabe/images/res_whales.png\" alt=\"whales\" />");
			strReturn = strReturn.Replace("[ICON_RES_WHALES]", "<img src=\"/civilopediabe/images/res_whales.png\" alt=\"whales\" />");
			strReturn = strReturn.Replace("[ICON_RES_WHEAT]", "<img src=\"/civilopediabe/images/res_wheat.png\" alt=\"wheat\" />");
			strReturn = strReturn.Replace("[ICON_RES_WINE]", "<img src=\"/civilopediabe/images/res_wine.png\" alt=\"wine\" />");

			// Yield Images.
			strReturn = strReturn.Replace("YIELD_FOOD", "<img src=\"/civilopediabe/images/food.png\" alt=\"food\" />");
			strReturn = strReturn.Replace("YIELD_PRODUCTION", "<img src=\"/civilopediabe/images/production.png\" alt=\"production\" />");
			strReturn = strReturn.Replace("YIELD_GOLD", "<img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" />");
			strReturn = strReturn.Replace("YIELD_SCIENCE", "<img src=\"/civilopediabe/images/research.png\" alt=\"research\" />");
			strReturn = strReturn.Replace("YIELD_FAITH", "<img src=\"/civilopediabe/images/peace.png\" alt=\"research\" />");
			strReturn = strReturn.Replace("YIELD_CULTURE", "<img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" />");
			strReturn = strReturn.Replace("YIELD_ENERGY", "<img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />");

			// Special/Accented Characters.
			// French and Spanish special characters.
			strReturn = strReturn.Replace("[…]", string.Empty);
			strReturn = strReturn.Replace("Á", "&Aacute;");
			strReturn = strReturn.Replace("À", "&Agrave;");
			strReturn = strReturn.Replace("Â", "&Acirc;");
			strReturn = strReturn.Replace("Ä", "&Auml;");
			strReturn = strReturn.Replace("É", "&Eacute;");
			strReturn = strReturn.Replace("È", "&Egrave;");
			strReturn = strReturn.Replace("Ê", "&Ecirc;");
			strReturn = strReturn.Replace("Ë", "&Euml;");
			strReturn = strReturn.Replace("Í", "&Iacute;");
			strReturn = strReturn.Replace("Î", "&Icirc;");
			strReturn = strReturn.Replace("Ï", "&Iuml;");
			strReturn = strReturn.Replace("Ó", "&Oacute;");
			strReturn = strReturn.Replace("Ô", "&Ocirc;");
			strReturn = strReturn.Replace("Œ", "&OElig;");
			strReturn = strReturn.Replace("Ú", "&Uacute;");
			strReturn = strReturn.Replace("Ù", "&Ugrave;");
			strReturn = strReturn.Replace("Û", "&Ucirc;");
			strReturn = strReturn.Replace("Ü", "&Uuml;");
			strReturn = strReturn.Replace("Ÿ", "&Yuml;");
			strReturn = strReturn.Replace("Ç", "&Ccedil;");
			strReturn = strReturn.Replace("Ñ", "&Ntilde;");
			strReturn = strReturn.Replace("á", "&aacute;");
			strReturn = strReturn.Replace("à", "&agrave;");
			strReturn = strReturn.Replace("â", "&acirc;");
			strReturn = strReturn.Replace("ä", "&auml;");
			strReturn = strReturn.Replace("é", "&eacute;");
			strReturn = strReturn.Replace("è", "&egrave;");
			strReturn = strReturn.Replace("ê", "&ecirc;");
			strReturn = strReturn.Replace("ë", "&euml;");
			strReturn = strReturn.Replace("í", "&iacute;");
			strReturn = strReturn.Replace("î", "&icirc;");
			strReturn = strReturn.Replace("ï", "&iuml;");
			strReturn = strReturn.Replace("ó", "&oacute;");
			strReturn = strReturn.Replace("ô", "&ocirc;");
			strReturn = strReturn.Replace("œ", "&oelig;");
			strReturn = strReturn.Replace("ú", "&uacute;");
			strReturn = strReturn.Replace("ü", "&uuml;");
			strReturn = strReturn.Replace("ù", "&ugrave;");
			strReturn = strReturn.Replace("û", "&ucirc;");
			strReturn = strReturn.Replace("ÿ", "&yuml;");
			strReturn = strReturn.Replace("ç", "&ccedil;");
			strReturn = strReturn.Replace("ñ", "&ntilde;");

			// German (1st line) and Polish special characters.
			strReturn = strReturn.Replace("ß", "&szlig;");
			strReturn = strReturn.Replace("Ą", "&#260;");
			strReturn = strReturn.Replace("ą", "&#261;");
			strReturn = strReturn.Replace("Ę", "&#280;");
			strReturn = strReturn.Replace("ę", "&#281;");
			strReturn = strReturn.Replace("Ć", "&#262;");
			strReturn = strReturn.Replace("ć", "&#263;");
			strReturn = strReturn.Replace("Ł", "&#321;");
			strReturn = strReturn.Replace("ł", "&#322;");
			strReturn = strReturn.Replace("Ń", "&#323;");
			strReturn = strReturn.Replace("ń", "&#324;");
			strReturn = strReturn.Replace("Ś", "&#346;");
			strReturn = strReturn.Replace("ś", "&#347;");
			strReturn = strReturn.Replace("Ź", "&#377;");
			strReturn = strReturn.Replace("ź", "&#378;");
			strReturn = strReturn.Replace("Ż", "&#379;");
			strReturn = strReturn.Replace("ż", "&#380;");

			// Italian special characters.
			strReturn = strReturn.Replace("º", "&ordm;");
			strReturn = strReturn.Replace("ª", "&ordf;");

			strReturn = StripLinks(strReturn);

			return strReturn;
		}

		/// <summary>
		/// Remove any [LINK] tags from the string.
		/// </summary>
		/// <param name="strString">String to parse.</param>
		private string StripLinks(string strString)
		{
			// [link] and [end link] only appear in the Greece Civ text once.
			strString = strString.Replace("[\\LINK]", string.Empty);
			strString = strString.Replace("[end link]", string.Empty);
			strString = strString.Replace("[link]", string.Empty);
			while (strString.Contains("[LINK"))
			{
				int intStart = strString.IndexOf("[LINK");
				int intEnd = strString.IndexOf("]");
				if (intStart > -1 && intEnd != intStart)
				{
					intEnd += 1;
					string strChop = strString.Substring(intStart, intEnd - intStart);
					strString = strString.Replace(strChop, string.Empty);
				}
			}

			return strString;
		}

		/// <summary>
		/// Find files with a given prefix and add them to a List.
		/// </summary>
		/// <param name="strPath">Directory to search.</param>
		/// <param name="strPrefix">File prefix to search for.</param>
		/// <param name="lstFiles">List to add paths of found files to.</param>
		/// <param name="blnAtlas">Whether or not we're attempting to fill an Atlas.</param>
		/// <param name="intAtlasSize">Size of Atlas images that we're looking for.</param>
		private void FindFiles(string strPath, string strPrefix, List<string> lstFiles, bool blnAtlas = false, int intAtlasSize = 0)
		{
			foreach (string strFile in Directory.GetFiles(strPath, strPrefix + "*.xml"))
			{
				// Look through the list and see if the file is already in there.
				bool blnIncludeFile = true;

				string strFileName = strFile.Split('\\')[strFile.Split('\\').Length - 1];
				foreach (string strExisting in lstFiles)
				{
					if (strExisting.EndsWith(strFileName))
					{
						// If this is from the Expansion directory, keep it and disregard this new item.
						if (strExisting.Contains("\\Expansion1") && !strFile.Contains("\\Expansion2"))
						{
							blnIncludeFile = false;
							break;
						}
						// If this is not from the expansion directory and the new one is, use the expansion one instead.
						if (strFile.Contains("\\Expansion2"))
						{
							lstFiles.Remove(strExisting);
							break;
						}
						else
						{
							if (!strExisting.Contains("\\Expansion1") && strFile.Contains("\\Expansion1"))
							{
								lstFiles.Remove(strExisting);
								break;
							}
						}
					}
				}

				if (blnIncludeFile)
				{
					if (blnAtlas)
					{
						XmlDocument objXmlDocument = new XmlDocument();
						try
						{
							objXmlDocument.Load(strFile);
							XmlNodeList objXmlNodeList = objXmlDocument.SelectNodes("/GameData/IconTextureAtlases/Row[IconSize = \"" + intAtlasSize.ToString() + "\"]");
							if (objXmlNodeList.Count > 0)
							{
								foreach (XmlNode objXmlNode in objXmlNodeList)
								{
									Atlas objAtlas = new Atlas();
									objAtlas.Name = objXmlNode["Atlas"].InnerText;
									objAtlas.IconSize = intAtlasSize;
									objAtlas.Filename = objXmlNode["Filename"].InnerText;
									objAtlas.IconsPerRow = Convert.ToInt32(objXmlNode["IconsPerRow"].InnerText);
									objAtlas.IconsPerColumn = Convert.ToInt32(objXmlNode["IconsPerColumn"].InnerText);

									// See if the Atlas already exists in the list.
									{
										if (intAtlasSize == 64)
										{
											foreach (Atlas objFind in _lstAtlas64)
											{
												if (objFind.Name == objAtlas.Name)
												{
													if (objFind.IconsPerRow < objAtlas.IconsPerRow || objFind.IconsPerColumn < objAtlas.IconsPerColumn)
													{
														_lstAtlas64.Remove(objFind);
														break;
													}
												}
											}
										}
										else if (intAtlasSize == 128)
										{
											foreach (Atlas objFind in _lstAtlas128)
											{
												if (objFind.Name == objAtlas.Name)
												{
													if (objFind.IconsPerRow < objAtlas.IconsPerRow || objFind.IconsPerColumn < objAtlas.IconsPerColumn)
													{
														_lstAtlas128.Remove(objFind);
														break;
													}
												}
											}
										}
										else
										{
											foreach (Atlas objFind in _lstAtlas256)
											{
												if (objFind.Name == objAtlas.Name)
												{
													if (objFind.IconsPerRow < objAtlas.IconsPerRow || objFind.IconsPerColumn < objAtlas.IconsPerColumn)
													{
														_lstAtlas256.Remove(objFind);
														break;
													}
												}
											}
										}
									}

									if (intAtlasSize == 64)
										_lstAtlas64.Add(objAtlas);
									else if (intAtlasSize == 128)
										_lstAtlas128.Add(objAtlas);
									else
										_lstAtlas256.Add(objAtlas);
								}
							}
						}
						catch
						{
						}
					}
					else
					{
						// Do not include Scenario files.
						if (!strFile.EndsWith("Scenario.xml"))
						{
							// ***** TODO: IF A FILE EXISTS IN THE EXPANSION DIRECTORY AND THE BASE DIRECTORY, ONLY USE THE EXPANSION COPY TO AVOID DUPLICATE ENTRIES
							lstFiles.Add(strFile);
							//txtDebug.Text += "\r\nFound " + strFile;
							//txtDebug.SelectionStart = txtDebug.TextLength;
							//txtDebug.ScrollToCaret();

							//if (strPrefix == TEXT_PREFIX || strPrefix == TEXT_PREFIX2)
							if (strPrefix == TEXT_PREFIX)
							{
								XmlDocument objDocument = new XmlDocument();
								objDocument.Load(strFile);
								_lstTextDocs.Add(objDocument);
							}

							//Application.DoEvents();
						}
					}
				}
			}
			foreach (string strDirectory in Directory.GetDirectories(strPath))
			{
				// Exclude language-specific files that are not EN_US.
				bool blnAcceptFile = true;
				if (strDirectory.ToUpper().Contains("\\DE_DE") && _strLanguage != "DE_DE")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\EN_US") && _strLanguage != "en_US")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\ES_ES") && _strLanguage != "ES_ES")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\FR_FR") && _strLanguage != "FR_FR")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\IT_IT") && _strLanguage != "IT_IT")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\JA_JP") && _strLanguage != "JA_JP")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\KO_KR") && _strLanguage != "KO_KR")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\PL_PL") && _strLanguage != "PL_PL")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\RU_RU") && _strLanguage != "RU_RU")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\ZH_HANT_HK") && _strLanguage != "ZH_HANT_HK")
					blnAcceptFile = false;
				if (strDirectory.ToUpper().Contains("\\ZH_HANS_CN") && _strLanguage != "ZH_HANS_CN")
					blnAcceptFile = false;
				if (blnAcceptFile)
					FindFiles(strDirectory, strPrefix, lstFiles, blnAtlas, intAtlasSize);
			}
		}

		/// <summary>
		/// Build the Lists for all of the XML files we'll be using.
		/// </summary>
		private void BuildLists()
		{
			// Clear the lists so we can regenerate them.
			_lstConcepts.Clear();
			_lstTechnologies.Clear();
			_lstUnits.Clear();
			_lstUnitClasses.Clear();
			_lstUnitUpgrades.Clear();
			_lstUnitPerks.Clear();
			_lstCombatInfos.Clear();
			_lstPromotions.Clear();
			_lstBuildings.Clear();
			_lstBuildingClasses.Clear();
			_lstProjects.Clear();
			_lstPolicies.Clear();
			_lstPolicyBranchTypes.Clear();
			_lstSpecialists.Clear();
			_lstCivilizations.Clear();
			_lstLeaders.Clear();
			_lstCityStates.Clear();
			_lstTerrains.Clear();
			_lstFeatures.Clear();
			_lstResources.Clear();
			_lstResourceClasses.Clear();
			_lstImprovements.Clear();
			_lstBuilds.Clear();
			_lstRoutes.Clear();
			_lstTraits.Clear();
			_lstTexts.Clear();
			_lstOrbitals.Clear();
			_lstTextDocs.Clear();

			txtDebug.Text += "\r\nFinding Concepts...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, CONCEPT_PREFIX, _lstConcepts);
			txtDebug.Text += "\r\nFinding Technologies...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, TECHNOLOGY_PREFIX, _lstTechnologies);
			txtDebug.Text += "\r\nFinding Units...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, UNIT_PREFIX, _lstUnits);
			txtDebug.Text += "\r\nFinding Unit Classes...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, ORBITAL_PREFIX, _lstOrbitals);
			txtDebug.Text += "\r\nFinding Orbitals...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, UNIT_CLASS_PREFIX, _lstUnitClasses);
			txtDebug.Text += "\r\nFinding Combat Infos...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, COMBAT_INFO_PREFIX, _lstCombatInfos);
			txtDebug.Text += "\r\nFinding Unit Upgrades...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, UNIT_UPGRADES_PREFIX, _lstUnitUpgrades);
			txtDebug.Text += "\r\nFinding Unit Perks...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, UNIT_PERKS_PREFIX, _lstUnitPerks);
			txtDebug.Text += "\r\nFinding Promotions...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, PROMOTION_PREFIX, _lstPromotions);
			txtDebug.Text += "\r\nFinding Buildings...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, BUILDING_PREFIX, _lstBuildings);
			txtDebug.Text += "\r\nFinding Building Classes...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, BUILDING_CLASS_PREFIX, _lstBuildingClasses);
			txtDebug.Text += "\r\nFinding Projects...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, PROJECT_PREFIX, _lstProjects);
			txtDebug.Text += "\r\nFinding Virtues...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, POLICY_PREFIX, _lstPolicies);
			txtDebug.Text += "\r\nFinding Virtue Branches...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, POLICY_PREFIX, _lstPolicyBranchTypes);
			//txtDebug.Text += "\r\nFinding Specialists...";
			//txtDebug.SelectionStart = txtDebug.TextLength;
			//txtDebug.ScrollToCaret();
			//Application.DoEvents();
			FindFiles(FILE_PATH, SPECIALIST_PREFIX, _lstSpecialists);
			txtDebug.Text += "\r\nFinding Sponsors...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, CIVILIZATION_PREFIX, _lstCivilizations);
			txtDebug.Text += "\r\nFinding Leaders...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, LEADER_PREFIX, _lstLeaders);
			txtDebug.Text += "\r\nFinding Traits...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, TRAIT_PREFIX, _lstTraits);
			txtDebug.Text += "\r\nFinding City-States...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, CITY_STATE_PREFIX, _lstCityStates);
			txtDebug.Text += "\r\nFinding Terrains...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, TERRAIN_PREFIX, _lstTerrains);
			txtDebug.Text += "\r\nFinding Features...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, FEATURE_PREFIX, _lstFeatures);
			txtDebug.Text += "\r\nFinding Resources...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, RESOURCE_PREFIX, _lstResources);
			txtDebug.Text += "\r\nFinding Resource Classes...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, RESOURCE_CLASS_PREFIX, _lstResourceClasses);
			txtDebug.Text += "\r\nFinding Improvements...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, IMPROVEMENT_PREFIX, _lstImprovements);
			txtDebug.Text += "\r\nFinding Affinities...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, RELIGION_PREFIX, _lstReligions);
			txtDebug.Text += "\r\nFinding Beliefs...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, BELIEFS_PREFIX, _lstBeliefs);
			txtDebug.Text += "\r\nFinding Stations...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, RESOLUTIONS_PREFIX, _lstResolutions);
			txtDebug.Text += "\r\nFinding Builds...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, AFFINITIES_PREFIX, _lstAffinities);
			txtDebug.Text += "\r\nFinding Affinities...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, ART_DEFINES_PREFIX, _lstArtDefines);
			txtDebug.Text += "\r\nFinding Art Defines...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, BUILDS_PREFIX, _lstBuilds);
			txtDebug.Text += "\r\nFinding Routes...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, ROUTES_PREFIX, _lstRoutes);
			txtDebug.Text += "\r\nFinding Text...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			FindFiles(FILE_PATH, TEXT_PREFIX, _lstTexts);
			//FindFiles(FILE_PATH, TEXT_PREFIX2, _lstTexts);

			txtDebug.Text += "\r\nBuilding Labels...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			TXT_KEY_PEDIA_PREREQ_TECH_LABEL = GetString("TXT_KEY_PEDIA_PREREQ_TECH_LABEL");
			TXT_KEY_PEDIA_LEADS_TO_TECH_LABEL = GetString("TXT_KEY_PEDIA_LEADS_TO_TECH_LABEL");
			TXT_KEY_PEDIA_UNIT_UNLOCK_LABEL = GetString("TXT_KEY_PEDIA_UNIT_UNLOCK_LABEL");
			TXT_KEY_PEDIA_BLDG_UNLOCK_LABEL = GetString("TXT_KEY_PEDIA_BLDG_UNLOCK_LABEL");
			TXT_KEY_PEDIA_PROJ_UNLOCK_LABEL = GetString("TXT_KEY_PEDIA_PROJ_UNLOCK_LABEL");
			TXT_KEY_PEDIA_RESRC_RVL_LABEL = GetString("TXT_KEY_PEDIA_RESRC_RVL_LABEL");
			TXT_KEY_PEDIA_WORKER_ACTION_LABEL = GetString("TXT_KEY_PEDIA_WORKER_ACTION_LABEL");
			TXT_KEY_PEDIA_GAME_INFO_LABEL = GetString("TXT_KEY_PEDIA_GAME_INFO_LABEL");
			TXT_KEY_PEDIA_COMBAT_LABEL = GetString("TXT_KEY_PEDIA_COMBAT_LABEL");
			TXT_KEY_PEDIA_RANGEDCOMBAT_LABEL = GetString("TXT_KEY_PEDIA_RANGEDCOMBAT_LABEL");
			TXT_KEY_PEDIA_RANGE_LABEL = GetString("TXT_KEY_PEDIA_RANGE_LABEL");
			TXT_KEY_PEDIA_OBSOLETE_TECH_LABEL = GetString("TXT_KEY_PEDIA_OBSOLETE_TECH_LABEL");
			TXT_KEY_COMMAND_UPGRADE = GetString("TXT_KEY_COMMAND_UPGRADE");
			TXT_KEY_PEDIA_CIVILIZATIONS_LABEL = GetString("TXT_KEY_PEDIA_CIVILIZATIONS_LABEL");
			TXT_KEY_PEDIA_REPLACES_LABEL = GetString("TXT_KEY_PEDIA_REPLACES_LABEL");
			TXT_KEY_PEDIA_COMBATTYPE_LABEL = GetString("TXT_KEY_PEDIA_COMBATTYPE_LABEL");
			TXT_KEY_PEDIA_FREEPROMOTIONS_LABEL = GetString("TXT_KEY_PEDIA_FREEPROMOTIONS_LABEL");
			TXT_KEY_PEDIA_REQ_PROMOTIONS_LABEL = GetString("TXT_KEY_PEDIA_REQ_PROMOTIONS_LABEL");
			TXT_KEY_PEDIA_MAINT_LABEL = GetString("TXT_KEY_PEDIA_MAINT_LABEL");
			TXT_KEY_PEDIA_REQ_BLDG_LABEL = GetString("TXT_KEY_PEDIA_REQ_BLDG_LABEL");
			TXT_KEY_PEDIA_REQ_RESRC_LABEL = GetString("TXT_KEY_PEDIA_REQ_RESRC_LABEL");
			TXT_KEY_PEDIA_LOCAL_RESRC_LABEL = GetString("TXT_KEY_PEDIA_LOCAL_RESRC_LABEL");
			TXT_KEY_PEDIA_DEFENSE_LABEL = GetString("TXT_KEY_PEDIA_DEFENSE_LABEL");
			TXT_KEY_PEDIA_HAPPINESS_LABEL = GetString("TXT_KEY_PEDIA_HAPPINESS_LABEL");
			TXT_KEY_PEDIA_CULTURE_LABEL = GetString("TXT_KEY_PEDIA_CULTURE_LABEL");
			TXT_KEY_PEDIA_GOLD_LABEL = GetString("TXT_KEY_PEDIA_GOLD_LABEL");
			TXT_KEY_PEDIA_PRODUCTION_LABEL = GetString("TXT_KEY_PEDIA_PRODUCTION_LABEL");
			TXT_KEY_PEDIA_FOOD_LABEL = GetString("TXT_KEY_PEDIA_FOOD_LABEL");
			TXT_KEY_PEDIA_HEALTH_LABEL = GetString("TXT_KEY_PEDIA_HEALTH_LABEL");
			TXT_KEY_PEDIA_ENERGY_LABEL = GetString("TXT_KEY_PEDIA_ENERGY_LABEL");
			TXT_KEY_PEDIA_SCIENCE_LABEL = GetString("TXT_KEY_PEDIA_SCIENCE_LABEL");
			TXT_KEY_PEDIA_SPEC_LABEL = GetString("TXT_KEY_PEDIA_SPEC_LABEL");
			TXT_KEY_PEDIA_QUOTE_LABEL = GetString("TXT_KEY_PEDIA_QUOTE_LABEL");
			TXT_KEY_PEDIA_COST_LABEL = GetString("TXT_KEY_PEDIA_COST_LABEL");
			TXT_KEY_PEDIA_POLICYBRANCH_LABEL = GetString("TXT_KEY_PEDIA_POLICYBRANCH_LABEL");
			TXT_KEY_PEDIA_TENET_LEVEL = GetString("TXT_KEY_PEDIA_TENET_LEVEL");
			TXT_KEY_PEDIA_PREREQ_POLICY_LABEL = GetString("TXT_KEY_PEDIA_PREREQ_POLICY_LABEL");
			TXT_KEY_PEDIA_PREREQ_ERA_LABEL = GetString("TXT_KEY_PEDIA_PREREQ_ERA_LABEL");
			TXT_KEY_PEDIA_UNIQUEBLDG_LABEL = GetString("TXT_KEY_PEDIA_UNIQUEBLDG_LABEL");
			TXT_KEY_PEDIA_UNIQUEIMPRV_LABEL = GetString("TXT_KEY_PEDIA_UNIQUEIMPRV_LABEL");
			TXT_KEY_PEDIA_FEATURES_LABEL = GetString("TXT_KEY_PEDIA_FEATURES_LABEL");
			TXT_KEY_PEDIA_RESOURCESFOUND_LABEL = GetString("TXT_KEY_PEDIA_RESOURCESFOUND_LABEL");
			TXT_KEY_PEDIA_REVEAL_TECH_LABEL = GetString("TXT_KEY_PEDIA_REVEAL_TECH_LABEL");
			TXT_KEY_PEDIA_IMPROVES_RESRC_LABEL = GetString("TXT_KEY_PEDIA_IMPROVES_RESRC_LABEL");
			TXT_KEY_PEDIA_STRATEGY_LABEL = GetString("TXT_KEY_PEDIA_STRATEGY_LABEL");
			TXT_KEY_PEDIA_HISTORICAL_LABEL = GetString("TXT_KEY_PEDIA_HISTORICAL_LABEL");
			TXT_KEY_PEDIA_YIELD_LABEL = GetString("TXT_KEY_PEDIA_YIELD_LABEL");
			TXT_KEY_PEDIA_FOUNDON_LABEL = GetString("TXT_KEY_PEDIA_FOUNDON_LABEL");
			TXT_KEY_PEDIA_MOUNTAINADJYIELD_LABEL = GetString("TXT_KEY_PEDIA_MOUNTAINADJYIELD_LABEL");
			TXT_KEY_PEDIA_SUMMARY_LABEL = GetString("TXT_KEY_PEDIA_SUMMARY_LABEL");
			TXT_KEY_PEDIA_LIVED_LABEL = GetString("TXT_KEY_PEDIA_LIVED_LABEL");
			TXT_KEY_PEDIA_TITLES_LABEL = GetString("TXT_KEY_PEDIA_TITLES_LABEL");
			TXT_KEY_PEDIA_LEADERS_LABEL = GetString("TXT_KEY_PEDIA_LEADERS_LABEL");
			TXT_KEY_PEDIA_UNIQUEUNIT_LABEL = GetString("TXT_KEY_PEDIA_UNIQUEUNIT_LABEL");
			TXT_KEY_PEDIA_MOVECOST_LABEL = GetString("TXT_KEY_PEDIA_MOVECOST_LABEL");
			TXT_KEY_PEDIA_COMBATMOD_LABEL = GetString("TXT_KEY_PEDIA_COMBATMOD_LABEL");
			TXT_KEY_PEDIA_TERRAINS_LABEL = GetString("TXT_KEY_PEDIA_TERRAINS_LABEL");
			TXT_KEY_PEDIA_IMPROVEMENTS_LABEL = GetString("TXT_KEY_PEDIA_IMPROVEMENTS_LABEL");
			TXT_KEY_PEDIA_MOVEMENT_LABEL = GetString("TXT_KEY_PEDIA_MOVEMENT_LABEL");
			TXT_KEY_PEDIA_FAITH_LABEL = GetString("TXT_KEY_PEDIA_FAITH_LABEL");
			TXT_KEY_PEDIA_GREAT_WORKS_LABEL = GetString("TXT_KEY_PEDIA_GREAT_WORKS_LABEL");
			TXT_KEY_GREAT_WORK_SLOT_ART_ARTIFACT_EMPTY_TOOLTIP = GetString("TXT_KEY_GREAT_WORK_SLOT_ART_ARTIFACT_EMPTY_TOOLTIP");
			TXT_KEY_GREAT_WORK_SLOT_LITERATURE_EMPTY_TOOLTIP = GetString("TXT_KEY_GREAT_WORK_SLOT_LITERATURE_EMPTY_TOOLTIP");
			TXT_KEY_GREAT_WORK_SLOT_MUSIC_EMPTY_TOOLTIP = GetString("TXT_KEY_GREAT_WORK_SLOT_MUSIC_EMPTY_TOOLTIP");
			TXT_KEY_ABLTY_YIELD_IMPRVD_STRING = GetString("TXT_KEY_ABLTY_YIELD_IMPRVD_STRING");
			TXT_KEY_PEDIA_ABILITIES_LABEL = GetString("TXT_KEY_PEDIA_ABILITIES_LABEL");
			TXT_KEY_ABLTY_FRESH_WATER_STRING = GetString("TXT_KEY_ABLTY_FRESH_WATER_STRING");
			TXT_KEY_ABLTY_NO_FRESH_WATER_STRING = GetString("TXT_KEY_ABLTY_NO_FRESH_WATER_STRING");
			TXT_KEY_ALLOWS_OPEN_BORDERS = GetString("TXT_KEY_ALLOWS_OPEN_BORDERS");
			TXT_KEY_YIELD_SCIENCE = GetString("TXT_KEY_YIELD_SCIENCE");
			TXT_KEY_PEDIA_AFFINITIES_LABEL = GetString("TXT_KEY_PEDIA_AFFINITIES_LABEL");
			TXT_KEY_PEDIA_ORBITAL_EFFECT_RANGE_LABEL = GetString("TXT_KEY_PEDIA_ORBITAL_EFFECT_RANGE_LABEL");
			TXT_KEY_PEDIA_ORBITAL_TURN_DURATION_LABEL = GetString("TXT_KEY_PEDIA_ORBITAL_TURN_DURATION_LABEL");
			TXT_KEY_FREE = GetString("TXT_KEY_FREE");

			TXT_KEY_PEDIA_CATEGORY_1_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_1_LABEL");
			TXT_KEY_PEDIA_CATEGORY_2_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_2_LABEL");
			TXT_KEY_PEDIA_CATEGORY_3_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_3_LABEL");
			TXT_KEY_PEDIA_CATEGORY_4_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_4_LABEL");
			TXT_KEY_PEDIA_CATEGORY_5_LABEL = GetString("TXT_KEY_UNIT_CUSTOMIZATION_TT");
			TXT_KEY_PEDIA_CATEGORY_6_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_6_LABEL");
			TXT_KEY_PEDIA_CATEGORY_7_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_7_LABEL");
			TXT_KEY_PEDIA_CATEGORY_8_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_8_LABEL");
			TXT_KEY_PEDIA_CATEGORY_9_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_9_LABEL");
			TXT_KEY_PEDIA_CATEGORY_10_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_10_LABEL");
			TXT_KEY_PEDIA_CATEGORY_11_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_11_LABEL");
			TXT_KEY_PEDIA_CATEGORY_12_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_12_LABEL");
			TXT_KEY_PEDIA_CATEGORY_13_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_13_LABEL");
			TXT_KEY_PEDIA_CATEGORY_14_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_14_LABEL");
			TXT_KEY_PEDIA_CATEGORY_15_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_15_LABEL");
			TXT_KEY_PEDIA_CATEGORY_16_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_16_LABEL");
            TXT_KEY_PEDIA_CATEGORY_17_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_17_LABEL");
            TXT_KEY_PEDIA_CATEGORY_18_LABEL = GetString("TXT_KEY_PEDIA_CATEGORY_18_LABEL");
        }

		/// <summary>
		/// Create the image for a technology.
		/// </summary>
		/// <param name="strFilename">Filename to save the created image to.</param>
		/// <param name="strAtlasName">Name of the Atlas that contains the image information.</param>
		/// <param name="strIndex">PortraitIndex of the image within the Atlas.</param>
		/// <param name="intAtlasSize">Size of the images within the Atlas.</param>
		private void CreateImage(string strFilename, string strAtlasName, string strIndex, int intAtlasSize)
		{
			int intIndex = Convert.ToInt32(strIndex);
			string strDirectory = "";

			//Find the specified Atlas.
			Atlas objAtlas = new Atlas();
			if (intAtlasSize == 64)
			{
				foreach (Atlas objFind in _lstAtlas64)
				{
					if (objFind.Name == strAtlasName)
					{
						objAtlas = objFind;
						break;
					}
				}
				strDirectory = "small";
			}
			else if (intAtlasSize == 128)
			{
				foreach (Atlas objFind in _lstAtlas128)
				{
					if (objFind.Name == strAtlasName)
					{
						objAtlas = objFind;
						break;
					}
				}
				strDirectory = "large";
			}
			else
			{
				foreach (Atlas objFind in _lstAtlas256)
				{
					if (objFind.Name == strAtlasName)
					{
						objAtlas = objFind;
						break;
					}
				}
				strDirectory = "large";
			}

			// Don't attempt to do anything if there is no Atlas name. Some of the items do not have large images.
			if (objAtlas.Filename == string.Empty)
				return;

			strFilename = Path.Combine(Application.StartupPath, _strHtmlPath, "images", strDirectory, strFilename + ".png");
			//strFilename = Path.Combine(FILE_PATH_IMAGES, strDirectory, strFilename + ".png");

			int intRow = 0;
			int intCol = 0;

			int intCounter = 0;
			while (intCounter != intIndex)
			{
				intCounter++;
				intCol++;
				if (intCol > objAtlas.IconsPerRow - 1)
				{
					intCol = 0;
					intRow++;
				}
			}

			Rectangle objRectangle = new Rectangle(intCol * objAtlas.IconSize, intRow * objAtlas.IconSize, objAtlas.IconSize, objAtlas.IconSize);
			Bitmap bmpImage = null;
			try
			{
				bmpImage = new Bitmap(Path.Combine(FILE_PATH_IMAGES, objAtlas.Filename));
			}
			catch
			{
				MessageBox.Show("Could not find file " + Path.Combine(FILE_PATH_IMAGES, objAtlas.Filename) + ". Should be found in Resources\\DX9 directory as DDS file.");
			}

            if (bmpImage != null)
            {
                try
                {
                    Bitmap bmpCrop = bmpImage.Clone(objRectangle, bmpImage.PixelFormat);

                    Image imgFrame = Image.FromFile(Path.Combine(FILE_PATH_IMAGES, "frame" + strDirectory + ".png"));

                    Bitmap objImage = new Bitmap(bmpCrop.Width, bmpCrop.Height);
                    Graphics objGraphics = Graphics.FromImage(objImage);
                    objGraphics.DrawImage(imgFrame, new Point(0, 0));
                    objGraphics.DrawImage((Image)bmpCrop, new Point(0, 0));
                    objGraphics.Dispose();
                    objImage.Save(strFilename);
                }
                catch
                {
                }
            }
		}
		#endregion

		#region Page generation methods
		/// <summary>
		/// Generate Concept pages.
		/// </summary>
		private void GenerateConcepts()
		{
			txtDebug.Text += "\r\nGenerating Concepts...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_GAME_CONCEPT_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_GCONCEPTS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_GAME_CONCEPT_HELP_TEXT");
			string strHomeOutput = strHomeTeplate;
			const string strHomeImage = "GAME_CONCEPTS";
			const string strMaster = "Concepts";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "CONCEPT_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_CONCEPTS.aspx"));
			// Flip the order of the files so that the base file comes first.
			_lstConcepts.Reverse();

			List<string> lstXPath = new List<string>();

			for (int i = 1; i <= 27; i++)
			{
				lstXPath.Clear();
				switch (i)
				{
					case 1:
						lstXPath.Add("TXT_KEY_TOPIC_AFFINITY");
						break;
					case 2:
						lstXPath.Add("TXT_KEY_TOPIC_CITIES");
						lstXPath.Add("TXT_KEY_TOPIC_BUILDINGS");
						break;
					case 3:
						lstXPath.Add("TXT_KEY_TOPIC_COMBAT");
						break;
					case 4:
						lstXPath.Add("TXT_KEY_TOPIC_TERRAIN");
						break;
					case 5:
						lstXPath.Add("TXT_KEY_TOPIC_RESOURCES");
						break;
					case 6:
						lstXPath.Add("TXT_KEY_TOPIC_WORKERS");
						break;
					case 7:
						lstXPath.Add("TXT_KEY_FOOD_CITIES");
						break;
					case 8:
						lstXPath.Add("TXT_KEY_TOPIC_TECH");
						break;
					case 9:
						lstXPath.Add("TXT_KEY_TOPIC_CULTURE");
						break;
					case 10:
						lstXPath.Add("TXT_KEY_TOPIC_DIPLOMACY");
						break;
					case 11:
						lstXPath.Add("TXT_KEY_TOPIC_HEALTH");
						break;
					case 12:
						lstXPath.Add("TXT_KEY_TOPIC_FOGOFWAR");
						break;
					case 13:
						lstXPath.Add("TXT_KEY_TOPIC_SOCIALPOLICY");
						break;
					case 14:
						lstXPath.Add("TXT_KEY_TOPIC_ENERGY");
						break;
					case 15:
						lstXPath.Add("TXT_KEY_TOPIC_EXPLORERS");
						break;
					case 16:
						lstXPath.Add("TXT_KEY_TOPIC_BARBARIAN");
						break;
					case 17:
						lstXPath.Add("TXT_KEY_TOPIC_UNITS");
						break;
					case 18:
						lstXPath.Add("TXT_KEY_TOPIC_MOVEMENT");
						break;
					case 19:
						lstXPath.Add("TXT_KEY_TOPIC_AIRPOWER");
						break;
					case 20:
						lstXPath.Add("TXT_KEY_TOPIC_COVERT");
						break;
					case 21:
						lstXPath.Add("TXT_KEY_TOPIC_TRADE");
						break;
					case 22:
						lstXPath.Add("TXT_KEY_TOPIC_QUESTS");
						break;
					case 23:
						lstXPath.Add("TXT_KEY_TOPIC_STATIONS");
						break;
					case 24:
						lstXPath.Add("TXT_KEY_TOPIC_ORBITAL");
						break;
					case 25:
						lstXPath.Add("TXT_KEY_TOPIC_ADVISORS");
						break;
					case 26:
						lstXPath.Add("Nothing\" or Type=\"CONCEPT_BUILDINGS_SPECIALISTS");
						break;
					case 27:
						lstXPath.Add("TXT_KEY_TOPIC_VICTORY");
						lstXPath.Add("TXT_KEY_TOPIC_SCORE");
						break;
				}

				Group objGroup = new Group();
				objGroup.Key = i.ToString();
				objGroup.Name = GetString("TXT_KEY_GAME_CONCEPT_SECTION_" + i.ToString());
				lstGroups.Add(objGroup);

				foreach (string strXPath in lstXPath)
				{
					foreach (string strXmlFile in _lstConcepts)
					{
						XmlDocument objDocument = new XmlDocument();
						objDocument.Load(strXmlFile);
						foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Concepts/Row[Topic=\"" + strXPath + "\"]"))
						{
							if (objTechnology["Summary"].InnerText != "CONCEPT_SPECIALISTS_AND_GREAT_PEOPLE_GREAT_PEOPLE_GOLDEN_AGE")
							{
								//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
								//txtDebug.SelectionStart = txtDebug.TextLength;
								//txtDebug.ScrollToCaret();
								//Application.DoEvents();
								string strTitle = GetString(objTechnology["Description"].InnerText);
								string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
								string strDesc = "";

								switch (objTechnology["Summary"].InnerText)
								{
									case "CONCEPT_VICTORY_DIPLOMATIC_VOTING":
										strDesc = GetString("TXT_KEY_VICTORY_WHOVOTES_HEADING4_BODY_ALT");
										break;
									case "CONCEPT_VICTORY_MINOR_CIV_LIBERATION":
										strDesc = GetString("TXT_KEY_VICTORY_LIBERATION_HEADING4_BODY_ALT");
										break;
									default:
										strDesc = GetString(objTechnology["Summary"].InnerText);
										break;
								}

								string strMyDesc = strDesc;
								strDesc = "<h2>" + TXT_KEY_PEDIA_SUMMARY_LABEL + "</h2>";
								strDesc += "<div class=\"infobox\">";
								strDesc += strMyDesc;
								strDesc += "</div>";

								string strOutput = strTemplate;
								strOutput = strOutput.Replace("##TITLE##", strTitle);
								strOutput = strOutput.Replace("##DESC##", strDesc);

								// Create a GroupItem for this Tech.
								GroupItem objItem = new GroupItem();
								objItem.Key = objTechnology["Type"].InnerText;
								objItem.Name = strTitle;

								// If the Topic already exists in the Group List, add this item to it, otherwise, create the new Group.
								if (objTechnology["CivilopediaHeaderType"] != null)
								{
									objGroup.GroupItems.Add(objItem);

									_strXml += "\t\t<page>";
									_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
									_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
									_strXml += "\t\t</page>";

									File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
								}
							}
						}
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_CONCEPTS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"CONCEPT_HOME.aspx\"><div id=\"CONCEPT_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Concepts.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Technology pages.
		/// </summary>
		private void GenerateTechnologies()
		{
			txtDebug.Text += "\r\nGenerating Technologies...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = CreateEraGroups();
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_TECH_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_TECHS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_TECHNOLOGIES_HELP_TEXT");
			const string strHomeImage = "TECH_AGRICULTURE";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Technologies";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "TECH_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_TECHNOLOGIES.aspx"));

			XmlDocument objDocument = MergeXml(_lstTechnologies);

			foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Technologies/Row"))
			{
				//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
				//txtDebug.SelectionStart = txtDebug.TextLength;
				//txtDebug.ScrollToCaret();
				//Application.DoEvents();
				string strTitle = GetString(objTechnology["Description"].InnerText);
				string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
				string strHelp = GetString(objTechnology["Help"].InnerText);
				string strMyHelp = strHelp;
				strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
				strHelp += "<div class=\"infobox\">";
				strHelp += strMyHelp;
				strHelp += "</div>";

				string strQuote = GetString(objTechnology["Quote"].InnerText);
				string strMyQuote = strQuote;
				strQuote = "<h2>" + TXT_KEY_PEDIA_QUOTE_LABEL + "</h2>";
				strQuote += "<div class=\"infobox\">";
				strQuote += strMyQuote;
				strQuote += "</div>";

				string strDesc = GetString(objTechnology["Civilopedia"].InnerText);
				string strMyDesc = strDesc;
				strDesc = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
				strDesc += "<div class=\"infobox\">";
				strDesc += strMyDesc;
				strDesc += "</div>";

				string strCost = objTechnology["Cost"].InnerText + " <img src=\"/civilopediabe/images/research.png\" alt=\"research\" />";
				string strMyCost = strCost;
				strCost = "<h2>" + TXT_KEY_PEDIA_COST_LABEL + "</h2>";
				strCost += "<div class=\"infobox\">";
				strCost += strMyCost;
				strCost += "</div>";

				// Look for Prereq Tech.
				string strPrereq = "";
				foreach (XmlNode objPrereq in objDocument.SelectNodes("/GameData/Technology_PrereqTechs/Row[TechType = \"" + objTechnology["Type"].InnerText + "\"]"))
				{
					if (strPrereq == "")
					{
						strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
						strPrereq += "<div class=\"infobox\">";
					}
					string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["PrereqTech"].InnerText);
					strPrereq += "<a href=\"" + objPrereq["PrereqTech"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["PrereqTech"].InnerText + ".png\" /></a>";
				}
				if (strPrereq != "")
					strPrereq += "</div>";

				// Look for Techs this one leads to.
				string strLeads = "";
				foreach (XmlNode objPrereq in objDocument.SelectNodes("/GameData/Technology_PrereqTechs/Row[PrereqTech = \"" + objTechnology["Type"].InnerText + "\"]"))
				{
					if (strLeads == "")
					{
						strLeads += "<h2>" + TXT_KEY_PEDIA_LEADS_TO_TECH_LABEL + "</h2>";
						strLeads += "<div class=\"infobox\">";
					}
					string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["TechType"].InnerText);
					strLeads += "<a href=\"" + objPrereq["TechType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["TechType"].InnerText + ".png\" /></a>";
				}
				if (strLeads != "")
					strLeads += "</div>";

				// Look for Units this unlocks.
				string strUnits = "";
				foreach (string strUnitXmlFile in _lstUnits)
				{
					XmlDocument objUnitsDocument = new XmlDocument();
					objUnitsDocument.Load(strUnitXmlFile);
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Units/Row[PrereqTech = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						// Do not include Barbarian units.
						if (!objPrereq["Type"].InnerText.StartsWith("UNIT_BARBARIAN"))
						{
							if (strUnits == "")
							{
								strUnits += "<h2>" + TXT_KEY_PEDIA_UNIT_UNLOCK_LABEL + "</h2>";
								strUnits += "<div class=\"infobox\">";
							}
							string strMyTitle = FindDescription(_lstUnits, "Units", objPrereq["Type"].InnerText);
							strUnits += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
						}
					}
				}
				if (strUnits != "")
					strUnits += "</div>";

				// Look for Buildings this unlocks.
				string strBuildings = "";
				foreach (string strBuildingXmlFile in _lstBuildings)
				{
					XmlDocument objUnitsDocument = new XmlDocument();
					objUnitsDocument.Load(strBuildingXmlFile);
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Buildings/Row[PrereqTech = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (objPrereq["Type"].InnerText != "BUILDING_UNITED_NATIONS")
						{
							if (strBuildings == "")
							{
								strBuildings += "<h2>" + TXT_KEY_PEDIA_BLDG_UNLOCK_LABEL + "</h2>";
								strBuildings += "<div class=\"infobox\">";
							}
							string strMyTitle = FindDescription(_lstBuildings, "Buildings", objPrereq["Type"].InnerText);
							strBuildings += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
						}
					}
				}
				if (strBuildings != "")
					strBuildings += "</div>";

				// Look for Projects this unlocks.
				string strProjects = "";
				foreach (string strProjectXmlFile in _lstProjects)
				{
					XmlDocument objUnitsDocument = new XmlDocument();
					objUnitsDocument.Load(strProjectXmlFile);
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Projects/Row[TechPrereq = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strProjects == "")
						{
							strProjects += "<h2>" + TXT_KEY_PEDIA_PROJ_UNLOCK_LABEL + "</h2>";
							strProjects += "<div class=\"infobox\">";
						}
						string strMyTitle = FindDescription(_lstProjects, "Projects", objPrereq["Type"].InnerText);
						strProjects += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
					}
				}
				if (strProjects != "")
					strProjects += "</div>";

				// Look for Resources Revealed this unlocks.
				string strResources = "";
				foreach (string strResourcesFile in _lstResources)
				{
					XmlDocument objUnitsDocument = new XmlDocument();
					objUnitsDocument.Load(strResourcesFile);
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Resources/Row[TechReveal = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strResources == "")
						{
							strResources += "<h2>" + TXT_KEY_PEDIA_RESRC_RVL_LABEL + "</h2>";
							strResources += "<div class=\"infobox\">";
						}
						string strMyTitle = FindDescription(_lstResources, "Resources", objPrereq["Type"].InnerText);
						strResources += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
					}
				}
				if (strResources != "")
					strResources += "</div>";

				// Look for Working Actions Allowed this unlocks.
				string strActions = "";
				foreach (string strBuildsFile in _lstBuilds)
				{
					XmlDocument objUnitsDocument = new XmlDocument();
					objUnitsDocument.Load(strBuildsFile);
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Builds/Row[PrereqTech = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strActions == "")
						{
							strActions += "<h2>" + TXT_KEY_PEDIA_WORKER_ACTION_LABEL + "</h2>";
							strActions += "<div class=\"infobox\">";
						}
						if (objPrereq["Type"].InnerText == "TERRAFORM_CLEAR_MIASMA" || objPrereq["Type"].InnerText == "TERRAFORM_ADD_MIASMA")
						{
							if (_strLanguage == "en_US")
							{
								CreateImage(objPrereq["Type"].InnerText, objPrereq["IconAtlas"].InnerText, objPrereq["IconIndex"].InnerText, 64);
							}
							string strUrl = "";
							switch (objPrereq["Type"].InnerText)
							{
								case "TERRAFORM_CLEAR_MIASMA":
									strUrl = "CONCEPT_WORKERS_CLEARINGLAND";
									break;
								case "TERRAFORM_ADD_MIASMA":
									strUrl = "CONCEPT_WORKERS_CLEARINGLAND";
									break;
							}
							// Pull out the [LINK] information from the "Construct a [X]" strings since they're useless here.
							string strMyTitle = FindDescription(_lstBuilds, "Builds", objPrereq["Type"].InnerText);
							strMyTitle = strMyTitle.Replace("[\\LINK]", string.Empty);
							int intStart = strMyTitle.IndexOf("[LINK");
							int intEnd = strMyTitle.IndexOf("]");
							if (intStart > 0 && intEnd != intStart)
							{
								intEnd += 1;
								string strChop = strMyTitle.Substring(intStart, intEnd - intStart);
								strMyTitle = strMyTitle.Replace(strChop, string.Empty);
							}
							strActions += "<a href=\"" + strUrl + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText.Replace("BUILD_", "IMPROVEMENT_") + ".png\" /></a>";
						}
						else
						{
							// Pull out the [LINK] information from the "Construct a [X]" strings since they're useless here.
							string strMyTitle = FindDescription(_lstBuilds, "Builds", objPrereq["Type"].InnerText);
							strMyTitle = strMyTitle.Replace("[\\LINK]", string.Empty);
							int intStart = strMyTitle.IndexOf("[LINK");
							int intEnd = strMyTitle.IndexOf("]");
							if (intStart > 0 && intEnd != intStart)
							{
								intEnd += 1;
								string strChop = strMyTitle.Substring(intStart, intEnd - intStart);
								strMyTitle = strMyTitle.Replace(strChop, string.Empty);
							}
							strActions += "<a href=\"" + objPrereq["Type"].InnerText.Replace("BUILD_", "IMPROVEMENT_") + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText.Replace("BUILD_", "IMPROVEMENT_") + ".png\" /></a>";
						}

						if (objTechnology["Type"].InnerText == "TECH_FABRICATION")
						{
							strActions = strActions.Replace("IMPROVEMENT_", "ROUTE_");
						}
					}
				}
				if (strActions != "")
					strActions += "</div>";

				// Look for Affinities Gains.
				string strAffinities = "";
				foreach (XmlNode objAffinity in objDocument.SelectNodes("/GameData/Technology_Affinities/Row[TechType = \"" + objTechnology["Type"].InnerText + "\"]"))
				{
					if (strAffinities == "")
					{
						strAffinities += "<h2>" + TXT_KEY_PEDIA_AFFINITIES_LABEL + "</h2>";
						strAffinities += "<div class=\"infobox\">";
					}
					string strAffinity = "";
					string strAffinityClass = objAffinity["AffinityType"].InnerText.ToLower();

					switch (objAffinity["AffinityType"].InnerText)
					{
						case "AFFINITY_TYPE_PURITY":
							strAffinity = GetString("TXT_KEY_AFFINITY_TYPE_PURITY");
							break;
						case "AFFINITY_TYPE_HARMONY":
							strAffinity = GetString("TXT_KEY_AFFINITY_TYPE_HARMONY");
							break;
						default:
							strAffinity = "AFFINITY_TYPE_SUPREMACY";
							strAffinity = GetString("TXT_KEY_AFFINITY_TYPE_SUPREMACY");
							break;
					}

					string strMyTitle = FindDescription(_lstAffinities, "Affinity_Types", objAffinity["AffinityType"].InnerText);
					strAffinities += "<a href=\"" + objAffinity["AffinityType"].InnerText + ".aspx\" class=\"" + strAffinityClass + "\"><img src=\"/civilopediabe/images/" + objAffinity["AffinityType"].InnerText + ".png\" />" + strAffinity + "</a>";
				}
				if (strAffinities != "")
					strAffinities += "</div>";

				// Look for Special Abilities this unlocks.
				string strSpecial = "";

				// Look for Special Abilities in the Improvements files.
				foreach (string strBuildsFile in _lstImprovements)
				{
					XmlDocument objUnitsDocument = new XmlDocument();
					objUnitsDocument.Load(strBuildsFile);
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Improvement_TechFreshWaterYieldChanges/Row[TechType = \"" + objTechnology["Type"].InnerText + "\"]"))
						strSpecial += TXT_KEY_ABLTY_FRESH_WATER_STRING + " " + GetName(objPrereq["ImprovementType"].InnerText) + " " + TXT_KEY_ABLTY_YIELD_IMPRVD_STRING + " " + objPrereq["Yield"].InnerText + "<br />";
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Improvement_TechNoFreshWaterYieldChanges/Row[TechType = \"" + objTechnology["Type"].InnerText + "\"]"))
						strSpecial += TXT_KEY_ABLTY_NO_FRESH_WATER_STRING + " " + GetName(objPrereq["ImprovementType"].InnerText) + " " + TXT_KEY_ABLTY_YIELD_IMPRVD_STRING + " " + objPrereq["Yield"].InnerText + "<br />";
					foreach (XmlNode objPrereq in objUnitsDocument.SelectNodes("/GameData/Improvement_TechYieldChanges/Row[TechType = \"" + objTechnology["Type"].InnerText + "\"]"))
						strSpecial += GetName(objPrereq["ImprovementType"].InnerText) + " " + "<img src=\"/civilopediabe/images/" + objPrereq["YieldType"].InnerText.Replace("YIELD_", string.Empty).ToLower() + ".png\" />" + " " + GetString("TXT_KEY_" + objPrereq["YieldType"].InnerText) + " " + TXT_KEY_ABLTY_YIELD_IMPRVD_STRING + " " + objPrereq["Yield"].InnerText + "<br />";
				}

				// BridgeBuilding.
				if (objTechnology["BridgeBuilding"] != null)
				{
					if (objTechnology["BridgeBuilding"].InnerText == "true")
						strSpecial += GetString("TXT_KEY_ABLTY_BRIDGE_STRING") + "<br />";
				}
				// AllowsEmbarking.
				if (objTechnology["AllowsEmbarking"] != null)
				{
					if (objTechnology["AllowsEmbarking"].InnerText == "true")
						strSpecial += GetString("TXT_KEY_ALLOWS_EMBARKING") + "<br />";
				}
				// DefensivePactTradingAllowed.
				if (objTechnology["DefensivePactTradingAllowed"] != null)
				{
					if (objTechnology["DefensivePactTradingAllowed"].InnerText == "true")
						strSpecial += GetString("TXT_KEY_ALLOWS_DEFENSIVE_PACTS") + "<br />";
				}
				// OpenBordersTradingAllowed.
				if (objTechnology["OpenBordersTradingAllowed"] != null)
				{
					if (objTechnology["OpenBordersTradingAllowed"].InnerText == "true")
						strSpecial += GetString("TXT_KEY_ABLTY_OPEN_BORDER_STRING") + "<br />";
				}
				//ResearchAgreementTradingAllowed.
				if (objTechnology["ResearchAgreementTradingAllowed"] != null)
				{
					if (objTechnology["ResearchAgreementTradingAllowed"].InnerText == "true")
						strSpecial += GetString("TXT_KEY_ABLTY_R_PACT_STRING") + "<br />";
				}
				// EmbarkedMoveChange.
				if (objTechnology["EmbarkedMoveChange"] != null)
					strSpecial += GetString("TXT_KEY_ABLTY_FAST_EMBARK_STRING") + "<br />";
				// EmbarkedAllWaterPassage.
				if (objTechnology["EmbarkedAllWaterPassage"] != null)
				{
					if (objTechnology["EmbarkedAllWaterPassage"].InnerText == "true")
						strSpecial += GetString("TXT_KEY_ABLTY_OCEAN_EMBARK_STRING") + "<br />";
				}

				// Check for Movement rate changes.
				XmlDocument objRoutesDocument = MergeXml(_lstRoutes);
				XmlNode objRouteNode = objRoutesDocument.SelectSingleNode("/GameData/Route_TechMovementChanges/Row[TechType = \"" + objTechnology["Type"].InnerText + "\"]");
				if (objRouteNode != null)
					strSpecial += GetString("TXT_KEY_ABLTY_FASTER_MOVEMENT_STRING") + " " + GetName(objRouteNode["RouteType"].InnerText);

				if (strSpecial != "")
				{
					string strMySpecial = strSpecial;
					strSpecial = "<h2>" + TXT_KEY_PEDIA_ABILITIES_LABEL + "</h2>";
					strSpecial += "<div class=\"infobox\">";
					strSpecial += strMySpecial;
					strSpecial += "</div>";
				}

				string strOutput = strTemplate;
				strOutput = strOutput.Replace("##TITLE##", strTitle);
				strOutput = strOutput.Replace("##HELP##", strHelp);
				strOutput = strOutput.Replace("##QUOTE##", strQuote);
				strOutput = strOutput.Replace("##DESC##", strDesc);
				strOutput = strOutput.Replace("##COST##", strCost);
				strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
				strOutput = strOutput.Replace("##PREREQ##", strPrereq);
				strOutput = strOutput.Replace("##LEADS##", strLeads);
				strOutput = strOutput.Replace("##UNITS##", strUnits);
				strOutput = strOutput.Replace("##BUILDINGS##", strBuildings);
				strOutput = strOutput.Replace("##RESOURCES##", strResources);
				strOutput = strOutput.Replace("##ACTIONS##", strActions);
				strOutput = strOutput.Replace("##PROJECTS##", strProjects);
				strOutput = strOutput.Replace("##SPECIAL##", strSpecial);
				strOutput = strOutput.Replace("##AFFINITIES##", strAffinities);

				// Create a GroupItem for this Tech.
				GroupItem objItem = new GroupItem();
				objItem.Key = objTechnology["Type"].InnerText;
				objItem.Name = strTitle;

				// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
				objGroup.GroupItems.Add(objItem);

				_strXml += "\t\t<page>";
				_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
				_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
				_strXml += "\t\t</page>";

				// Create the Image.
				if (_strLanguage == "en_US")
				{
					CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
					CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
				}

				File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_TECHNOLOGIES_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"TECH_HOME.aspx\"><div id=\"TECH_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			objGroup.Sort();
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Technologies.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Units pages.
		/// </summary>
		private void GenerateUnits()
		{
			txtDebug.Text += "\r\nGenerating Units...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = CreateEraGroups(true);
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_UNITS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_UNITS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_UNITS_HELP_TEXT");
			const string strHomeImage = "UNIT_ARCHER";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Units";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "UNIT_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_UNITS.aspx"));
			foreach (String strXmlFile in _lstUnits)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Units/Row"))
				{
					bool blnGreatPerson = false;
					if (objTechnology["Special"] != null)
					{
						blnGreatPerson = (objTechnology["Special"].InnerText == "SPECIALUNIT_PEOPLE");
					}

					// Ignore the Barbarians (except for Brute) and Great People.
					bool blnCreate = true;
					if (blnGreatPerson)
						blnCreate = false;
					if (objTechnology["Type"].InnerText.StartsWith("UNIT_BARBARIAN"))
					{
						blnCreate = false;
						if (objTechnology["Type"].InnerText.StartsWith("UNIT_BARBARIAN_WARRIOR"))
							blnCreate = true;
						if (objTechnology["Type"].InnerText.StartsWith("UNIT_BARBARIAN_AXMAN"))
							blnCreate = true;
					}

					if (blnCreate)
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strHelp = "";
						try
						{
							strHelp = GetString(objTechnology["Help"].InnerText);
							if (strHelp != "")
							{
								string strMyHelp = strHelp;
								strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
								strHelp += "<div class=\"infobox\">";
								strHelp += strMyHelp;
								strHelp += "</div>";
							}
						}
						catch
						{
						}
						string strStrategy = "";
						try
						{
							strStrategy = GetString(objTechnology["Strategy"].InnerText);
							string strMyStrategy = strStrategy;
							strStrategy = "<h2>" + TXT_KEY_PEDIA_STRATEGY_LABEL + "</h2>";
							strStrategy += "<div class=\"infobox\">";
							strStrategy += strMyStrategy;
							strStrategy += "</div>";
						}
						catch
						{
						}
                        string strSpecialAbilities = "";
                        try
                        {
                            if (objTechnology["Invisibility"].InnerText == "true")
                            {
                                strSpecialAbilities += GetString("TXT_KEY_TERM_INVISIBILITY") + "[NEWLINE]";
                                strSpecialAbilities += GetString("TXT_KEY_SUMMARY_INVISIBILITY");
                            }

                            if (strSpecialAbilities != "")
                            {
                                string strMySpecial = strSpecialAbilities;
                                strSpecialAbilities = "<h2>" + GetString("TXT_KEY_PEDIA_ABILITIES_LABEL") + "</h2>";
                                strSpecialAbilities += "<div class=\"infobox\">";
                                strSpecialAbilities += strMySpecial;
                                strSpecialAbilities += "</div>";
                            }
                        }
                        catch
                        {
                        }
						string strDesc = "";
						try
						{
							strDesc = GetString(objTechnology["Civilopedia"].InnerText);
							string strMyDesc = strDesc;
							strDesc = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
							strDesc += "<div class=\"infobox\">";
							strDesc += strMyDesc;
							strDesc += "</div>";
						}
						catch
						{
						}
						string strMoves = objTechnology["Moves"].InnerText + " <img src=\"/civilopediabe/images/moves.png\" alt=\"moves\" />";
						string strMyMoves = strMoves;
						strMoves = "<h2>" + TXT_KEY_PEDIA_MOVEMENT_LABEL + "</h2>";
						strMoves += "<div class=\"infobox\">";
						strMoves += strMyMoves;
						strMoves += "</div>";

						// Class UNITCLASS_AIR_FIGHTER, UNITCLASS_TRADER, and UNITCLASS_SEA_TRADER should not have a Movement entry.
						if (objTechnology["Class"].InnerText == "UNITCLASS_AIR_FIGHTER" || objTechnology["Class"].InnerText == "UNITCLASS_TRADER" || objTechnology["Class"].InnerText == "UNITCLASS_SEA_TRADER")
							strMoves = string.Empty;

						string strCost = "";
                        if (!objTechnology["Type"].InnerText.StartsWith("UNIT_ALIEN"))
                        {
                            if (objTechnology["Cost"] != null)
                            {
                                if (objTechnology["Cost"].InnerText != "-1")
                                    strCost = objTechnology["Cost"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" />";
                            }
                            if (objTechnology["FaithCost"] != null)
                            {
                                if (strCost != string.Empty)
                                    strCost += " / ";
                                strCost += objTechnology["FaithCost"].InnerText + " <img src=\"/civilopediabe/images/peace.png\" alt=\"faith\" />";
                            }

                            if (strCost == string.Empty)
                                strCost = "FREE";
                            if (strCost != string.Empty)
                            {
                                string strMyCost = strCost;
                                strCost = "<h2>" + TXT_KEY_PEDIA_COST_LABEL + "</h2>";
                                strCost += "<div class=\"infobox\">";
                                strCost += strMyCost;
                                strCost += "</div>";
                            }
                        }

						// Look for Combat.
						string strCombat = "";
						if (objTechnology["Combat"] != null)
						{
							strCombat += "<h2>" + TXT_KEY_PEDIA_COMBAT_LABEL + "</h2>";
							strCombat += "<div class=\"infobox\">";
							strCombat += objTechnology["Combat"].InnerText + " <img src=\"/civilopediabe/images/strength.png\" alt=\"strength\" />";
							strCombat += "</div>";
						}

						// Look for Ranged Combat.
						string strRangedCombat = "";
						if (objTechnology["RangedCombat"] != null)
						{
							strRangedCombat += "<h2>" + TXT_KEY_PEDIA_RANGEDCOMBAT_LABEL + "</h2>";
							strRangedCombat += "<div class=\"infobox\">";
							strRangedCombat += objTechnology["RangedCombat"].InnerText + " <img src=\"/civilopediabe/images/range_strength.png\" alt=\"range strength\" />";
							strRangedCombat += "</div>";
						}

						// Look for Range.
						string strRange = "";
						if (objTechnology["RangedCombat"] != null)
						{
							strRange += "<h2>" + TXT_KEY_PEDIA_RANGE_LABEL + "</h2>";
							strRange += "<div class=\"infobox\">";
							strRange += objTechnology["Range"].InnerText + " <img src=\"/civilopediabe/images/range.png\" alt=\"range\" />";
							strRange += "</div>";
						}

						// Look for Prereq Tech.
						string strPrereq = "";
						if (objTechnology["PrereqTech"] != null)
						{
							foreach (string strTechXmlFile in _lstTechnologies)
							{
								XmlDocument objTechDocument = new XmlDocument();
								objTechDocument.Load(strTechXmlFile);
								foreach (XmlNode objPrereq in objTechDocument.SelectNodes("/GameData/Technologies/Row[Type = \"" + objTechnology["PrereqTech"].InnerText + "\"]"))
								{
									if (strPrereq == "")
									{
										strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
										strPrereq += "<div class=\"infobox\">";
									}
									string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["Type"].InnerText);
									strPrereq += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
								}
							}
							if (strPrereq != "")
								strPrereq += "</div>";
						}

						// Look for Obsolete Tech.
						string strObsolete = "";
						if (objTechnology["ObsoleteTech"] != null)
						{
							foreach (string strTechXmlFile in _lstTechnologies)
							{
								XmlDocument objTechDocument = new XmlDocument();
								objTechDocument.Load(strTechXmlFile);
								foreach (XmlNode objPrereq in objTechDocument.SelectNodes("/GameData/Technologies/Row[Type = \"" + objTechnology["ObsoleteTech"].InnerText + "\"]"))
								{
									if (strObsolete == "")
									{
										strObsolete += "<h2>" + TXT_KEY_PEDIA_OBSOLETE_TECH_LABEL + "</h2>";
										strObsolete += "<div class=\"infobox\">";
									}
									string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["Type"].InnerText);
									strObsolete += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
								}
							}
							if (strObsolete != "")
								strObsolete += "</div>";
						}

						// Look for Upgrades.
						string strUpgrade = "";
						List<string> lstSeenUpgrades = new List<string>();
						foreach (string strUnitFile in _lstUnits)
						{
							XmlDocument objUnitDoc = new XmlDocument();
							objUnitDoc.Load(strUnitFile);

							XmlNode objUpgradeClass = objUnitDoc.SelectSingleNode("/GameData/Unit_ClassUpgrades/Row[UnitType = \"" + objTechnology["Type"].InnerText + "\"]");
							if (objUpgradeClass != null)
							{
								foreach (string strClassFile in _lstUnitClasses)
								{
									XmlDocument objClassDoc = new XmlDocument();
									objClassDoc.Load(strClassFile);

									XmlNode objClass = objClassDoc.SelectSingleNode("/GameData/UnitClasses/Row[Type = \"" + objUpgradeClass["UnitClassType"].InnerText + "\"]");
									if (objClass != null)
									{
										bool blnCreateUpgrade = true;
										foreach (string strUnit in lstSeenUpgrades)
										{
											if (strUnit == objClass["DefaultUnit"].InnerText)
												blnCreateUpgrade = false;
										}

										if (blnCreateUpgrade)
										{
											lstSeenUpgrades.Add(objClass["DefaultUnit"].InnerText);
											string strMyTitle = FindDescription(_lstUnits, "Units", objClass["DefaultUnit"].InnerText);
											strUpgrade += "<a href=\"" + objClass["DefaultUnit"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objClass["DefaultUnit"].InnerText + ".png\" /></a>";
										}
									}
								}
							}
						}
						if (strUpgrade != "")
						{
							string strMyUpgrade = strUpgrade;
							strUpgrade = "<h2>" + TXT_KEY_COMMAND_UPGRADE + "</h2>";
							strUpgrade += "<div class=\"infobox\">";
							strUpgrade += strMyUpgrade;
							strUpgrade += "</div>";
						}

						// Look for Civilization.
						string strCivilization = "";
						string strReplaces = "";
						foreach (string strCivXmlFile in _lstCivilizations)
						{
							XmlDocument objCivDocument = new XmlDocument();
							objCivDocument.Load(strCivXmlFile);
							foreach (XmlNode objPrereq in objCivDocument.SelectNodes("/GameData/Civilization_UnitClassOverrides/Row[UnitType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								if (objPrereq["CivilizationType"].InnerText != "CIVILIZATION_ALIEN")
								{
									strCivilization += "<h2>" + TXT_KEY_PEDIA_CIVILIZATIONS_LABEL + "</h2>";
									strCivilization += "<div class=\"infobox\">";
									string strMyTitle = FindDescription(_lstCivilizations, "Civilizations", objPrereq["CivilizationType"].InnerText);
									strCivilization += "<a href=\"" + objPrereq["CivilizationType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["CivilizationType"].InnerText + ".png\" /></a>";

									// Locate the replaced Units.
									foreach (string strUnitXmlFile in _lstUnitClasses)
									{
										XmlDocument objBuildingDoc = new XmlDocument();
										objBuildingDoc.Load(strUnitXmlFile);
										XmlNode objReplace = objBuildingDoc.SelectSingleNode("/GameData/UnitClasses/Row[Type = \"" + objPrereq["UnitClassType"].InnerText + "\"]");
										if (objReplace != null)
										{
											strReplaces += "<h2>" + TXT_KEY_PEDIA_REPLACES_LABEL + "</h2>";
											strReplaces += "<div class=\"infobox\">";
											string strMyUnitTitle = FindDescription(_lstUnits, "Units", objReplace["DefaultUnit"].InnerText);
											strReplaces += "<a href=\"" + objReplace["DefaultUnit"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyUnitTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objReplace["DefaultUnit"].InnerText + ".png\" /></a>";
										}
									}
								}
							}
						}
						if (strCivilization != "")
							strCivilization += "</div>";
						if (strReplaces != "")
							strReplaces += "</div>";

						// Look for Required Resources.
						string strResources = "";
						foreach (XmlNode objResources in objDocument.SelectNodes("/GameData/Unit_ResourceQuantityRequirements/Row[UnitType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							string strMyTitle = FindDescription(_lstResources, "Resources", objResources["ResourceType"].InnerText);
							strResources += "<a href=\"" + objResources["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objResources["ResourceType"].InnerText + ".png\" /></a>";
						}
						if (strResources != "")
						{
							string strMyResources = strResources;
							strResources = "<h2>" + TXT_KEY_PEDIA_REQ_RESRC_LABEL + "</h2>";
							strResources += "<div class=\"infobox\">";
							strResources += strMyResources;
							strResources += "</div>";
						}

						// Look for Affinity Requirements.
						string strAffinity = "";
                        strAffinity += "<h2>" + TXT_KEY_PEDIA_CATEGORY_15_LABEL + ":</h2>";
                        strAffinity += "<div class=\"infobox\">";

                        string strMyAffinity = string.Empty;
                        XmlNodeList objAffinities = objDocument.SelectNodes("/GameData/Unit_AffinityPrereqs/Row[UnitType = \"" + objTechnology["Type"].InnerText + "\"]");
						if (objAffinities != null)
						{
                            foreach (XmlNode objAffinity in objAffinities)
                            {
                                string strAffinityClass = ""; ;
                                string strAffinityName = "";
                                string strAffinityIcon = "";
                                switch (objAffinity["AffinityType"].InnerText)
                                {
                                    case "AFFINITY_TYPE_PURITY":
                                        strAffinityName = GetString("TXT_KEY_AFFINITY_TYPE_PURITY");
                                        strAffinityClass = "COLOR_PURITY_AFFINITY";
                                        strAffinityIcon = "[ICON_PURITY]";
                                        break;
                                    case "AFFINITY_TYPE_HARMONY":
                                        strAffinityName = GetString("TXT_KEY_AFFINITY_TYPE_HARMONY");
                                        strAffinityClass = "COLOR_HARMONY_AFFINITY";
                                        strAffinityIcon = "[ICON_HARMONY]";
                                        break;
                                    default:
                                        strAffinityName = GetString("TXT_KEY_AFFINITY_TYPE_SUPREMACY");
                                        strAffinityClass = "COLOR_SUPREMACY_AFFINITY";
                                        strAffinityIcon = "[ICON_SUPREMACY]";
                                        break;
                                }


                                string strAffinityString = GetString("TXT_KEY_AFFINITY_LEVEL_REQUIRED", false);
                                strAffinityString = strAffinityString.Replace("{1_AffinityColorType}", strAffinityClass);
                                strAffinityString = strAffinityString.Replace("{2_Num}", objAffinity["Level"].InnerText);
                                strAffinityString = strAffinityString.Replace("{@3_AffinityIcon}", strAffinityIcon);
                                strAffinityString = strAffinityString.Replace("{@4_AffinityName}", strAffinityName);

                                if (strMyAffinity != string.Empty)
                                    strMyAffinity += "<br />";
                                strMyAffinity += ParseString(strAffinityString);
                            }
						}
                        if (strMyAffinity != "")
                            strAffinity = strAffinity + strMyAffinity + "</div>";
                        else
                            strAffinity = string.Empty;

                        // Look for Promotions.
                        string strPromotions = "";
                        XmlNodeList objPromotions = objDocument.SelectNodes("/GameData/Unit_FreePromotions/Row[UnitType = \"" + objTechnology["Type"].InnerText + "\"]");
                        if (objPromotions != null)
                        {
                            foreach (XmlNode objPromotion in objPromotions)
                            {
                                foreach (string strPrmotionXmlFile in _lstPromotions)
                                {
                                    XmlDocument objPromotionDocument = new XmlDocument();
                                    objPromotionDocument.Load(strPrmotionXmlFile);

                                    foreach (XmlNode objPromotionNode in objPromotionDocument.SelectNodes("/GameData/UnitPromotions/Row[Type = \"" + objPromotion["PromotionType"].InnerText + "\"]"))
                                    {
                                        string strMyTitle = GetString(objPromotionNode["Description"].InnerText);
                                        strPromotions += "<img src=\"/civilopediabe/images/small/" + objPromotionNode["Type"].InnerText + ".png\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\" />";

                                        // Create the Image.
                                        if (_strLanguage == "en_US")
                                        {
                                            CreateImage(objPromotionNode["Type"].InnerText, objPromotionNode["IconAtlas"].InnerText, objPromotionNode["PortraitIndex"].InnerText, 128);
                                            CreateImage(objPromotionNode["Type"].InnerText, objPromotionNode["IconAtlas"].InnerText, objPromotionNode["PortraitIndex"].InnerText, 64);
                                        }
                                    }
                                }
                            }
                        }

                        if (strPromotions != "")
                        {
                            string strMyPromotions = strPromotions;
                            strPromotions = "<h2>" + GetString("TXT_KEY_PEDIA_FREEPROMOTIONS_LABEL") + "</h2>";
                            strPromotions += "<div class=\"infobox\">";
                            strPromotions += strMyPromotions;
                            strPromotions += "</div>";
                        }

                        // Orbital information.
                        string strOrbitalRange = "";
						string strOrbitalDuration = "";
						if (objTechnology["UnitArtInfo"].InnerText == "ART_DEF_UNIT_SAT_GANTRY" || objTechnology["Type"].InnerText == "UNIT_ROCKTOPUS")
						{
							foreach (string strOrbitalDocument in _lstOrbitals)
							{
								XmlDocument objOrbitalDocument = new XmlDocument();
								objOrbitalDocument.Load(strOrbitalDocument);

								if (objOrbitalDocument.SelectSingleNode("/GameData/OrbitalUnits/Row[Type = \"ORBITAL" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									XmlNode objOrbitalNode = objOrbitalDocument.SelectSingleNode("/GameData/OrbitalUnits/Row[Type = \"ORBITAL" + objTechnology["Type"].InnerText + "\"]");
									if (objOrbitalNode != null)
									{
										strOrbitalRange = "<h2>" + TXT_KEY_PEDIA_ORBITAL_EFFECT_RANGE_LABEL + "</h2>";
										strOrbitalRange += "<div class=\"infobox\">";
										strOrbitalRange += objOrbitalNode["EffectRange"].InnerText + " <img src=\"/civilopediabe/images/orbitalrange.png\" alt=\"orbital range\" />";
										strOrbitalRange += "</div>";

										strOrbitalDuration = "<h2>" + TXT_KEY_PEDIA_ORBITAL_TURN_DURATION_LABEL + "</h2>";
										strOrbitalDuration += "<div class=\"infobox\">";
										strOrbitalDuration += objOrbitalNode["TurnDuration"].InnerText + " <img src=\"/civilopediabe/images/orbitalduration.png\" alt=\"orbital duration\" />";
										strOrbitalDuration += "</div>";
									}
								}
							}

							// Orbitals should not have a Movement item (except the Rocktopus).
							if (objTechnology["Type"].InnerText != "UNIT_ROCKTOPUS")
								strMoves = string.Empty;
						}

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##HELP##", strHelp);
						strOutput = strOutput.Replace("##STRATEGY##", strStrategy);
						strOutput = strOutput.Replace("##DESC##", strDesc);
						strOutput = strOutput.Replace("##COST##", strCost);
						strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
						strOutput = strOutput.Replace("##COMBAT##", strCombat);
						strOutput = strOutput.Replace("##RANGEDCOMBAT##", strRangedCombat);
						strOutput = strOutput.Replace("##RANGE##", strRange);
						strOutput = strOutput.Replace("##MOVES##", strMoves);
						strOutput = strOutput.Replace("##CIVILIZATION##", strCivilization);
						strOutput = strOutput.Replace("##PREREQ##", strPrereq);
						strOutput = strOutput.Replace("##RESOURCES##", strResources);
						strOutput = strOutput.Replace("##OBSOLETE##", strObsolete);
						strOutput = strOutput.Replace("##UPGRADE##", strUpgrade);
						strOutput = strOutput.Replace("##REPLACES##", strReplaces);
						strOutput = strOutput.Replace("##AFFINITY##", strAffinity);
						strOutput = strOutput.Replace("##ORBITALRANGE##", strOrbitalRange);
						strOutput = strOutput.Replace("##ORBITALDURATION##", strOrbitalDuration);
                        strOutput = strOutput.Replace("##ABILITIES##", strPromotions);
                        strOutput = strOutput.Replace("##SPECIALABILITIES##", strSpecialAbilities);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;

						// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
						objGroup.GroupItems.Add(objItem);

						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						// Create the Image.
						if (_strLanguage == "en_US")
						{
							// Look for the Atlas info.
							string strUnitArtInfo = objTechnology["UnitArtInfo"].InnerText;

							if (objTechnology["UnitArtInfo"].InnerText == "ART_DEF_UNIT_SAT_GANTRY")
							{
								// Orbital images.
								foreach (string strOrbitalDocument in _lstOrbitals)
								{
									XmlDocument objOrbitalDocument = new XmlDocument();
									objOrbitalDocument.Load(strOrbitalDocument);

									if (objOrbitalDocument.SelectSingleNode("/GameData/OrbitalUnits/Row[Type = \"ORBITAL" + objTechnology["Type"].InnerText + "\"]") != null)
									{
										XmlNode objOrbitalNode = objOrbitalDocument.SelectSingleNode("/GameData/OrbitalUnits/Row[Type = \"ORBITAL" + objTechnology["Type"].InnerText + "\"]");
										foreach (string strArtDefinesFile in _lstArtDefines)
										{
											XmlDocument objArtDefinesDocument = new XmlDocument();
											objArtDefinesDocument.Load(strArtDefinesFile);
											if (objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objOrbitalNode["InOrbitUnitArtInfo"].InnerText + "\"]") != null)
											{
												XmlNode objNode = objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objOrbitalNode["InOrbitUnitArtInfo"].InnerText + "\"]");
												CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 128);
												CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 64);
											}
										}
									}
								}
							}
							else
							{
								// Standard images.
								foreach (string strArtDefinesFile in _lstArtDefines)
								{
									XmlDocument objArtDefinesDocument = new XmlDocument();
									objArtDefinesDocument.Load(strArtDefinesFile);
									if (objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objTechnology["UnitArtInfo"].InnerText + "\"]") != null)
									{
										XmlNode objNode = objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objTechnology["UnitArtInfo"].InnerText + "\"]");
										CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 128);
										CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 64);
									}
									else
									{
										if (objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objTechnology["UnitArtInfo"].InnerText + "01\"]") != null)
										{
											XmlNode objNode = objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objTechnology["UnitArtInfo"].InnerText + "01\"]");
											CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 128);
											CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 64);
										}
										else if (objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objTechnology["UnitArtInfo"].InnerText + "02\"]") != null)
										{
											XmlNode objNode = objArtDefinesDocument.SelectSingleNode("/UnitArtInfos/UnitArtInfo[Type = \"" + objTechnology["UnitArtInfo"].InnerText + "02\"]");
											CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 128);
											CreateImage(objTechnology["Type"].InnerText, objNode["PortraitAtlas"].InnerText, objNode["PortraitIndex"].InnerText, 64);
										}
									}
								}
							}
						}

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_UNITS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"UNIT_HOME.aspx\"><div id=\"UNIT_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			objGroup.Sort();
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Units.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Unit Upgrades pages.
		/// </summary>
		private void GenerateUnitUpgrades()
		{
			txtDebug.Text += "\r\nGenerating Unit Upgrades...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_PROMOTIONS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_PROMOTIONS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_PROMOTIONS_HELP_TEXT");
			const string strHomeImage = "PROMOTION_59";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Promotions";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "PROMOTION_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_PROMOTIONS.aspx"));
			foreach (string strXmlFile in _lstUnitUpgrades)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/UnitUpgrades/Row"))
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
					string strHelp = "";

					// Generate the Game Info string.
					// Affinity requirements.
					if (objTechnology["HarmonyLevel"] != null)
					{
						if (strHelp != string.Empty)
							strHelp += "<br/ >";
						strHelp += "[COLOR_HARMONY_AFFINITY][ICON_HARMONY] " + GetString("TXT_KEY_UPANEL_AFFINITY_LEVEL_UNLOCK_TT", false) + "[ENDCOLOR]";
						strHelp = strHelp.Replace("{1_affinityType}", GetString("TXT_KEY_AFFINITY_TYPE_HARMONY"));
						strHelp = strHelp.Replace("{2_level}", objTechnology["HarmonyLevel"].InnerText);
					}
					if (objTechnology["PurityLevel"] != null)
					{
						if (strHelp != string.Empty)
							strHelp += "<br/ >";
						strHelp += "[COLOR_PURITY_AFFINITY][ICON_PURITY] " + GetString("TXT_KEY_UPANEL_AFFINITY_LEVEL_UNLOCK_TT", false) + "[ENDCOLOR]";
						strHelp = strHelp.Replace("{1_affinityType}", GetString("TXT_KEY_AFFINITY_TYPE_PURITY"));
						strHelp = strHelp.Replace("{2_level}", objTechnology["PurityLevel"].InnerText);
					}
					if (objTechnology["SupremacyLevel"] != null)
					{
						if (strHelp != string.Empty)
							strHelp += "<br/ >";
						strHelp += "[COLOR_SUPREMACY_AFFINITY][ICON_SUPREMACY] " + GetString("TXT_KEY_UPANEL_AFFINITY_LEVEL_UNLOCK_TT", false) + "[ENDCOLOR]";
						strHelp = strHelp.Replace("{1_affinityType}", GetString("TXT_KEY_AFFINITY_TYPE_SUPREMACY"));
						strHelp = strHelp.Replace("{2_level}", objTechnology["SupremacyLevel"].InnerText);
					}
					if (objTechnology["AnyAffinityLevel"] != null)
					{
						if (strHelp != string.Empty)
							strHelp += "<br/ >";
						strHelp += GetString("TXT_KEY_UPANEL_AFFINITY_LEVEL_UNLOCK_TT", false);
						strHelp = strHelp.Replace("{1_affinityType}", GetString("TXT_KEY_AFFINITY_TYPE_ANY"));
						strHelp = strHelp.Replace("{2_level}", objTechnology["AnyAffinityLevel"].InnerText);
					}

					// Extra combat strength.
					if (objTechnology["FreePerk"] != null)
					{
						strHelp += "<br />";
						foreach (string strPerkDocument in _lstUnitPerks)
						{
							XmlDocument objPerkDocument = new XmlDocument();
							objPerkDocument.Load(strPerkDocument);

							XmlNode objPerkNode = objPerkDocument.SelectSingleNode("/GameData/UnitPerks/Row[Type=\"" + objTechnology["FreePerk"].InnerText + "\"]");
							if (objPerkNode["ExtraCombatStrength"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_EXTRA_COMBAT_STRENGTH", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["ExtraCombatStrength"].InnerText);
							}
							if (objPerkNode["ExtraRangedCombatStrength"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_EXTRA_RANGED_COMBAT_STRENGTH", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["ExtraRangedCombatStrength"].InnerText);
							}
							if (objPerkNode["RangeChange"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_RANGE_CHANGE", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["RangeChange"].InnerText);
							}
							if (objPerkNode["AttackCityMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_ATTACK_CITY_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["AttackCityMod"].InnerText);
							}
							if (objPerkNode["ExtraAttacks"] != null)
							{
								string strThisHelp = string.Empty;
								if (strHelp != string.Empty)
									strHelp += "<br />";
								strThisHelp += GetString("TXT_KEY_UNITPERK_EXTRA_ATTACKS", false).Replace("{1_Num}", objPerkNode["ExtraAttacks"].InnerText);

								if (strThisHelp.Contains("{1_Num:"))
								{
									int intStart = strThisHelp.IndexOf("{");
									int intEnd = strThisHelp.IndexOf("}") + 1;
									string strReplace = strThisHelp.Substring(intStart, intEnd - intStart);

									int intSingleStart = strReplace.IndexOf("1?") + 2;
									int intSingleEnd = strReplace.IndexOf(";");
									string strSingle = strReplace.Substring(intSingleStart, intSingleEnd - intSingleStart);

									int intPluralStart = strReplace.IndexOf("other?") + 6;
									int intPluralEnd = strReplace.IndexOf(";", intPluralStart);
									string strPlural = strReplace.Substring(intPluralStart, intPluralEnd - intPluralStart);

									if (objPerkNode["ExtraAttacks"].InnerText == "1")
										strThisHelp = strThisHelp.Replace(strReplace, strSingle);
									else
										strThisHelp = strThisHelp.Replace(strReplace, strPlural);
								}

								strHelp += strThisHelp;
							}
							if (objPerkNode["MoveAfterAttacking"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_MOVE_AFTER_ATTACKING", false);
							}
							if (objPerkNode["MovesChange"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_MOVES_CHANGE", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["MovesChange"].InnerText);
							}
							if (objPerkNode["FlatMovementCost"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_IGNORE_TERRAIN_COST", false);
							}
							if (objPerkNode["MoveAnywhere"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_MOVE_ANYWHERE", false);
							}
							if (objPerkNode["AttackWithAirSweepMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_ATTACK_WITH_AIR_SWEEP_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["AttackWithAirSweepMod"].InnerText);
							}
							if (objPerkNode["CargoChange"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_CARGO_CHANGE", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["CargoChange"].InnerText);
							}
							if (objPerkNode["AttackWhileInMiasmaMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_ATTACK_WHILE_IN_MIASMA_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["AttackWhileInMiasmaMod"].InnerText);
							}
							if (objPerkNode["DefendWhileInMiasmaMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_DEFEND_WHILE_IN_MIASMA_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["DefendWhileInMiasmaMod"].InnerText);
							}
							if (objPerkNode["IgnoreTerrainCost"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_IGNORE_TERRAIN_COST", false);
							}
							if (objPerkNode["GenerateMiasmaInOrbit"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_GENERATE_MIASMA_IN_ORBIT", false);
							}
							if (objPerkNode["DefendRangedMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_DEFEND_RANGED_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["DefendRangedMod"].InnerText);
							}
							if (objPerkNode["KillUnitHealChange"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_KILL_UNIT_HEAL_CHANGE", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["KillUnitHealChange"].InnerText);
							}
							if (objPerkNode["DefendMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_DEFEND_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["DefendMod"].InnerText);
							}
							if (objPerkNode["AdjacentUnitHealChange"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_ADJACENT_UNIT_HEAL_CHANGE", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["AdjacentUnitHealChange"].InnerText);
							}
							if (objPerkNode["PerUnusedMoveMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_PER_UNUSED_MOVE_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["PerUnusedMoveMod"].InnerText);
							}
							if (objPerkNode["AttackMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_ATTACK_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["AttackMod"].InnerText);
							}
							if (objPerkNode["DamageToAdjacentUnitsOnAttack"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_DAMAGE_TO_ADJACENT_UNITS_ON_ATTACK", false);
								strHelp = strHelp.Replace("{1_Num}", objPerkNode["DamageToAdjacentUnitsOnAttack"].InnerText);
							}
							if (objPerkNode["PerAdjacentFriendlyMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_PER_ADJACENT_FRIENDLY_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["PerAdjacentFriendlyMod"].InnerText);
							}
							if (objPerkNode["AdjacentFriendlyMod"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_ADJACENT_FRIENDLY_MOD", false);
								strHelp = strHelp.Replace("{1_Percent}", objPerkNode["AdjacentFriendlyMod"].InnerText);
							}
							if (objPerkNode["IgnoreRangedAttackLineOfSight"] != null)
							{
								strHelp += "<br />" + GetString("TXT_KEY_UNITPERK_IGNORE_RANGED_ATTACK_LINE_OF_SIGHT", false);
							}
						}
					}

					// Select one Perk
					strHelp += "<br /><br />" + GetString("TXT_KEY_UNIT_UPGRADE_CHOOSE_PERK");

					// Find the Perks to choose from.
					foreach (XmlNode objPerkChoice in objDocument.SelectNodes("/GameData/UnitUpgradePerkChoices/Row[UpgradeType=\"" + objTechnology["Type"].InnerText + "\"]"))
					{
						foreach (string strPerkDocument in _lstUnitPerks)
						{
							XmlDocument objPerkDocument = new XmlDocument();
							objPerkDocument.Load(strPerkDocument);

							foreach (XmlNode objPerk in objPerkDocument.SelectNodes("/GameData/UnitPerks/Row[Type=\"" + objPerkChoice["PerkType"].InnerText + "\"]"))
							{
								strHelp += "<li>";
								if (objPerk["AttackMod"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_HEALING"))
								{
									strHelp += GetString("TXT_KEY_" + objPerk["Type"].InnerText + "_HELP");
								}
								if (objPerk["NoAdjacentFriendlyMod"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_NO_ADJACENT_FRIENDLY_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["NoAdjacentFriendlyMod"].InnerText);
								}
								if (objPerk["DamageToAdjacentUnitsOnDeath"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_DAMAGE_TO_ADJACENT_UNITS_ON_DEATH", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["DamageToAdjacentUnitsOnDeath"].InnerText);
								}
								if (objPerk["Type"].InnerText == "UNITPERK_DEFEND_2")
								{
									strHelp += GetString("TXT_KEY_UNITPERK_DEFEND_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["DefendMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRENGTH_PER_UNUSED_MOVE_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_PER_UNUSED_MOVE_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["PerUnusedMoveMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONGER_ADJACENT_TO_FRIENDLY_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ADJACENT_FRIENDLY_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AdjacentFriendlyMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONGER_PER_ADJACENT_FRIENDLY_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_PER_ADJACENT_FRIENDLY_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["PerAdjacentFriendlyMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONGER_IN_MIASMA_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_WHILE_IN_MIASMA_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackWhileInMiasmaMod"].InnerText);
									strHelp += " " + GetString("TXT_KEY_AND") + " ";
									strHelp += GetString("TXT_KEY_UNITPERK_DEFEND_WHILE_IN_MIASMA_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["DefendWhileInMiasmaMod"].InnerText);
								}
								if (objPerk["IgnoreTerrainCost"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_IGNORE_TERRAIN_COST", false);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_EXTRA_MOVE_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_MOVES_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["MovesChange"].InnerText);
								}
								if (objPerk["AlwaysHeal"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ALWAYS_HEAL", false);
								}
								if (objPerk["AdjacentUnitHealChange"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ADJACENT_UNIT_HEAL_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["AdjacentUnitHealChange"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONGER_FLANKING_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_FLANKING_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["FlankingMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_DEFEND_RANGED_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_DEFEND_RANGED_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["DefendRangedMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_HEAL_FROM_KILLS_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_KILL_UNIT_HEAL_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["KillUnitHealChange"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_ATTACK_FORTIFIED_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_FORTIFIED_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackFortifiedMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONGER_INSIDE_CITY_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_CITY_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["CityMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_ATTACK_CITY_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_CITY_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackCityMod"].InnerText);
								}
								if (objPerk["MoveAfterAttacking"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_MOVE_AFTER_ATTACKING", false);
								}
								if (objPerk["IgnoreRangedAttackLineOfSight"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_IGNORE_RANGED_ATTACK_LINE_OF_SIGHT", false);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_EXTRA_RANGE_AT_FULL_MOVES_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_RANGE_AT_FULL_MOVES_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["RangeAtFullMovesChange"].InnerText);
								}
								if (objPerk["Type"].InnerText == "UNITPERK_BETTER_PILLAGING")
								{
									strHelp += GetString("TXT_KEY_UNITPERK_BETTER_PILLAGING_HELP", false);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_ATTACK_WOUNDED_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_WOUNDED_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackWoundedMod"].InnerText);
								}
								if (objPerk["IgnoreZoneofControl"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_IGNORE_ZONE_OF_CONTROL", false);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONG_AGAINST_LAND_UNITS_") || objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONG_AGAINST_NAVAL_UNITS_") || objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONG_AGAINST_AIR_UNITS"))
								{
									XmlNode objDomainNode = objPerkDocument.SelectSingleNode("/GameData/UnitPerks_DomainCombatMods/Row[UnitPerkType=\"" + objPerk["Type"].InnerText + "\"]");
									switch (objDomainNode["DomainType"].InnerText)
									{
										case "DOMAIN_LAND":
											strHelp += GetString("TXT_KEY_UNITPERK_DOMAIN_COMBAT_MOD_LAND", false);
											break;
										case "DOMAIN_SEA":
											strHelp += GetString("TXT_KEY_UNITPERK_DOMAIN_COMBAT_MOD_SEA", false);
											break;
										case "DOMAIN_AIR":
											strHelp += GetString("TXT_KEY_UNITPERK_DOMAIN_COMBAT_MOD_AIR", false);
											break;
									}
									strHelp = strHelp.Replace("{1_Percent}", objDomainNode["CombatMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_RANGED_ATTACK_SCATTER_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_RANGED_ATTACK_SCATTER_CHANCE_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["RangedAttackScatterChanceMod"].InnerText);
								}
								if (objPerk["RangedAttackSetupsNeededMod"] != null)
								{
									string strThisHelp = string.Empty;
									strThisHelp += GetString("TXT_KEY_UNITPERK_RANGED_ATTACK_SETUPS_NEEDED_MOD", false).Replace("{1_Num}", objPerk["RangedAttackSetupsNeededMod"].InnerText);

									if (strThisHelp.Contains("{1_Num:"))
									{
										int intStart = strThisHelp.IndexOf("{");
										int intEnd = strThisHelp.IndexOf("}") + 1;
										string strReplace = strThisHelp.Substring(intStart, intEnd - intStart);

										int intSingleStart = strReplace.IndexOf("1?") + 2;
										int intSingleEnd = strReplace.IndexOf(";");
										string strSingle = strReplace.Substring(intSingleStart, intSingleEnd - intSingleStart);

										int intPluralStart = strReplace.IndexOf("other?") + 6;
										int intPluralEnd = strReplace.IndexOf(";", intPluralStart);
										string strPlural = strReplace.Substring(intPluralStart, intPluralEnd - intPluralStart);

										if (objPerk["RangedAttackSetupsNeededMod"].InnerText == "1")
											strThisHelp = strThisHelp.Replace(strReplace, strSingle);
										else
											strThisHelp = strThisHelp.Replace(strReplace, strPlural);
									}

									strHelp += strThisHelp;
								}
								if (objPerk["HealOutsideFriendlyTerritory"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_HEAL_OUTSIDE_FRIENDLY_TERRITORY", false);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_EXTRA_RANGE_1"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_RANGE_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["RangeChange"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_EXTRA_CARGO_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_CARGO_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["CargoChange"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_ATTACK_WITH_INTERCEPTION_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_WITH_INTERCEPTION_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackWithInterceptionMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONG_AGAINST_NON_AIR_UNITS_"))
								{
									strHelp += GetString("TXT_KEY_" + objPerk["Type"].InnerText + "_HELP");
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_EXTRA_RANGE_AT_FULL_HEALTH_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_RANGE_AT_FULL_HEALTH_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["RangeAtFullHealthChange"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_ATTACK_WITH_AIR_SWEEP_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_WITH_AIR_SWEEP_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackWithAirSweepMod"].InnerText);
								}
								if (objPerk["ExtraInterceptions"] != null)
								{
									string strThisHelp = string.Empty;
									strThisHelp += GetString("TXT_KEY_UNITPERK_EXTRA_INTERCEPTIONS", false).Replace("{1_Num}", objPerk["ExtraInterceptions"].InnerText);

									if (strThisHelp.Contains("{1_Num:"))
									{
										int intStart = strThisHelp.IndexOf("{");
										int intEnd = strThisHelp.IndexOf("}") + 1;
										string strReplace = strThisHelp.Substring(intStart, intEnd - intStart);

										int intSingleStart = strReplace.IndexOf("1?") + 2;
										int intSingleEnd = strReplace.IndexOf(";");
										string strSingle = strReplace.Substring(intSingleStart, intSingleEnd - intSingleStart);

										int intPluralStart = strReplace.IndexOf("other?") + 6;
										int intPluralEnd = strReplace.IndexOf(";", intPluralStart);
										string strPlural = strReplace.Substring(intPluralStart, intPluralEnd - intPluralStart);

										if (objPerk["ExtraInterceptions"].InnerText == "1")
											strThisHelp = strThisHelp.Replace(strReplace, strSingle);
										else
											strThisHelp = strThisHelp.Replace(strReplace, strPlural);
									}

									strHelp += strThisHelp;
								}
								if (objPerk["FreeRebases"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_FREE_REBASES", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["FreeRebases"].InnerText);
								}
								if (objPerk["SameTileHealChange"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_SAME_TILE_HEAL_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["SameTileHealChange"].InnerText);
								}
								if (objPerk["Type"].InnerText == "UNITPERK_STRONGER_FOR_ONBOARD")
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ATTACK_FOR_ONBOARD_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["AttackForOnboardMod"].InnerText);
									strHelp += " " + GetString("TXT_KEY_AND") + " ";
									strHelp += GetString("TXT_KEY_UNITPERK_DEFEND_FOR_ONBOARD_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["DefendForOnboardMod"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_EXTRA_RANGE_FOR_ONBOARD_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_RANGE_FOR_ONBOARD_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["RangeForOnboardChange"].InnerText);
								}
								if (objPerk["OrbitalCoverageRadiusChange"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ORBITAL_COVERAGE_RADIUS_CHANGE", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["OrbitalCoverageRadiusChange"].InnerText);
								}
								if (objPerk["AllowManualDeorbit"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_ALLOW_MANUAL_DEORBIT", false);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_SPLASH_DAMAGE_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_DAMAGE_TO_ADJACENT_UNITS_ON_ATTACK", false);
									strHelp = strHelp.Replace("{1_Num}", objPerk["DamageToAdjacentUnitsOnAttack"].InnerText);
								}
								if (objPerk["Type"].InnerText.StartsWith("UNITPERK_STRONG_IN_FRIENDLY_TERRITORY_"))
								{
									strHelp += GetString("TXT_KEY_UNITPERK_FRIENDLY_LANDS_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["FriendlyLandsMod"].InnerText);
								}
								if (objPerk["FortifiedMod"] != null)
								{
									strHelp += GetString("TXT_KEY_UNITPERK_FORTIFIED_MOD", false);
									strHelp = strHelp.Replace("{1_Percent}", objPerk["FortifiedMod"].InnerText);
								}

								strHelp += "</li>";
							}
						}
					}

					strHelp = ParseString(strHelp);

					string strMyHelp = strHelp;
					strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
					strHelp += "<div class=\"infobox\">";
					strHelp += strMyHelp;
					strHelp += "</div>";

					// Determine Prerequisite Promotions.
					string strPrereq = "";

					string strThisImage = "";
					strThisImage = objTechnology["IconAtlas"].InnerText + objTechnology["PortraitIndex"].InnerText;
					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", strHelp);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##PREREQ##", strPrereq);
					strOutput = strOutput.Replace("##IMAGE##", objTechnology["UnitType"].InnerText);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;
					objItem.Image = objTechnology["UnitType"].InnerText;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					Group objGroup = new Group();
					bool blnFound = false;
					foreach (Group objCurrentGroup in lstGroups)
					{
						if (objCurrentGroup.Key == objTechnology["UnitType"].InnerText)
						{
							blnFound = true;
							objGroup = objCurrentGroup;
							break;
						}
					}
					if (!blnFound)
					{
						string strName = "";
						foreach (String strUnitXmlFile in _lstUnits)
						{
							XmlDocument objUnitDocument = new XmlDocument();
							objUnitDocument.Load(strUnitXmlFile);

							XmlNode objUnit = objUnitDocument.SelectSingleNode("/GameData/Units/Row[Type=\"" + objTechnology["UnitType"].InnerText + "\"]");
							if (objUnit != null)
								strName = GetString(objUnit["Description"].InnerText);
						}

						objGroup.Key = objTechnology["UnitType"].InnerText;
						objGroup.Name = strName;
						lstGroups.Add(objGroup);
					}

					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_PROMOTIONS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"PROMOTION_HOME.aspx\"><div id=\"PROMOTION_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Image + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Promotions.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Buildings pages.
		/// </summary>
		private void GenerateBuildings()
		{
			XmlDocument objBuildingDocument = MergeXml(_lstBuildings);
			XmlDocument objBuildingClassesDocument = MergeXml(_lstBuildingClasses);

			txtDebug.Text += "\r\nGenerating Buildings...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = CreateEraGroups(true);
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_BUILDINGS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_BUILDINGS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_BUILDINGS_HELP_TEXT");
			const string strHomeImage = "BUILDING_BARRACKS";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Buildings";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "BUILDING_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_BUILDINGS.aspx"));
			XmlDocument objDocument = objBuildingDocument;

			foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Buildings/Row"))
			{
				string strBuildingClass = "";
				XmlDocument objClassDoc = objBuildingClassesDocument;
				XmlNode objClass = objClassDoc.SelectSingleNode("/GameData/BuildingClasses/Row[Type = \"" + objTechnology["BuildingClass"].InnerText + "\"]");
				// Determine the Building type (Building, National Wonder, or World Wonder) based on the existance of MaxPlayerInstances or MaxGlobalInstances.
				if (objClass != null)
				{
					if (objClass["MaxPlayerInstances"] != null)
						strBuildingClass = "NATIONAL_WONDER";
					else if (objClass["MaxGlobalInstances"] != null)
						strBuildingClass = "WORLD_WONDER";
					else
						strBuildingClass = "BUILDING";

					// Fix for the Recycling Center, Writers' Guild, Artists' Guild, and Musicians' Guild which all have a MaxPlayerInstances value but are actually buildings.
					if (objTechnology["Type"].InnerText == "BUILDING_RECYCLING_CENTER" || objTechnology["Type"].InnerText == "BUILDING_WRITERS_GUILD" || objTechnology["Type"].InnerText == "BUILDING_ARTISTS_GUILD" || objTechnology["Type"].InnerText == "BUILDING_MUSICIANS_GUILD")
						strBuildingClass = "BUILDING";
				}

				// Only write out Buildings.
				if (strBuildingClass == "BUILDING")
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
					string strHelp = "";
					try
					{
						if (objTechnology["Help"] != null)
							strHelp = GetString(objTechnology["Help"].InnerText);

						// Building Resource Yield Changes.
						if (objBuildingDocument.SelectNodes("/GameData/Building_ResourceYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
						{
							foreach (XmlNode objResource in objBuildingDocument.SelectNodes("/GameData/Building_ResourceYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								string strYieldIcon = string.Empty;
								string strYieldName = string.Empty;
								string strSourceIcon = string.Empty;
								string strSourceName = string.Empty;

								strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
								strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

								strSourceIcon = "[" + objResource["ResourceType"].InnerText.Replace("RESOURCE_", "ICON_") + "]";
								strSourceName = GetString("TXT_KEY_" + objResource["ResourceType"].InnerText);

								string strMyYield = GetString("TXT_KEY_YIELD_FROM_SPECIFIC_ICON_OBJECT", false);
								strMyYield = strMyYield.Replace("{1_Num}", objResource["Yield"].InnerText);
								strMyYield = strMyYield.Replace("{2_IconString}", strYieldIcon);
								strMyYield = strMyYield.Replace("{3_YieldDesc}", strYieldName);
								strMyYield = strMyYield.Replace("{4_ObjectIcon}", strSourceIcon);
								strMyYield = strMyYield.Replace("{5_ObjectDesc}", strSourceName);

								if (strHelp != string.Empty)
									strHelp += "<br />";
								strHelp += ParseString(strMyYield);
							}
						}

						// Building Feature Yield Changes.
						if (objBuildingClassesDocument.SelectNodes("/GameData/Building_FeatureYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
						{
							foreach (XmlNode objResource in objBuildingDocument.SelectNodes("/GameData/Building_FeatureYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								string strYieldIcon = string.Empty;
								string strYieldName = string.Empty;
								string strSourceName = string.Empty;

								strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
								strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

								strSourceName = GetString("TXT_KEY_" + objResource["FeatureType"].InnerText);

								string strMyYield = GetString("TXT_KEY_SHORT_YIELD_FROM_SPECIFIC_OBJECT", false);
								strMyYield = strMyYield.Replace("{1_Num}", "+" + objResource["Yield"].InnerText);
								strMyYield = strMyYield.Replace("{2_IconString}", strYieldIcon + " " + strYieldName);
								strMyYield = strMyYield.Replace("{3_ObjectName}", strSourceName);

								if (strHelp != string.Empty)
									strHelp += "<br />";
								strHelp += ParseString(strMyYield);
							}
						}

						// Building Terrain Yield Changes.
						if (objBuildingClassesDocument.SelectNodes("/GameData/Building_TerrainYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
						{
							foreach (XmlNode objResource in objBuildingDocument.SelectNodes("/GameData/Building_TerrainYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								string strYieldIcon = string.Empty;
								string strYieldName = string.Empty;
								string strSourceName = string.Empty;

								strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
								strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

								strSourceName = GetString("TXT_KEY_" + objResource["TerrainType"].InnerText);

								string strMyYield = GetString("TXT_KEY_SHORT_YIELD_FROM_SPECIFIC_OBJECT", false);
								strMyYield = strMyYield.Replace("{1_Num}", "+" + objResource["Yield"].InnerText);
								strMyYield = strMyYield.Replace("{2_IconString}", strYieldIcon + " " + strYieldName);
								strMyYield = strMyYield.Replace("{3_ObjectName}", strSourceName);

								if (strHelp != string.Empty)
									strHelp += "<br />";
								strHelp += ParseString(strMyYield);
							}
						}

						// Building Trade Yield Changes.
						if (objBuildingDocument.SelectNodes("/GameData/Building_TradeYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
						{
							foreach (XmlNode objResource in objBuildingDocument.SelectNodes("/GameData/Building_TradeYieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								string strMyYield = GetString("TXT_KEY_YIELD_FROM_TRADE", false);
								strMyYield = strMyYield.Replace("{1_Num}", "+" + objResource["Yield"].InnerText);
								strMyYield = strMyYield.Replace("{2_IconString}", GetString("TXT_KEY_BUILD_" + objResource["YieldType"].InnerText.Replace("YIELD_", string.Empty) + "_STRING"));
								strHelp += ParseString(strMyYield);
							}
						}

						// Building Resource Health Changes.
						if (objBuildingDocument.SelectNodes("/GameData/Building_ResourceHealthChange/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
						{
							foreach (XmlNode objResource in objBuildingDocument.SelectNodes("/GameData/Building_ResourceHealthChange/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								string strYieldIcon = string.Empty;
								string strYieldName = string.Empty;
								string strSourceIcon = string.Empty;
								string strSourceName = string.Empty;

								strYieldIcon = "[ICON_HEALTH]";
								strYieldName = GetString("TXT_KEY_GAME_CONCEPT_SECTION_11");

								strSourceIcon = "[" + objResource["ResourceType"].InnerText.Replace("RESOURCE_", "ICON_") + "]";
								strSourceName = GetString("TXT_KEY_" + objResource["ResourceType"].InnerText);

								string strMyYield = GetString("TXT_KEY_YIELD_FROM_SPECIFIC_ICON_OBJECT", false);
								strMyYield = strMyYield.Replace("{1_Num}", objResource["Quantity"].InnerText);
								strMyYield = strMyYield.Replace("{2_IconString}", strYieldIcon);
								strMyYield = strMyYield.Replace("{3_YieldDesc}", strYieldName);
								strMyYield = strMyYield.Replace("{4_ObjectIcon}", strSourceIcon);
								strMyYield = strMyYield.Replace("{5_ObjectDesc}", strSourceName);

								if (strHelp != string.Empty)
									strHelp += "<br />";
								strHelp += ParseString(strMyYield);
							}
						}

						// Building Domain Production Changes.
						if (objBuildingDocument.SelectNodes("/GameData/Building_DomainProductionModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
						{
							foreach (XmlNode objResource in objBuildingDocument.SelectNodes("/GameData/Building_DomainProductionModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								string strSourceName = string.Empty;
								strSourceName = GetString("TXT_KEY_" + objResource["DomainType"].InnerText);

								string strMyYield = GetString("TXT_KEY_DOMAIN_PRODUCTION_MOD", false);
								strMyYield = strMyYield.Replace("{1_Num}", objResource["Modifier"].InnerText);
								strMyYield = strMyYield.Replace("{2_DomainDesc}", strSourceName);

								if (strHelp != string.Empty)
									strHelp += "<br />";
								strHelp += ParseString(strMyYield);
							}
						}

						// Surveillance Web has a special string but cannot find a way this is handled, so doing it manually for now.
						if (objTechnology["Type"].InnerText == "BUILDING_SURVEILLANCE_WEB")
						{
							string strMyHelp = GetString("TXT_KEY_BUILDING_CITY_INTRIGUE_CAP", false).Replace("{1_Num}", "2");
							strHelp += strMyHelp;
						}

						// Orbital Production changes.
						if (objTechnology["OrbitalProductionModifier"] != null)
						{
							string strMyHelp = GetString("TXT_KEY_DOMAIN_PRODUCTION_MOD", false);
							strMyHelp = strMyHelp.Replace("{1_Num}", objTechnology["OrbitalProductionModifier"].InnerText);
							strMyHelp = strMyHelp.Replace("{2_DomainDesc}", GetString("TXT_KEY_ORBITAL_UNIT_HEADING2_TITLE"));
							strHelp += ParseString(strMyHelp);
						}

						// Orbital Coverage changes.
						if (objTechnology["OrbitalCoverageChange"] != null)
						{
							string strMyHelp = GetString("TXT_KEY_BUILDING_ORBITAL_COVERAGE", false);
							strMyHelp = strMyHelp.Replace("{1_Num}", objTechnology["OrbitalCoverageChange"].InnerText);
							if (strHelp != string.Empty)
								strHelp += "<br />";
							strHelp += ParseString(strMyHelp);
						}

						if (strHelp != "")
						{
							string strMyHelp = strHelp;
							strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
							strHelp += "<div class=\"infobox\">";
							strHelp += strMyHelp;
							strHelp += "</div>";
						}
					}
					catch
					{
					}
					// If Help and Strategy are the same, discard Help.
					if (objTechnology["Help"] != null && objTechnology["Strategy"] != null)
					{
						if (objTechnology["Help"].InnerText == objTechnology["Strategy"].InnerText)
							strHelp = "";
					}
					string strDesc = "";
					try
					{
						strDesc = GetString(objTechnology["Civilopedia"].InnerText);
						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";
					}
					catch
					{
					}
					string strStrategy = "";
					try
					{
						strStrategy = GetString(objTechnology["Strategy"].InnerText);
						string strMyStrategy = strStrategy;
						strStrategy = "<h2>" + TXT_KEY_PEDIA_STRATEGY_LABEL + "</h2>";
						strStrategy += "<div class=\"infobox\">";
						strStrategy += strMyStrategy;
						strStrategy += "</div>";
					}
					catch
					{
					}

					string strCost = "";
					if (objTechnology["Cost"] != null)
					{
						if (objTechnology["Cost"].InnerText != "-1")
							strCost = objTechnology["Cost"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" />";
					}
					if (objTechnology["FaithCost"] != null)
					{
						if (strCost != string.Empty)
							strCost += " / ";
						strCost += objTechnology["FaithCost"].InnerText + " <img src=\"/civilopediabe/images/peace.png\" alt=\"faith\" />";
					}
					if (strCost != string.Empty)
					{
						string strMyCost = strCost;
						strCost = "<h2>" + TXT_KEY_PEDIA_COST_LABEL + "</h2>";
						strCost += "<div class=\"infobox\">";
						strCost += strMyCost;
						strCost += "</div>";
					}

					string strMaintenance = "";
					if (objTechnology["EnergyMaintenance"] != null)
					{
						if (objTechnology["EnergyMaintenance"].InnerText != "0")
						{
							strMaintenance += "<h2>" + TXT_KEY_PEDIA_MAINT_LABEL + "</h2>";
							strMaintenance += "<div class=\"infobox\">";
							strMaintenance += "-" + objTechnology["EnergyMaintenance"].InnerText + " <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
							strMaintenance += "</div>";
						}
					}

					string strHealth = "";
					if (objTechnology["Health"] != null)
					{
						if (objTechnology["Health"].InnerText != "0")
							strHealth += "+" + objTechnology["Health"].InnerText + " <img src=\"/civilopediabe/images/health.png\" alt=\"health\" />";
					}
					if (objTechnology["HealthModifier"] != null)
					{
						if (strHealth != string.Empty)
							strHealth += ", ";
						strHealth += "+" + objTechnology["HealthModifier"].InnerText + "% <img src=\"/civilopediabe/images/health.png\" alt=\"health\" />";
					}

					if (strHealth != string.Empty)
					{
						string strMyHealth = strHealth;
						strHealth = "<h2>" + TXT_KEY_PEDIA_HEALTH_LABEL + "</h2>";
						strHealth += "<div class=\"infobox\">";
						strHealth += strMyHealth;
						strHealth += "</div>";
					}

					// Look for Prereq Tech.
					string strPrereq = "";
					if (objTechnology["PrereqTech"] != null)
					{
						foreach (string strTechXmlFile in _lstTechnologies)
						{
							XmlDocument objTechDocument = new XmlDocument();
							objTechDocument.Load(strTechXmlFile);
							foreach (XmlNode objPrereq in objTechDocument.SelectNodes("/GameData/Technologies/Row[Type = \"" + objTechnology["PrereqTech"].InnerText + "\"]"))
							{
								if (strPrereq == "")
								{
									strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
									strPrereq += "<div class=\"infobox\">";
								}
								string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["Type"].InnerText);
								strPrereq += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
							}
						}
						if (strPrereq != "")
							strPrereq += "</div>";
					}

					// Look for Civilization.
					List<string> lstSeenCivs = new List<string>();
					string strCivilization = "";
					string strReplaces = "";
					foreach (string strCivXmlFile in _lstCivilizations)
					{
						XmlDocument objCivDocument = new XmlDocument();
						objCivDocument.Load(strCivXmlFile);
						foreach (XmlNode objPrereq in objCivDocument.SelectNodes("/GameData/Civilization_BuildingClassOverrides/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							// Make sure we have not already seen this Civ for the Building.
							bool blnContinue = true;
							foreach (string strSeenCiv in lstSeenCivs)
							{
								if (strSeenCiv == objPrereq["CivilizationType"].InnerText)
								{
									blnContinue = false;
									break;
								}
							}

							if (blnContinue)
							{
								lstSeenCivs.Add(objPrereq["CivilizationType"].InnerText);
								strCivilization += "<h2>" + TXT_KEY_PEDIA_CIVILIZATIONS_LABEL + "</h2>";
								strCivilization += "<div class=\"infobox\">";
								string strMyTitle = FindDescription(_lstCivilizations, "Civilizations", objPrereq["CivilizationType"].InnerText);
								strCivilization += "<a href=\"" + objPrereq["CivilizationType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["CivilizationType"].InnerText + ".png\" /></a>";

								// Locate the replaced building.
								foreach (string strBuildingXmlFile in _lstBuildingClasses)
								{
									XmlDocument objBuildingDoc = new XmlDocument();
									objBuildingDoc.Load(strBuildingXmlFile);
									XmlNode objReplace = objBuildingDoc.SelectSingleNode("/GameData/BuildingClasses/Row[Type = \"" + objPrereq["BuildingClassType"].InnerText + "\"]");
									if (objReplace != null)
									{
										strReplaces += "<h2>" + TXT_KEY_PEDIA_REPLACES_LABEL + "</h2>";
										strReplaces += "<div class=\"infobox\">";
										string strMyBuildingTitle = FindDescription(_lstBuildings, "Buildings", objReplace["DefaultBuilding"].InnerText);
										strReplaces += "<a href=\"" + objReplace["DefaultBuilding"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyBuildingTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objReplace["DefaultBuilding"].InnerText + ".png\" /></a>";
									}
								}
							}
						}
					}
					if (strCivilization != "")
						strCivilization += "</div>";
					if (strReplaces != "")
						strReplaces += "</div>";

					// Look for Required Buildings.
					string strRequired = "";
					XmlNode objRequired = objDocument.SelectSingleNode("/GameData/Building_ClassesNeededInCity/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objRequired != null)
					{
						strRequired += "<h2>" + TXT_KEY_PEDIA_REQ_BLDG_LABEL + "</h2>";
						strRequired += "<div class=\"infobox\">";
						foreach (string strBuildingXmlFile in _lstBuildings)
						{
							XmlDocument objBuildingDoc = new XmlDocument();
							objBuildingDoc.Load(strBuildingXmlFile);
							foreach (XmlNode objBuilding in objBuildingDoc.SelectNodes("/GameData/Buildings/Row[BuildingClass = \"" + objRequired["BuildingClassType"].InnerText + "\"]"))
							{
								string strMyTitle = FindDescription(_lstBuildings, "Buildings", objBuilding["Type"].InnerText);
								strRequired += "<a href=\"" + objBuilding["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objBuilding["Type"].InnerText + ".png\" /></a>";
							}
						}
					}
					if (strRequired != "")
						strRequired += "</div>";

					// Look for Required Resources.
					string strResources = "";
					XmlNode objResources = objDocument.SelectSingleNode("/GameData/Building_ResourceQuantityRequirements/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objResources != null)
					{
						strResources += "<h2>" + TXT_KEY_PEDIA_REQ_RESRC_LABEL + "</h2>";
						strResources += "<div class=\"infobox\">";
						string strMyTitle = FindDescription(_lstResources, "Resources", objResources["ResourceType"].InnerText);
						strResources += "<a href=\"" + objResources["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objResources["ResourceType"].InnerText + ".png\" /></a>";
					}
					if (strResources != "")
						strResources += "</div>";

					// Look for Required Local Resources.
					string strLocal = "";
					XmlNode objLocal = objDocument.SelectSingleNode("/GameData/Building_LocalResourceAnds/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objLocal != null)
					{
						strLocal += "<h2>" + TXT_KEY_PEDIA_LOCAL_RESRC_LABEL + "</h2>";
						strLocal += "<div class=\"infobox\">";
						string strMyTitle = FindDescription(_lstResources, "Resources", objLocal["ResourceType"].InnerText);
						strLocal += "<a href=\"" + objLocal["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objLocal["ResourceType"].InnerText + ".png\" /></a>";
					}
					if (strLocal != "")
						strLocal += "</div>";

					// Look for Defense.
					string strDefense = "";
					if (objTechnology["Defense"] != null)
					{
						double dblDefense = Convert.ToDouble(objTechnology["Defense"].InnerText);
						dblDefense /= 100;
						strDefense = dblDefense.ToString() + " <img src=\"/civilopediabe/images/strength.png\" alt=\"strength\" />";
					}
					if (objTechnology["ExtraCityHitPoints"] != null)
					{
						if (strDefense != string.Empty)
							strDefense += ", ";
						strDefense += GetString("TXT_KEY_PEDIA_DEFENSE_HITPOINTS", false).Replace("{1_Num}", objTechnology["ExtraCityHitPoints"].InnerText);
					}
					if (strDefense != "")
					{
						string strMyDefense = strDefense;
						strDefense = "<h2>" + TXT_KEY_PEDIA_DEFENSE_LABEL + "</h2>";
						strDefense += "<div class=\"infobox\">";
						strDefense += strMyDefense;
						strDefense += "</div>";
					}

					// Look for Happiness.
					string strHappiness = "";
					if (objTechnology["Happiness"] != null)
					{
						strHappiness += "<h2>" + TXT_KEY_PEDIA_HAPPINESS_LABEL + "</h2>";
						strHappiness += "<div class=\"infobox\">";
						strHappiness += objTechnology["Happiness"].InnerText + " <img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />";
					}
					if (strHappiness != "")
						strHappiness += "</div>";

					// Look for Culture.
					string strCulture = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_CULTURE\"]"))
					{
						strCulture += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_CULTURE\"]"))
					{
						strCulture += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" /> ";
					}
					if (strCulture != "")
					{
						string strMyCulture = strCulture;
						strCulture = "<h2>" + TXT_KEY_PEDIA_CULTURE_LABEL + "</h2>";
						strCulture += "<div class=\"infobox\">";
						strCulture += strMyCulture;
						strCulture += "</div>";
					}

					// Look for Faith.
					string strFaith = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FAITH\"]"))
					{
						strFaith += objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/peace.png\" alt=\"faith\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FAITH\"]"))
					{
						strFaith += objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/peace.png\" alt=\"faith\" /> ";
					}
					if (strFaith != "")
					{
						string strMyFaith = strFaith;
						strFaith = "<h2>" + TXT_KEY_PEDIA_FAITH_LABEL + "</h2>";
						strFaith += "<div class=\"infobox\">";
						strFaith += strMyFaith;
						strFaith += "</div>";
					}

					// Look for Energy.
					string strEnergy = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
					{
						strEnergy += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
					{
						strEnergy += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" /> ";
					}
					if (strEnergy != "")
					{
						string strMyEnergy = strEnergy;
						strEnergy = "<h2>" + TXT_KEY_PEDIA_ENERGY_LABEL + "</h2>";
						strEnergy += "<div class=\"infobox\">";
						strEnergy += strMyEnergy;
						strEnergy += "</div>";
					}

					// Look for Production.
					string strProduction = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
					{
						if (strProduction != string.Empty)
							strProduction += ", ";
						strProduction += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
					{
						if (strProduction != string.Empty)
							strProduction += ", ";
						strProduction += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/production.png\" alt=\"production\" /> ";
					}
					if (strProduction != "")
					{
						string strMyProduction = strProduction;
						strProduction = "<h2>" + TXT_KEY_PEDIA_PRODUCTION_LABEL + "</h2>";
						strProduction += "<div class=\"infobox\">";
						strProduction += strMyProduction;
						strProduction += "</div>";
					}

					// Look for Food.
					string strFood = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
					{
						strFood += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
					{
						strFood += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					}
					if (strFood != "")
					{
						string strMyFood = strFood;
						strFood = "<h2>" + TXT_KEY_PEDIA_FOOD_LABEL + "</h2>";
						strFood += "<div class=\"infobox\">";
						strFood += strMyFood;
						strFood += "</div>";
					}

					// Look for Science.
					string strScience = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
					{
						if (strScience != string.Empty)
							strScience += ", ";
						strScience += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/research.png\" alt=\"research\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
					{
						if (strScience != string.Empty)
							strScience += ", ";
						strScience += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/research.png\" alt=\"research\" /> ";
					}
					if (strScience != "")
					{
						string strMyScience = strScience;
						strScience = "<h2>" + TXT_KEY_PEDIA_SCIENCE_LABEL + "</h2>";
						strScience += "<div class=\"infobox\">";
						strScience += strMyScience;
						strScience += "</div>";
					}

					// Look for Specialists.
					string strSpecialists = "";
					if (objTechnology["SpecialistType"] != null)
					{
						strSpecialists += "<h2>" + TXT_KEY_PEDIA_SPEC_LABEL + "</h2>";
						strSpecialists += "<div class=\"infobox\">";
						for (int i = 1; i <= Convert.ToInt32(objTechnology["SpecialistCount"].InnerText); i++)
						{
							string strMyTitle = FindDescription(_lstSpecialists, "Specialists", objTechnology["SpecialistType"].InnerText);
							strSpecialists += "<a href=\"CONCEPT_BUILDINGS_SPECIALISTS.aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTechnology["SpecialistType"].InnerText + ".png\" /></a>";
						}
					}
					if (strSpecialists != "")
						strSpecialists += "</div>";

					// Look for Great People Rate Change.
					string strGreatPeople = "";
					if (objTechnology["SpecialistType"] != null)
					{
						if (objTechnology["GreatPeopleRateChange"] != null)
						{
							strGreatPeople += "<h2>" + GetString("TXT_KEY_" + objTechnology["SpecialistType"].InnerText + "_TITLE") + "</h2>";
							strGreatPeople += "<div class=\"infobox\">";
							strGreatPeople += objTechnology["GreatPeopleRateChange"].InnerText + " <img src=\"/civilopediabe/images/great_people.png\" alt=\"great people\" />";
						}
					}
					if (strGreatPeople != "")
						strGreatPeople += "</div>";

					// Look for Great Works.
					string strGreatWorks = "";
					if (objTechnology["GreatWorkSlotType"] != null)
					{
						if (objTechnology["GreatWorkCount"] != null)
						{
							strGreatWorks += "<h2>" + TXT_KEY_PEDIA_GREAT_WORKS_LABEL + "</h2>";
							strGreatWorks += "<div class=\"infobox\">";

							string strIcon = "";
							string strTooltip = "";

							switch (objTechnology["GreatWorkSlotType"].InnerText)
							{
								case "GREAT_WORK_SLOT_MUSIC":
									strIcon = "GREAT_WORK_SLOT_MUSIC.png";
									strTooltip = TXT_KEY_GREAT_WORK_SLOT_MUSIC_EMPTY_TOOLTIP;
									break;
								case "GREAT_WORK_SLOT_ART_ARTIFACT":
									strIcon = "GREAT_WORK_SLOT_ART_ARTIFACT.png";
									strTooltip = TXT_KEY_GREAT_WORK_SLOT_ART_ARTIFACT_EMPTY_TOOLTIP;
									break;
								case "GREAT_WORK_SLOT_LITERATURE":
								default:
									strIcon = "GREAT_WORK_SLOT_LITERATURE.png";
									strTooltip = TXT_KEY_GREAT_WORK_SLOT_LITERATURE_EMPTY_TOOLTIP;
									break;
							}

							for (int i = 0; i < Convert.ToInt32(objTechnology["GreatWorkCount"].InnerText); i++)
								strGreatWorks += "<img src=\"/civilopediabe/images/" + strIcon + "\" onmouseover=\"return tooltip('" + strTooltip + "');\" onmouseout=\"return hideTip();\" />";

							// If Great Works exist, the building should not have Specialists shown, so clear that string.
							strSpecialists = "";
						}
					}
					if (strGreatWorks != "")
						strGreatWorks += "</div>";

					// Look for Affinity Requirements.
					string strAffinity = "";
					XmlNode objAffinity = objDocument.SelectSingleNode("/GameData/Building_AffinityPrereqs/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objAffinity != null)
					{
						string strAffinityClass = ""; ;
						string strAffinityName = "";
						string strAffinityIcon = "";
						switch (objAffinity["AffinityType"].InnerText)
						{
							case "AFFINITY_TYPE_PURITY":
								strAffinityName = GetString("TXT_KEY_AFFINITY_TYPE_PURITY");
								strAffinityClass = "COLOR_PURITY_AFFINITY";
								strAffinityIcon = "[ICON_PURITY]";
								break;
							case "AFFINITY_TYPE_HARMONY":
								strAffinityName = GetString("TXT_KEY_AFFINITY_TYPE_HARMONY");
								strAffinityClass = "COLOR_HARMONY_AFFINITY";
								strAffinityIcon = "[ICON_HARMONY]";
								break;
							default:
								strAffinityName = GetString("TXT_KEY_AFFINITY_TYPE_SUPREMACY");
								strAffinityClass = "COLOR_SUPREMACY_AFFINITY";
								strAffinityIcon = "[ICON_SUPREMACY]";
								break;
						}

						strAffinity += "<h2>" + TXT_KEY_PEDIA_CATEGORY_15_LABEL + ":</h2>";
						strAffinity += "<div class=\"infobox\">";

						string strAffinityString = GetString("TXT_KEY_AFFINITY_LEVEL_REQUIRED", false);
						strAffinityString = strAffinityString.Replace("{1_AffinityColorType}", strAffinityClass);
						strAffinityString = strAffinityString.Replace("{2_Num}", objAffinity["Level"].InnerText);
						strAffinityString = strAffinityString.Replace("{@3_AffinityIcon}", strAffinityIcon);
						strAffinityString = strAffinityString.Replace("{@4_AffinityName}", strAffinityName);

						strAffinity += ParseString(strAffinityString);
					}
					if (strAffinity != "")
						strAffinity += "</div>";

					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", strHelp);
					strOutput = strOutput.Replace("##DESC##", strDesc);
					strOutput = strOutput.Replace("##STRATEGY##", strStrategy);
					strOutput = strOutput.Replace("##COST##", strCost);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##PREREQ##", strPrereq);
					strOutput = strOutput.Replace("##RESOURCES##", strResources);
					strOutput = strOutput.Replace("##LOCALRESOURCES##", strLocal);
					strOutput = strOutput.Replace("##MAINTENANCE##", strMaintenance);
					strOutput = strOutput.Replace("##CIVILIZATION##", strCivilization);
					strOutput = strOutput.Replace("##REPLACES##", strReplaces);
					strOutput = strOutput.Replace("##REQUIRED##", strRequired);
					strOutput = strOutput.Replace("##DEFENSE##", strDefense);
					strOutput = strOutput.Replace("##HAPPINESS##", strHappiness);
					strOutput = strOutput.Replace("##PRODUCTION##", strProduction);
					strOutput = strOutput.Replace("##FOOD##", strFood);
					strOutput = strOutput.Replace("##ENERGY##", strEnergy);
					strOutput = strOutput.Replace("##SCIENCE##", strScience);
					strOutput = strOutput.Replace("##CULTURE##", strCulture);
					strOutput = strOutput.Replace("##FAITH##", strFaith);
					strOutput = strOutput.Replace("##SPECIALISTS##", strSpecialists);
					strOutput = strOutput.Replace("##GREATWORKS##", strGreatWorks);
					strOutput = strOutput.Replace("##GREATPEOPLE##", strGreatPeople);
					strOutput = strOutput.Replace("##AFFINITY##", strAffinity);
					strOutput = strOutput.Replace("##HEALTH##", strHealth);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					// Create the Image.
					if (_strLanguage == "en_US")
					{
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
					}

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_BUILDINGS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"BUILDING_HOME.aspx\"><div id=\"BUILDING_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			objGroup.Sort();
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Buildings.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Wonders pages.
		/// </summary>
		private void GenerateWonders()
		{
			txtDebug.Text += "\r\nGenerating Wonders...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			Group objWonders = new Group();
			objWonders.Key = "WORLD_WONDER";
			objWonders.Name = GetString("TXT_KEY_WONDER_SECTION_1");
			lstGroups.Add(objWonders);

			Group objNational = new Group();
			objNational.Key = "NATIONAL_WONDER";
			objNational.Name = GetString("TXT_KEY_WONDER_SECTION_2");
			lstGroups.Add(objNational);

			Group objProjects = new Group();
			objProjects.Key = "PROJECT_WONDER";
			objProjects.Name = GetString("TXT_KEY_WONDER_SECTION_3");
			lstGroups.Add(objProjects);

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_WONDERS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_WONDERS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_WONDERS_HELP_TEXT");
			const string strHomeImage = "BUILDING_STONEHENGE";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Wonders";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "WONDER_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_WONDERS.aspx"));

			XmlDocument objDocument = MergeXml(_lstBuildings);

			foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Buildings/Row"))
			{
				string strBuildingClass = "";
				XmlDocument objClassDoc = MergeXml(_lstBuildingClasses);
				XmlNode objClass = objClassDoc.SelectSingleNode("/GameData/BuildingClasses/Row[Type = \"" + objTechnology["BuildingClass"].InnerText + "\"]");
				// Determine the Building type (Building, National Wonder, or World Wonder) based on the existance of MaxPlayerInstances or MaxGlobalInstances.
				if (objClass != null)
				{
					if (objClass["MaxPlayerInstances"] != null)
						strBuildingClass = "NATIONAL_WONDER";
					else if (objClass["MaxGlobalInstances"] != null)
						strBuildingClass = "WORLD_WONDER";
					else
						strBuildingClass = "BUILDING";

					// Fix for the Recycling Center, Writers' Guild, Artists' Guild, and Musicians' Guild which all have a MaxPlayerInstances value but are actually buildings.
					if (objTechnology["Type"].InnerText == "BUILDING_RECYCLING_CENTER" || objTechnology["Type"].InnerText == "BUILDING_WRITERS_GUILD" || objTechnology["Type"].InnerText == "BUILDING_ARTISTS_GUILD" || objTechnology["Type"].InnerText == "BUILDING_MUSICIANS_GUILD")
						strBuildingClass = "BUILDING";
				}

				// Look to see if the Wonder should be deleted (United Nations was removed in Brave New World expansion).
				if (objTechnology["Type"].InnerText == "BUILDING_UNITED_NATIONS")
					strBuildingClass = "BUILDING";

				// Do not write out Buildings, only National Wonders and World Wonders.
				if (strBuildingClass != "BUILDING")
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
					string strHelp = "";
					try
					{
						strHelp = GetString(objTechnology["Help"].InnerText);
						if (strHelp != "")
						{
							string strMyHelp = strHelp;
							strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
							strHelp += "<div class=\"infobox\">";
							strHelp += strMyHelp;
							strHelp += "</div>";
						}
					}
					catch
					{
					}
					string strDesc = "";
					try
					{
						strDesc = GetString(objTechnology["Civilopedia"].InnerText);
						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";
					}
					catch
					{
					}
					string strQuote = "";
					try
					{
						strQuote = GetString(objTechnology["Quote"].InnerText);
						if (strQuote != "")
						{
							string strMyQuote = strQuote;
							strQuote = "<h2>" + TXT_KEY_PEDIA_QUOTE_LABEL + "</h2>";
							strQuote += "<div class=\"infobox\">";
							strQuote += strMyQuote;
							strQuote += "</div>";
						}
					}
					catch
					{
					}

					string strStrategy = "";
					try
					{
						strStrategy = GetString(objTechnology["Strategy"].InnerText);
						if (strStrategy != "")
						{
							string strMyStrategy = strStrategy;
							strStrategy = "<h2>" + TXT_KEY_PEDIA_STRATEGY_LABEL + "</h2>";
							strStrategy += "<div class=\"infobox\">";
							strStrategy += strMyStrategy;
							strStrategy += "</div>";
						}
					}
					catch
					{
					}

					string strCost = "";
					if (objTechnology["Cost"] != null)
					{
						if (objTechnology["Cost"].InnerText == "-1")
							strCost = TXT_KEY_FREE;
						else if (objTechnology["Cost"].InnerText == "0")
							strCost = TXT_KEY_FREE;
						else
							strCost = objTechnology["Cost"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" />";
					}
					else
					{
						strCost = TXT_KEY_FREE;
					}
					if (strCost != "")
					{
						string strMyCost = strCost;
						strCost = "<h2>" + TXT_KEY_PEDIA_COST_LABEL + "</h2>";
						strCost += "<div class=\"infobox\">";
						strCost += strMyCost;
						strCost += "</div>";
					}

					// Determine Maintenance.
					string strMaintenance = "";
					if (objTechnology["GoldMaintenance"] != null)
					{
						strMaintenance += "<h2>" + TXT_KEY_PEDIA_MAINT_LABEL + "</h2>";
						strMaintenance += "<div class=\"infobox\">";
						strMaintenance += objTechnology["GoldMaintenance"].InnerText + " <img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" />";
						strMaintenance += "</div>";
					}

					// Look for Prereq Tech.
					string strPrereq = "";
					if (objTechnology["PrereqTech"] != null)
					{
						foreach (string strTechXmlFile in _lstTechnologies)
						{
							XmlDocument objTechDocument = new XmlDocument();
							objTechDocument.Load(strTechXmlFile);
							foreach (XmlNode objPrereq in objTechDocument.SelectNodes("/GameData/Technologies/Row[Type = \"" + objTechnology["PrereqTech"].InnerText + "\"]"))
							{
								if (strPrereq == "")
								{
									strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
									strPrereq += "<div class=\"infobox\">";
								}
								string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["Type"].InnerText);
								strPrereq += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
							}
						}
						if (strPrereq != "")
							strPrereq += "</div>";
					}

					// Look for Civilization.
					string strCivilization = "";
					string strReplaces = "";
					if (objTechnology["PrereqTech"] != null)
					{
						foreach (string strCivXmlFile in _lstCivilizations)
						{
							XmlDocument objCivDocument = new XmlDocument();
							objCivDocument.Load(strCivXmlFile);
							foreach (XmlNode objPrereq in objCivDocument.SelectNodes("/GameData/Civilization_BuildingClassOverrides/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								strCivilization += "<h2>" + TXT_KEY_PEDIA_CIVILIZATIONS_LABEL + "</h2>";
								strCivilization += "<div class=\"infobox\">";
								string strMyTitle = FindDescription(_lstCivilizations, "Civilizations", objPrereq["CivilizationType"].InnerText);
								strCivilization += "<a href=\"" + objPrereq["CivilizationType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["CivilizationType"].InnerText + ".png\" /></a>";

								// Locate the replaced building.
								foreach (string strBuildingXmlFile in _lstBuildingClasses)
								{
									XmlDocument objBuildingDoc = new XmlDocument();
									objBuildingDoc.Load(strBuildingXmlFile);
									XmlNode objReplace = objBuildingDoc.SelectSingleNode("/GameData/BuildingClasses/Row[Type = \"" + objPrereq["BuildingClassType"].InnerText + "\"]");
									if (objReplace != null)
									{
										strReplaces += "<h2>" + TXT_KEY_PEDIA_REPLACES_LABEL + "</h2>";
										strReplaces += "<div class=\"infobox\">";
										string strMyBuildingTitle = FindDescription(_lstBuildings, "Buildings", objReplace["DefaultBuilding"].InnerText);
										strReplaces += "<a href=\"" + objReplace["DefaultBuilding"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyBuildingTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objReplace["DefaultBuilding"].InnerText + ".png\" /></a>";
									}
								}
							}
						}
						if (strCivilization != "")
							strCivilization += "</div>";
						if (strReplaces != "")
							strReplaces += "</div>";
					}

					// Look for Required Buildings.
					string strRequired = "";
					XmlNode objRequired = objDocument.SelectSingleNode("/GameData/Building_ClassesNeededInCity/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objRequired != null)
					{
						strRequired += "<h2>" + TXT_KEY_PEDIA_REQ_BLDG_LABEL + "</h2>";
						strRequired += "<div class=\"infobox\">";
						foreach (string strBuildingXmlFile in _lstBuildings)
						{
							XmlDocument objBuildingDoc = new XmlDocument();
							objBuildingDoc.Load(strBuildingXmlFile);
							foreach (XmlNode objBuilding in objBuildingDoc.SelectNodes("/GameData/Buildings/Row[BuildingClass = \"" + objRequired["BuildingClassType"].InnerText + "\"]"))
							{
								string strMyTitle = FindDescription(_lstBuildings, "Buildings", objBuilding["Type"].InnerText);
								strRequired += "<a href=\"" + objBuilding["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objBuilding["Type"].InnerText + ".png\" /></a>";
							}
						}
					}
					if (strRequired != "")
						strRequired += "</div>";

					// Look for Required Buildings.
					string strResources = "";
					XmlNode objResources = objDocument.SelectSingleNode("/GameData/Building_ResourceQuantityRequirements/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objResources != null)
					{
						strResources += "<h2>" + TXT_KEY_PEDIA_REQ_RESRC_LABEL + "</h2>";
						strResources += "<div class=\"infobox\">";
						string strMyTitle = FindDescription(_lstResources, "Resources", objResources["ResourceType"].InnerText);
						strResources += "<a href=\"" + objResources["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objResources["ResourceType"].InnerText + ".png\" /></a>";
					}
					if (strResources != "")
						strResources += "</div>";

					// Look for Defense.
					string strDefense = "";
					if (objTechnology["Defense"] != null)
					{
						double dblDefense = Convert.ToDouble(objTechnology["Defense"].InnerText);
						dblDefense /= 100;
						strDefense = dblDefense.ToString() + " <img src=\"/civilopediabe/images/strength.png\" alt=\"strength\" />";
					}
					if (objTechnology["ExtraCityHitPoints"] != null)
					{
						if (strDefense != string.Empty)
							strDefense += ", ";
						strDefense += GetString("TXT_KEY_PEDIA_DEFENSE_HITPOINTS", false).Replace("{1_Num}", objTechnology["ExtraCityHitPoints"].InnerText);
					}
					if (strDefense != "")
					{
						string strMyDefense = strDefense;
						strDefense = "<h2>" + TXT_KEY_PEDIA_DEFENSE_LABEL + "</h2>";
						strDefense += "<div class=\"infobox\">";
						strDefense += strMyDefense;
						strDefense += "</div>";
					}

					// Look for Happiness.
					string strHappiness = "";
					if (objTechnology["Happiness"] != null)
					{
						strHappiness += "<h2>" + TXT_KEY_PEDIA_HAPPINESS_LABEL + "</h2>";
						strHappiness += "<div class=\"infobox\">";
						strHappiness += objTechnology["Happiness"].InnerText + " <img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />";
					}
					if (strHappiness != "")
						strHappiness += "</div>";

					// Look for Unmodified Happiness.
					if (objTechnology["UnmoddedHappiness"] != null)
					{
						strHappiness = "<h2>" + TXT_KEY_PEDIA_HAPPINESS_LABEL + "</h2>";
						strHappiness += "<div class=\"infobox\">";
						strHappiness += objTechnology["UnmoddedHappiness"].InnerText + " <img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />";
						strHappiness += "</div>";
					}

					// Look for Faith.
					string strFaith = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FAITH\"]"))
					{
						strFaith += objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/peace.png\" alt=\"faith\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FAITH\"]"))
					{
						strFaith += objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/peace.png\" alt=\"faith\" /> ";
					}
					if (strFaith != "")
					{
						string strMyFaith = strFaith;
						strFaith = "<h2>" + TXT_KEY_PEDIA_FAITH_LABEL + "</h2>";
						strFaith += "<div class=\"infobox\">";
						strFaith += strMyFaith;
						strFaith += "</div>";
					}

					// Look for Culture.
					string strCulture = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_CULTURE\"]"))
					{
						if (strCulture != "")
							strCulture += ", ";
						strCulture += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_CULTURE\"]"))
					{
						if (strCulture != "")
							strCulture += ", ";
						strCulture += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" /> ";
					}
					if (strCulture != "")
					{
						string strMyCulture = strCulture;
						strCulture = "<h2>" + TXT_KEY_PEDIA_CULTURE_LABEL + "</h2>";
						strCulture += "<div class=\"infobox\">";
						strCulture += strMyCulture;
						strCulture += "</div>";
					}

					// Look for Gold.
					string strGold = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_GOLD\"]"))
					{
						strGold += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_GOLD\"]"))
					{
						strGold += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" /> ";
					}
					if (strGold != "")
					{
						string strMyGold = strGold;
						strGold = "<h2>" + TXT_KEY_PEDIA_GOLD_LABEL + "</h2>";
						strGold += "<div class=\"infobox\">";
						strGold += strMyGold;
						strGold += "</div>";
					}

					// Look for Production.
					string strProduction = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
					{
						strProduction += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
					{
						strProduction += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/production.png\" alt=\"production\" /> ";
					}
					if (strProduction != "")
					{
						string strMyProduction = strProduction;
						strProduction = "<h2>" + TXT_KEY_PEDIA_PRODUCTION_LABEL + "</h2>";
						strProduction += "<div class=\"infobox\">";
						strProduction += strMyProduction;
						strProduction += "</div>";
					}

					// Look for Food.
					string strFood = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
					{
						strFood += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
					{
						strFood += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					}
					if (strFood != "")
					{
						string strMyFood = strFood;
						strFood = "<h2>" + TXT_KEY_PEDIA_FOOD_LABEL + "</h2>";
						strFood += "<div class=\"infobox\">";
						strFood += strMyFood;
						strFood += "</div>";
					}

					// Look for Health.
					string strHealth = "";
					if (objTechnology["Health"] != null)
					{
						strHealth += "+" + objTechnology["Health"].InnerText + " <img src=\"/civilopediabe/images/health.png\" alt=\"health\" />";
					}
					if (strHealth != "")
					{
						string strMyHealth = strHealth;
						strHealth = "<h2>" + TXT_KEY_PEDIA_HEALTH_LABEL + "</h2>";
						strHealth += "<div class=\"infobox\">";
						strHealth += strMyHealth;
						strHealth += "</div>";
					}

					// Look for Science.
					string strScience = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
					{
						strScience += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/research.png\" alt=\"research\" />";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
					{
						if (strScience != "")
							strScience += ", ";
						strScience += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/research.png\" alt=\"research\" />";
					}
					if (strScience != "")
					{
						string strMyScience = strScience;
						strScience = "<h2>" + TXT_KEY_PEDIA_SCIENCE_LABEL + "</h2>";
						strScience += "<div class=\"infobox\">";
						strScience += strMyScience;
						strScience += "</div>";
					}

					// Look for Energy.
					string strEnergy = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
					{
						strEnergy += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
					{
						if (strEnergy != "")
							strEnergy += ", ";
						strEnergy += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
					}
					if (strEnergy != "")
					{
						string strMyEnergy = strEnergy;
						strEnergy = "<h2>" + TXT_KEY_PEDIA_ENERGY_LABEL + "</h2>";
						strEnergy += "<div class=\"infobox\">";
						strEnergy += strMyEnergy;
						strEnergy += "</div>";
					}

					// Look for Specialists.
					string strGreatPeople = "";
					if (objTechnology["SpecialistType"] != null)
					{
						if (objTechnology["GreatPeopleRateChange"] != null)
						{
							strGreatPeople += "<h2>" + GetString("TXT_KEY_" + objTechnology["SpecialistType"].InnerText + "_TITLE") + "</h2>";
							strGreatPeople += "<div class=\"infobox\">";
							strGreatPeople += objTechnology["GreatPeopleRateChange"].InnerText + " <img src=\"/civilopediabe/images/great_people.png\" alt=\"great people\" />";
						}
					}
					if (strGreatPeople != "")
						strGreatPeople += "</div>";

					// Look for Great Works.
					string strGreatWorks = "";
					if (objTechnology["GreatWorkSlotType"] != null)
					{
						if (objTechnology["GreatWorkCount"] != null)
						{
							strGreatWorks += "<h2>" + TXT_KEY_PEDIA_GREAT_WORKS_LABEL + "</h2>";
							strGreatWorks += "<div class=\"infobox\">";

							string strIcon = "";
							string strTooltip = "";

							switch (objTechnology["GreatWorkSlotType"].InnerText)
							{
								case "GREAT_WORK_SLOT_MUSIC":
									strIcon = "GREAT_WORK_SLOT_MUSIC.png";
									strTooltip = TXT_KEY_GREAT_WORK_SLOT_MUSIC_EMPTY_TOOLTIP;
									break;
								case "GREAT_WORK_SLOT_ART_ARTIFACT":
									strIcon = "GREAT_WORK_SLOT_ART_ARTIFACT.png";
									strTooltip = TXT_KEY_GREAT_WORK_SLOT_ART_ARTIFACT_EMPTY_TOOLTIP;
									break;
								case "GREAT_WORK_SLOT_LITERATURE":
								default:
									strIcon = "GREAT_WORK_SLOT_LITERATURE.png";
									strTooltip = TXT_KEY_GREAT_WORK_SLOT_LITERATURE_EMPTY_TOOLTIP;
									break;
							}

							for (int i = 0; i < Convert.ToInt32(objTechnology["GreatWorkCount"].InnerText); i++)
								strGreatWorks += "<img src=\"/civilopediabe/images/" + strIcon + "\" onmouseover=\"return tooltip('" + strTooltip + "');\" onmouseout=\"return hideTip();\" />";
						}
					}
					if (strGreatWorks != "")
						strGreatWorks += "</div>";

					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", strHelp);
					strOutput = strOutput.Replace("##DESC##", strDesc);
					strOutput = strOutput.Replace("##QUOTE##", strQuote);
					strOutput = strOutput.Replace("##STRATEGY##", strStrategy);
					strOutput = strOutput.Replace("##COST##", strCost);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##PREREQ##", strPrereq);
					strOutput = strOutput.Replace("##RESOURCES##", strResources);
					strOutput = strOutput.Replace("##MAINTENANCE##", strMaintenance);
					strOutput = strOutput.Replace("##CIVILIZATION##", strCivilization);
					strOutput = strOutput.Replace("##REPLACES##", strReplaces);
					strOutput = strOutput.Replace("##REQUIRED##", strRequired);
					strOutput = strOutput.Replace("##DEFENSE##", strDefense);
					strOutput = strOutput.Replace("##HAPPINESS##", strHappiness);
					strOutput = strOutput.Replace("##PRODUCTION##", strProduction);
					strOutput = strOutput.Replace("##FOOD##", strFood);
					strOutput = strOutput.Replace("##GOLD##", strGold);
					strOutput = strOutput.Replace("##ENERGY##", strEnergy);
					strOutput = strOutput.Replace("##SCIENCE##", strScience);
					strOutput = strOutput.Replace("##CULTURE##", strCulture);
					strOutput = strOutput.Replace("##HEALTH##", strHealth);
					strOutput = strOutput.Replace("##FAITH##", strFaith);
					strOutput = strOutput.Replace("##GREATPEOPLE##", strGreatPeople);
					strOutput = strOutput.Replace("##GREATWORKS##", strGreatWorks);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					Group objGroup = new Group();
					foreach (Group objCurrentGroup in lstGroups)
					{
						if (objCurrentGroup.Key == strBuildingClass)
						{
							objGroup = objCurrentGroup;
							break;
						}
					}
					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					// Create the Image.
					if (_strLanguage == "en_US")
					{
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
					}

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Project Pages.
			objDocument = MergeXml(_lstProjects);

			foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Projects/Row"))
			{
				// Do not include the SS components.
				if (!objTechnology["Type"].InnerText.Contains("_SS_"))
				{
					const string strBuildingClass = "PROJECT_WONDER";

					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
					string strHelp = "";
					try
					{
						strHelp = GetString(objTechnology["Help"].InnerText);
						if (strHelp != "")
						{
							string strMyHelp = strHelp;
							strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
							strHelp += "<div class=\"infobox\">";
							strHelp += strMyHelp;
							strHelp += "</div>";
						}
					}
					catch
					{
					}
					string strDesc = "";
					try
					{
						strDesc = GetString(objTechnology["Civilopedia"].InnerText);
						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";
					}
					catch
					{
					}
					string strStrategy = "";
					try
					{
						strStrategy = GetString(objTechnology["Strategy"].InnerText);
						if (strStrategy != "")
						{
							string strMyStrategy = strStrategy;
							strStrategy = "<h2>" + TXT_KEY_PEDIA_QUOTE_LABEL + "</h2>";
							strStrategy += "<div class=\"infobox\">";
							strStrategy += strMyStrategy;
							strStrategy += "</div>";
						}
					}
					catch
					{
					}

					string strCost = "";
					if (objTechnology["Cost"] != null)
					{
						if (objTechnology["Cost"].InnerText == "-1")
							strCost = TXT_KEY_FREE;
						else if (objTechnology["Cost"].InnerText == "0")
							strCost = TXT_KEY_FREE;
						else
							strCost = objTechnology["Cost"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" />";
					}
					else
					{
						strCost = TXT_KEY_FREE;
					}
					if (strCost != "")
					{
						string strMyCost = strCost;
						strCost = "<h2>" + TXT_KEY_PEDIA_COST_LABEL + "</h2>";
						strCost += "<div class=\"infobox\">";
						strCost += strMyCost;
						strCost += "</div>";
					}

					// Determine Maintenance.
					string strMaintenance = "";
					if (objTechnology["GoldMaintenance"] != null)
					{
						strMaintenance += "<h2>" + TXT_KEY_PEDIA_MAINT_LABEL + "</h2>";
						strMaintenance += "<div class=\"infobox\">";
						strMaintenance += objTechnology["GoldMaintenance"].InnerText + " <img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" />";
						strMaintenance += "</div>";
					}

					// Look for Prereq Tech.
					string strPrereq = "";
					if (objTechnology["TechPrereq"] != null)
					{
						foreach (string strTechXmlFile in _lstTechnologies)
						{
							XmlDocument objTechDocument = new XmlDocument();
							objTechDocument.Load(strTechXmlFile);
							foreach (XmlNode objPrereq in objTechDocument.SelectNodes("/GameData/Technologies/Row[Type = \"" + objTechnology["TechPrereq"].InnerText + "\"]"))
							{
								if (strPrereq == "")
								{
									strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
									strPrereq += "<div class=\"infobox\">";
								}
								string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objPrereq["Type"].InnerText);
								strPrereq += "<a href=\"" + objPrereq["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["Type"].InnerText + ".png\" /></a>";
							}
						}
						if (strPrereq != "")
							strPrereq += "</div>";
					}

					// Look for Civilization.
					string strCivilization = "";
					string strReplaces = "";
					if (objTechnology["PrereqTech"] != null)
					{
						foreach (string strCivXmlFile in _lstCivilizations)
						{
							XmlDocument objCivDocument = new XmlDocument();
							objCivDocument.Load(strCivXmlFile);
							foreach (XmlNode objPrereq in objCivDocument.SelectNodes("/GameData/Civilization_BuildingClassOverrides/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								strCivilization += "<h2>" + TXT_KEY_PEDIA_CIVILIZATIONS_LABEL + "</h2>";
								strCivilization += "<div class=\"infobox\">";
								string strMyTitle = FindDescription(_lstCivilizations, "Civilizations", objPrereq["CivilizationType"].InnerText);
								strCivilization += "<a href=\"" + objPrereq["CivilizationType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["CivilizationType"].InnerText + ".png\" /></a>";

								// Locate the replaced building.
								foreach (string strBuildingXmlFile in _lstBuildingClasses)
								{
									XmlDocument objBuildingDoc = new XmlDocument();
									objBuildingDoc.Load(strBuildingXmlFile);
									XmlNode objReplace = objBuildingDoc.SelectSingleNode("/GameData/BuildingClasses/Row[Type = \"" + objPrereq["BuildingClassType"].InnerText + "\"]");
									if (objReplace != null)
									{
										strReplaces += "<h2>" + TXT_KEY_PEDIA_REPLACES_LABEL + "</h2>";
										strReplaces += "<div class=\"infobox\">";
										string strMyBuildingTitle = FindDescription(_lstBuildings, "Buildings", objReplace["DefaultBuilding"].InnerText);
										strReplaces += "<a href=\"" + objReplace["DefaultBuilding"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyBuildingTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objReplace["DefaultBuilding"].InnerText + ".png\" /></a>";
									}
								}
							}
						}
						if (strCivilization != "")
							strCivilization += "</div>";
						if (strReplaces != "")
							strReplaces += "</div>";
					}

					// Look for Required Buildings.
					string strRequired = "";
					XmlNode objRequired = objDocument.SelectSingleNode("/GameData/Building_ClassesNeededInCity/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objRequired != null)
					{
						strRequired += "<h2>" + TXT_KEY_PEDIA_REQ_BLDG_LABEL + "</h2>";
						strRequired += "<div class=\"infobox\">";
						foreach (string strBuildingXmlFile in _lstBuildings)
						{
							XmlDocument objBuildingDoc = new XmlDocument();
							objBuildingDoc.Load(strBuildingXmlFile);
							foreach (XmlNode objBuilding in objBuildingDoc.SelectNodes("/GameData/Buildings/Row[BuildingClass = \"" + objRequired["BuildingClassType"].InnerText + "\"]"))
							{
								string strMyTitle = FindDescription(_lstBuildings, "Buildings", objBuilding["Type"].InnerText);
								strRequired += "<a href=\"" + objBuilding["Type"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objBuilding["Type"].InnerText + ".png\" /></a>";
							}
						}
					}
					if (strRequired != "")
						strRequired += "</div>";

					// Look for Required Buildings.
					string strResources = "";
					XmlNode objResources = objDocument.SelectSingleNode("/GameData/Building_ResourceQuantityRequirements/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objResources != null)
					{
						strResources += "<h2>" + TXT_KEY_PEDIA_REQ_RESRC_LABEL + "</h2>";
						strResources += "<div class=\"infobox\">";
						string strMyTitle = FindDescription(_lstResources, "Resources", objResources["ResourceType"].InnerText);
						strResources += "<a href=\"" + objResources["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objResources["ResourceType"].InnerText + ".png\" /></a>";
					}
					if (strResources != "")
						strResources += "</div>";

					// Look for Defense.
					string strDefense = "";
					if (objTechnology["Defense"] != null)
					{
						double dblDefense = Convert.ToDouble(objTechnology["Defense"].InnerText);
						dblDefense /= 100;
						strDefense = dblDefense.ToString() + " <img src=\"/civilopediabe/images/strength.png\" alt=\"strength\" />";
					}
					if (objTechnology["ExtraCityHitPoints"] != null)
					{
						if (strDefense != string.Empty)
							strDefense += ", ";
						strDefense += GetString("TXT_KEY_PEDIA_DEFENSE_HITPOINTS", false).Replace("{1_Num}", objTechnology["ExtraCityHitPoints"].InnerText);
					}
					if (strDefense != "")
					{
						string strMyDefense = strDefense;
						strDefense = "<h2>" + TXT_KEY_PEDIA_DEFENSE_LABEL + "</h2>";
						strDefense += "<div class=\"infobox\">";
						strDefense += strMyDefense;
						strDefense += "</div>";
					}

					// Look for Happiness.
					string strHappiness = "";
					if (objTechnology["Happiness"] != null)
					{
						strHappiness += "<h2>" + TXT_KEY_PEDIA_HAPPINESS_LABEL + "</h2>";
						strHappiness += "<div class=\"infobox\">";
						strHappiness += objTechnology["Happiness"].InnerText + " <img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />";
					}
					if (strHappiness != "")
						strHappiness += "</div>";

					// Look for Culture.
					string strCulture = "";
					if (objTechnology["Culture"] != null)
					{
						strCulture += "<h2>" + TXT_KEY_PEDIA_CULTURE_LABEL + "</h2>";
						strCulture += "<div class=\"infobox\">";
						strCulture += "+" + objTechnology["Culture"].InnerText + " <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" />";
					}
					if (strCulture != "")
						strCulture += "</div>";

					// Look for Gold.
					string strGold = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_GOLD\"]"))
					{
						strGold += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_GOLD\"]"))
					{
						strGold += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/gold.png\" alt=\"gold\" /> ";
					}
					if (strGold != "")
					{
						string strMyGold = strGold;
						strGold = "<h2>" + TXT_KEY_PEDIA_GOLD_LABEL + "</h2>";
						strGold += "<div class=\"infobox\">";
						strGold += strMyGold;
						strGold += "</div>";
					}

					// Look for Production.
					string strProduction = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
					{
						strProduction += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/production.png\" alt=\"production\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
					{
						strProduction += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/production.png\" alt=\"production\" /> ";
					}
					if (strProduction != "")
					{
						string strMyProduction = strProduction;
						strProduction = "<h2>" + TXT_KEY_PEDIA_PRODUCTION_LABEL + "</h2>";
						strProduction += "<div class=\"infobox\">";
						strProduction += strMyProduction;
						strProduction += "</div>";
					}

					// Look for Food.
					string strFood = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
					{
						strFood += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
					{
						strFood += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					}
					if (strFood != "")
					{
						string strMyFood = strFood;
						strFood = "<h2>" + TXT_KEY_PEDIA_FOOD_LABEL + "</h2>";
						strFood += "<div class=\"infobox\">";
						strFood += strMyFood;
						strFood += "</div>";
					}

					// Look for Health.
					string strHealth = "";
					if (objTechnology["Health"] != null)
					{
						strHealth += "+" + objTechnology["Health"].InnerText + " <img src=\"/civilopediabe/images/health.png\" alt=\"health\" />";
					}
					if (strHealth != "")
					{
						string strMyHealth = strHealth;
						strHealth = "<h2>" + TXT_KEY_PEDIA_HEALTH_LABEL + "</h2>";
						strHealth += "<div class=\"infobox\">";
						strHealth += strMyHealth;
						strHealth += "</div>";
					}

					// Look for Energy.
					string strEnergy = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
					{
						strEnergy += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
					{
						if (strEnergy != "")
							strEnergy += ", ";
						strEnergy += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
					}
					if (strEnergy != "")
					{
						string strMyEnergy = strEnergy;
						strEnergy = "<h2>" + TXT_KEY_PEDIA_ENERGY_LABEL + "</h2>";
						strEnergy += "<div class=\"infobox\">";
						strEnergy += strMyEnergy;
						strEnergy += "</div>";
					}

					// Look for Science.
					string strScience = "";
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldChanges/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
					{
						strScience += "+" + objModifier["Yield"].InnerText + " <img src=\"/civilopediabe/images/research.png\" alt=\"research\" /> ";
					}
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Building_YieldModifiers/Row[BuildingType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
					{
						strScience += "+" + objModifier["Yield"].InnerText + "% <img src=\"/civilopediabe/images/research.png\" alt=\"research\" /> ";
					}
					if (strScience != "")
					{
						string strMyScience = strScience;
						strScience = "<h2>" + TXT_KEY_PEDIA_GOLD_LABEL + "</h2>";
						strScience += "<div class=\"infobox\">";
						strScience += strMyScience;
						strScience += "</div>";
					}

					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", strHelp);
					strOutput = strOutput.Replace("##DESC##", strDesc);
					strOutput = strOutput.Replace("##QUOTE##", string.Empty);
					strOutput = strOutput.Replace("##STRATEGY##", strStrategy);
					strOutput = strOutput.Replace("##COST##", strCost);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##PREREQ##", strPrereq);
					strOutput = strOutput.Replace("##RESOURCES##", strResources);
					strOutput = strOutput.Replace("##MAINTENANCE##", strMaintenance);
					strOutput = strOutput.Replace("##CIVILIZATION##", strCivilization);
					strOutput = strOutput.Replace("##REPLACES##", strReplaces);
					strOutput = strOutput.Replace("##REQUIRED##", strRequired);
					strOutput = strOutput.Replace("##DEFENSE##", strDefense);
					strOutput = strOutput.Replace("##HAPPINESS##", strHappiness);
					strOutput = strOutput.Replace("##PRODUCTION##", strProduction);
					strOutput = strOutput.Replace("##FOOD##", strFood);
					strOutput = strOutput.Replace("##GOLD##", strGold);
					strOutput = strOutput.Replace("##ENERGY##", strEnergy);
					strOutput = strOutput.Replace("##SCIENCE##", strScience);
					strOutput = strOutput.Replace("##CULTURE##", strCulture);
					strOutput = strOutput.Replace("##HEALTH##", strHealth);
					strOutput = strOutput.Replace("##FAITH##", string.Empty);
					strOutput = strOutput.Replace("##GREATPEOPLE##", string.Empty);
					strOutput = strOutput.Replace("##GREATWORKS##", string.Empty);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					Group objGroup = new Group();
					foreach (Group objCurrentGroup in lstGroups)
					{
						if (objCurrentGroup.Key == strBuildingClass)
						{
							objGroup = objCurrentGroup;
							break;
						}
					}
					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					// Create the Image.
					// Projects, for whatever reason, only have a maximum image size of 128 in the Atlases.
					if (_strLanguage == "en_US")
					{
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
					}

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_WONDERS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"WONDER_HOME.aspx\"><div id=\"BUILDING_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Wonders.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Policy pages.
		/// </summary>
		private void GenerateVirtues()
		{
			txtDebug.Text += "\r\nGenerating Virtues...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_POLICIES_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_POLICIES");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_SOCIAL_POL_HELP_TEXT");
			const string strHomeImage = "POLICY_GENERAL";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Policies";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "POLICY_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Policy Branches. This only creates the list of Groups.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_POLICIES.aspx"));
			foreach (string strXmlFile in _lstPolicyBranchTypes)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/PolicyBranchTypes/Row"))
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = "";
					try
					{
						strTitle = GetString(objTechnology["Description"].InnerText);
					}
					catch
					{
						strTitle = GetString(objTechnology["Description"].InnerText);
					}
					if (strTitle != "Unused")
					{
						// Create a GroupItem for this Policy.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;

						// If the Policy Branch already exists in the Group List, add this item to it, otherwise, create the new Group.
						if (objTechnology["Type"] != null)
						{
							bool blnFound = false;
							Group objGroup = new Group();
							foreach (Group objCurrentGroup in lstGroups)
							{
								if (objCurrentGroup.Key == objTechnology["Type"].InnerText)
								{
									objGroup = objCurrentGroup;
									blnFound = true;
									break;
								}
							}
							if (!blnFound)
							{
								objGroup.Key = objTechnology["Type"].InnerText;
								objGroup.Name = strTitle;
								lstGroups.Add(objGroup);
							}
						}
					}
				}
			}

			// Policy Pages.
			foreach (string strXmlFile in _lstPolicies)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Policies/Row"))
				{
					if (!objTechnology["Type"].InnerText.EndsWith("_FINISHER") && !objTechnology["Type"].InnerText.EndsWith("_KICKER_1") && !objTechnology["Type"].InnerText.EndsWith("_KICKER_2") && !objTechnology["Type"].InnerText.EndsWith("_KICKER_3"))
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = "";
						string strXmlTitle = "";
						try
						{
							strTitle = GetString(objTechnology["Description"].InnerText);
							strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						}
						catch
						{
						}

						// Do not write out Policies that have had their Title set to Unused.
						if (strTitle != "Unused")
						{
							string strHelp = "";
							try
							{
								if (objTechnology["TechAffinityXPModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_TECH_AFFINITY_XP_MODIFIER", false).Replace("{1_Num}", objTechnology["TechAffinityXPModifier"].InnerText);
								}
								if (objTechnology["ExpModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_EXP_MODIFIER", false).Replace("{1_Num}", objTechnology["ExpModifier"].InnerText);
								}
								if (objTechnology["StrategicResourceMod"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_STRATEGIC_RESOURCE_MOD", false).Replace("{1_Num}", objTechnology["StrategicResourceMod"].InnerText);
								}
								if (objTechnology["CombatModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_COMBAT_MODIFIER", false).Replace("{1_Num}", objTechnology["CombatModifier"].InnerText);
								}
								if (objTechnology["UnitGoldMaintenanceMod"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_UNIT_GOLD_MAINTENANCE_MOD", false).Replace("{1_NegativeNum}", objTechnology["UnitGoldMaintenanceMod"].InnerText);
								}
								if (objTechnology["UnitProductionModifierPerUpgrade"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_UNIT_PRODUCTION_MODIFIER_PER_UPGRADE", false).Replace("{1_Num}", objTechnology["UnitProductionModifierPerUpgrade"].InnerText);
								}
								if (objTechnology["OrbitalCoverageRadiusFromStationTrade"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_ORBITAL_COVERAGE_RADIUS_FROM_STATION_TRADE", false).Replace("{1_Num}", objTechnology["OrbitalCoverageRadiusFromStationTrade"].InnerText);
								}
								if (objTechnology["CaptureOutpostsForSelf"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_CAPTURE_OUTPOSTS_FOR_SELF");
								}
								if (objTechnology["NumFreeAffinityLevels"] != null)
								{
									string strThisHelp = string.Empty;
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strThisHelp += GetString("TXT_KEY_POLICY_EFFECT_NUM_FREE_AFFINITY_LEVELS", false).Replace("{1_Num}", objTechnology["NumFreeAffinityLevels"].InnerText);

									int intStart = strThisHelp.IndexOf("{");
									int intEnd = strThisHelp.IndexOf("}") + 1;
									string strReplace = strThisHelp.Substring(intStart, intEnd - intStart);

									int intSingleStart = strReplace.IndexOf("1?") + 2;
									int intSingleEnd = strReplace.IndexOf(";");
									string strSingle = strReplace.Substring(intSingleStart, intSingleEnd - intSingleStart);

									int intPluralStart = strReplace.IndexOf("other?") + 6;
									int intPluralEnd = strReplace.IndexOf(";", intPluralStart);
									string strPlural = strReplace.Substring(intPluralStart, intPluralEnd - intPluralStart);

									if (objTechnology["NumFreeAffinityLevels"].InnerText == "1")
										strThisHelp = strThisHelp.Replace(strReplace, strSingle);
									else
										strThisHelp = strThisHelp.Replace(strReplace, strPlural);
									
									strHelp += strThisHelp;
								}
								if (objTechnology["MilitaryProductionModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_MILITARY_PRODUCTION_MODIFIER", false).Replace("{1_Num}", objTechnology["MilitaryProductionModifier"].InnerText);
								}
								if (objTechnology["HealthPerMilitaryUnitTimes100"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_HEALTH_PER_MILITARY_UNIT_TIMES_100", false).Replace("{1_Num : number \"#.##\"}", "0." + objTechnology["HealthPerMilitaryUnitTimes100"].InnerText);
								}
								if (objTechnology["ResearchFromBarbarianKills"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_RESEARCH_FROM_BARBARIAN_KILLS", false).Replace("{1_Num}", objTechnology["ResearchFromBarbarianKills"].InnerText);
								}
								if (objTechnology["ResearchFromBarbarianCamps"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_RESEARCH_FROM_BARBARIAN_CAMPS", false).Replace("{1_Num}", objTechnology["ResearchFromBarbarianCamps"].InnerText);
								}
								if (objTechnology["CovertOpsIntrigueModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_COVERT_OPS_INTRIGUE_MODIFIER", false).Replace("{1_Num}", objTechnology["CovertOpsIntrigueModifier"].InnerText);
								}
								if (objTechnology["BarbarianCombatBonus"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_BARBARIAN_COMBAT_BONUS", false).Replace("{1_Num}", objTechnology["BarbarianCombatBonus"].InnerText);
								}
								if (objTechnology["UnhealthMod"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_UNHEALTH_MOD", false).Replace("{1_Num}", objTechnology["UnhealthMod"].InnerText);
								}
								if (objTechnology["FoodKeptAfterGrowthPercent"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_FOOD_KEPT_AFTER_GROWTH_PERCENT", false).Replace("{1_Num}", objTechnology["FoodKeptAfterGrowthPercent"].InnerText);
								}
								if (objTechnology["LandTradeRouteGoldChange"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_LAND_TRADE_ROUTE_GOLD_CHANGE", false).Replace("{1_Num : number \"#.##\"}", (Convert.ToDecimal(objTechnology["LandTradeRouteGoldChange"].InnerText) / 100).ToString("#.##"));
								}
								if (objTechnology["SeaTradeRouteGoldChange"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_SEA_TRADE_ROUTE_GOLD_CHANGE", false).Replace("{1_Num : number \"#.##\"}", (Convert.ToDecimal(objTechnology["SeaTradeRouteGoldChange"].InnerText) / 100).ToString("#.##"));
								}
								if (objTechnology["FoodKeptAfterGrowthPercent"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_FOOD_KEPT_AFTER_GROWTH_PERCENT", false).Replace("{1_Num}", objTechnology["FoodKeptAfterGrowthPercent"].InnerText);
								}
								if (objTechnology["WorkerSpeedModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_WORKER_SPEED_MODIFIER", false).Replace("{1_Num}", objTechnology["WorkerSpeedModifier"].InnerText);
								}
								if (objTechnology["OutpostGrowthModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_OUTPOST_GROWTH_MODIFIER", false).Replace("{1_Num}", objTechnology["OutpostGrowthModifier"].InnerText);
								}
								if (objTechnology["HealthPerBasicResourceTypeTimes100"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_EXTRA_HEALTH_PER_LUXURY", false).Replace("{1_Num}", (Convert.ToDecimal(objTechnology["HealthPerBasicResourceTypeTimes100"].InnerText) / 100).ToString("#"));
								}
								if (objTechnology["ExtraHealth"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_EXTRA_HEALTH", false).Replace("{1_Num}", objTechnology["ExtraHealth"].InnerText);
								}
								if (objTechnology["ExplorerExpeditionCharges"] != null)
								{
									string strThisHelp = string.Empty;
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strThisHelp += GetString("TXT_KEY_POLICY_EFFECT_EXPLORER_EXPEDITION_CHARGES", false).Replace("{1_Num}", objTechnology["ExplorerExpeditionCharges"].InnerText);

									int intStart = strThisHelp.IndexOf("{");
									int intEnd = strThisHelp.IndexOf("}") + 1;
									string strReplace = strThisHelp.Substring(intStart, intEnd - intStart);

									int intSingleStart = strReplace.IndexOf("1?") + 2;
									int intSingleEnd = strReplace.IndexOf(";");
									string strSingle = strReplace.Substring(intSingleStart, intSingleEnd - intSingleStart);

									int intPluralStart = strReplace.IndexOf("other?") + 6;
									int intPluralEnd = strReplace.IndexOf(";", intPluralStart);
									string strPlural = strReplace.Substring(intPluralStart, intPluralEnd - intPluralStart);

									if (objTechnology["ExplorerExpeditionCharges"].InnerText == "1")
										strThisHelp = strThisHelp.Replace(strReplace, strSingle);
									else
										strThisHelp = strThisHelp.Replace(strReplace, strPlural);

									strHelp += strThisHelp;
								}
								if (objTechnology["PlotCultureCostModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_PLOT_CULTURE_COST_MODIFIER", false).Replace("{1_NegativeNum}", objTechnology["PlotCultureCostModifier"].InnerText);
								}
								if (objTechnology["NewCityExtraPopulation"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_NEW_CITY_EXTRA_POPULATION", false).Replace("{1_Num}", objTechnology["NewCityExtraPopulation"].InnerText);
								}
								if (objTechnology["PercentCultureRateToEnergy"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_PERCENT_CULTURE_RATE_TO_ENERGY", false).Replace("{1_Num}", objTechnology["PercentCultureRateToEnergy"].InnerText);
								}
								if (objTechnology["PolicyCostModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_POLICY_COST_MODIFIER", false).Replace("{1_NegativeNum}", objTechnology["PolicyCostModifier"].InnerText);
								}
								if (objTechnology["HealthPerXPopulation"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_HEALTH_PER_X_POPULATION", false).Replace("{1_Num}", objTechnology["HealthPerXPopulation"].InnerText);
								}
								if (objTechnology["HealthToCulture"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_HEALTH_TO_CULTURE", false).Replace("{1_Num}", objTechnology["HealthToCulture"].InnerText);
								}
								if (objTechnology["ResearchFromExpeditions"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_RESEARCH_FROM_EXPEDITIONS", false).Replace("{1_Num}", objTechnology["ResearchFromExpeditions"].InnerText);
								}
								if (objTechnology["HealthToScience"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_HEALTH_TO_SCIENCE", false).Replace("{1_Num}", objTechnology["HealthToScience"].InnerText);
								}
								if (objTechnology["NumFreeCovertAgents"] != null)
								{
									string strThisHelp = string.Empty;
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strThisHelp += GetString("TXT_KEY_POLICY_EFFECT_NUM_FREE_COVERT_AGENTS", false).Replace("{1_Num}", objTechnology["NumFreeCovertAgents"].InnerText);

									int intStart = strThisHelp.IndexOf("{");
									int intEnd = strThisHelp.IndexOf("}") + 1;
									string strReplace = strThisHelp.Substring(intStart, intEnd - intStart);

									int intSingleStart = strReplace.IndexOf("1?") + 2;
									int intSingleEnd = strReplace.IndexOf(";");
									string strSingle = strReplace.Substring(intSingleStart, intSingleEnd - intSingleStart);

									int intPluralStart = strReplace.IndexOf("other?") + 6;
									int intPluralEnd = strReplace.IndexOf(";", intPluralStart);
									string strPlural = strReplace.Substring(intPluralStart, intPluralEnd - intPluralStart);

									if (objTechnology["NumFreeCovertAgents"].InnerText == "1")
										strThisHelp = strThisHelp.Replace(strReplace, strSingle);
									else
										strThisHelp = strThisHelp.Replace(strReplace, strPlural);

									strHelp += strThisHelp;
								}
								if (objTechnology["NumCitiesPolicyCostDiscount"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_NUM_CITIES_POLICY_COST_DISCOUNT", false).Replace("{1_NegativeNum}", objTechnology["NumCitiesPolicyCostDiscount"].InnerText);
								}
								if (objTechnology["LeafTechResearchModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_LEAF_TECH_RESEARCH_MODIFIER", false).Replace("{1_Num}", objTechnology["LeafTechResearchModifier"].InnerText);
								}
								if (objTechnology["CulturePerWonder"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_CULTURE_PER_WONDER", false).Replace("{1_Num}", objTechnology["CulturePerWonder"].InnerText);
								}
								if (objTechnology["NumCitiesResearchCostDiscount"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_NUM_CITIES_RESEARCH_COST_DISCOUNT", false).Replace("{1_NegativeNum}", objTechnology["NumCitiesResearchCostDiscount"].InnerText);
								}
								if (objTechnology["PercentCultureRateToResearch"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_PERCENT_CULTURE_RATE_TO_RESEARCH", false).Replace("{1_Num}", objTechnology["PercentCultureRateToResearch"].InnerText);
								}
								if (objTechnology["OrbitalProductionModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_ORBITAL_PRODUCTION_MODIFIER", false).Replace("{1_Num}", objTechnology["OrbitalProductionModifier"].InnerText);
								}
								if (objTechnology["InternalTradeRouteYieldModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_INTERNAL_TRADE_ROUTE_YIELD_MODIFIER", false).Replace("{1_Num}", objTechnology["InternalTradeRouteYieldModifier"].InnerText);
								}
								if (objTechnology["EnergyInterestPercentPerTurn"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_ENERGY_INTEREST_PERCENT_PER_TURN", false).Replace("{1_Num}", objTechnology["EnergyInterestPercentPerTurn"].InnerText).Replace("{2_Maximum}", "100");
								}
								if (objTechnology["BuildingProductionModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_BUILDING_PRODUCTION_MODIFIER", false).Replace("{1_Num}", objTechnology["BuildingProductionModifier"].InnerText);
								}
								if (objTechnology["UnitPurchaseCostModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_UNIT_PURCHASE_COST_MODIFIER", false).Replace("{1_NegativeNum}", objTechnology["UnitPurchaseCostModifier"].InnerText);
								}
								if (objTechnology["HealthPerBuildingTimes100"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_HEALTH_PER_BUILDING_TIMES_100", false).Replace("{1_Num : number \"#.##\"}", (Convert.ToDecimal(objTechnology["HealthPerBuildingTimes100"].InnerText) / 100).ToString("0.##"));
								}
								if (objTechnology["HealthPerTradeRouteTimes100"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_HEALTH_PER_TRADE_ROUTE_TIMES_100", false).Replace("{1_Num : number \"#.##\"}", (Convert.ToDecimal(objTechnology["HealthPerTradeRouteTimes100"].InnerText) / 100).ToString("0.##"));
								}
								if (objTechnology["WonderProductionModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_WONDER_PRODUCTION_MODIFIER", false).Replace("{1_Num}", objTechnology["WonderProductionModifier"].InnerText);
								}
								if (objTechnology["BuildingAlreadyInCapitalModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_BUILDING_ALREADY_IN_CAPITAL_MODIFIER", false).Replace("{1_Num}", objTechnology["BuildingAlreadyInCapitalModifier"].InnerText);
								}
								if (objTechnology["OrbitalDurationModifier"] != null)
								{
									if (strHelp != string.Empty)
										strHelp += "<br />";
									strHelp += GetString("TXT_KEY_POLICY_EFFECT_ORBITAL_DURATION_MODIFIER", false).Replace("{1_Num}", objTechnology["OrbitalDurationModifier"].InnerText);
								}

								// Policy Resource Yield Changes.
								if (objDocument.SelectNodes("/GameData/Policy_ResourceClassYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_ResourceClassYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldIcon = string.Empty;
										string strYieldName = string.Empty;
										string strSourceIcon = string.Empty;
										string strSourceName = string.Empty;

										strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
										strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

										strSourceName = GetString("TXT_KEY_" + objResource["ResourceClassType"].InnerText);

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_RESOURCE_CLASS_YIELD_CHANGE", false);
										strMyYield = strMyYield.Replace("{1_Num}", objResource["YieldChange"].InnerText);
										strMyYield = strMyYield.Replace("{2_YieldIconString}", strYieldIcon);
										strMyYield = strMyYield.Replace("{@3_YieldName}", strYieldName);
										strMyYield = strMyYield.Replace("{@4_ResourceClassName}", strSourceName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								// Policy Improvement Yield Changes.
								if (objDocument.SelectNodes("/GameData/Policy_ImprovementYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_ImprovementYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldIcon = string.Empty;
										string strYieldName = string.Empty;
										string strSourceIcon = string.Empty;
										string strSourceName = string.Empty;

										strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
										strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

										strSourceName = GetString("TXT_KEY_" + objResource["ImprovementType"].InnerText);

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_IMPROVEMENT_YIELD_CHANGE", false);
										strMyYield = strMyYield.Replace("{1_Num}", objResource["Yield"].InnerText);
										strMyYield = strMyYield.Replace("{2_YieldIconString}", strYieldIcon);
										strMyYield = strMyYield.Replace("{@3_YieldName}", strYieldName);
										strMyYield = strMyYield.Replace("{@4_ImprovementName}", strSourceName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								// Gain a free unit.
								if (objDocument.SelectNodes("/GameData/Policy_FreeUnitClasses/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_FreeUnitClasses/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldName = string.Empty;

										foreach (String strUnitFile in _lstUnits)
										{
											XmlDocument objUnitDocument = new XmlDocument();
											objUnitDocument.Load(strUnitFile);

											foreach (XmlNode objUnit in objUnitDocument.SelectNodes("/GameData/Units/Row[Class=\"" + objResource["UnitClassType"].InnerText + "\"]"))
											{
												strYieldName = GetString(objUnit["Description"].InnerText);
											}
										}

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_FREE_UNIT_CLASS", false);
										strMyYield = strMyYield.Replace("{@1_UnitName}", strYieldName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								// Policy Specialist Extra Yields.
								if (objDocument.SelectNodes("/GameData/Policy_SpecialistExtraYields/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_SpecialistExtraYields/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldIcon = string.Empty;
										string strYieldName = string.Empty;
										string strSourceIcon = string.Empty;

										strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
										strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_SPECIALIST_EXTRA_YIELD", false);
										strMyYield = strMyYield.Replace("{1_Num}", objResource["Yield"].InnerText);
										strMyYield = strMyYield.Replace("{2_YieldIconString}", strYieldIcon);
										strMyYield = strMyYield.Replace("{@3_YieldName}", strYieldName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								// Policy City Yield Per Pop Changes.
								if (objDocument.SelectNodes("/GameData/Policy_CityYieldPerPopChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_CityYieldPerPopChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldIcon = string.Empty;
										string strYieldName = string.Empty;
										string strSourceIcon = string.Empty;

										strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
										strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_CITY_YIELD_PER_POP_CHANGE", false);
										strMyYield = strMyYield.Replace("{1_Num : number \"#.##\"}", (Convert.ToDecimal(objResource["Yield"].InnerText) / 100).ToString("0.##"));
										strMyYield = strMyYield.Replace("{2_YieldIconString}", strYieldIcon);
										strMyYield = strMyYield.Replace("{@3_YieldName}", strYieldName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								// Policy Trade Route With Stations Per Tier Yield Changes.
								if (objDocument.SelectNodes("/GameData/Policy_TradeRouteWithStationPerTierYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_TradeRouteWithStationPerTierYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldIcon = string.Empty;
										string strYieldName = string.Empty;
										string strSourceIcon = string.Empty;

										strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
										strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_TRADE_ROUTE_WITH_STATION_PER_TIER_YIELD_CHANGE", false);
										strMyYield = strMyYield.Replace("{1_Num}", objResource["Yield"].InnerText);
										strMyYield = strMyYield.Replace("{2_YieldIconString}", strYieldIcon);
										strMyYield = strMyYield.Replace("{@3_YieldName}", strYieldName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								// Policy Capital Yield Changes.
								if (objDocument.SelectNodes("/GameData/Policy_CapitalYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
								{
									foreach (XmlNode objResource in objDocument.SelectNodes("/GameData/Policy_CapitalYieldChanges/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
									{
										string strYieldIcon = string.Empty;
										string strYieldName = string.Empty;
										string strSourceIcon = string.Empty;

										strYieldIcon = "[" + objResource["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
										strYieldName = GetString("TXT_KEY_" + objResource["YieldType"].InnerText);

										string strMyYield = GetString("TXT_KEY_POLICY_EFFECT_CAPITAL_YIELD_CHANGE", false);
										strMyYield = strMyYield.Replace("{1_Num}", objResource["Yield"].InnerText);
										strMyYield = strMyYield.Replace("{2_YieldIconString}", strYieldIcon);
										strMyYield = strMyYield.Replace("{@3_YieldName}", strYieldName);

										if (strHelp != string.Empty)
											strHelp += "<br />";
										strHelp += ParseString(strMyYield);
									}
								}

								strHelp = ParseString(strHelp);

								string strMyHelp = strHelp;
								strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
								strHelp += "<div class=\"infobox\">";
								strHelp += strMyHelp;
								strHelp += "</div>";
							}
							catch
							{
							}
							string strDesc = GetString(objTechnology["Civilopedia"].InnerText);
							string strMyDesc = strDesc;
							strDesc = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
							strDesc += "<div class=\"infobox\">";
							strDesc += strMyDesc;
							strDesc += "</div>";

							string strBranch = "";

							// Determine Branch.
							strBranch = "";
							if (objTechnology["PolicyBranchType"] != null)
							{
								strBranch += "<h2>" + TXT_KEY_PEDIA_POLICYBRANCH_LABEL + "</h2>";
								strBranch += "<div class=\"infobox\">";
								strBranch += GetString("TXT_KEY_" + objTechnology["PolicyBranchType"].InnerText);
								strBranch += "</div>";
							}

							string strTenet = "";

							// Determine Ideological Tenet Level.
							strTenet = "";
							if (objTechnology["Level"] != null)
							{
								strTenet += "<h2>" + TXT_KEY_PEDIA_TENET_LEVEL + ":</h2>";
								strTenet += "<div class=\"infobox\">";
								strTenet += GetString("TXT_KEY_POLICYSCREEN_L" + objTechnology["Level"].InnerText + "_TENET");
								strTenet += "</div>";
							}

							// Look for Prereq Policies.
							string strPrereq = "";
							foreach (XmlNode objPrereq in objDocument.SelectNodes("/GameData/Policy_PrereqPolicies/Row[PolicyType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								if (strPrereq == "")
								{
									strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_POLICY_LABEL + "</h2>";
									strPrereq += "<div class=\"infobox\">";
								}
								string strMyTitle = FindDescription(_lstPolicies, "Policies", objPrereq["PrereqPolicy"].InnerText);
								strPrereq += "<a href=\"" + objPrereq["PrereqPolicy"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objPrereq["PrereqPolicy"].InnerText + ".png\" /></a>";
							}
							if (strPrereq != "")
								strPrereq += "</div>";

							string strImage = "";
							if (objTechnology["PolicyBranchType"] != null)
								strImage = objTechnology["Type"].InnerText;
							else
								strImage = "POLICY_GENERAL";

							// Determine Era.
							string strEra = "";
							if (objTechnology["PolicyBranchType"] != null)
							{
								foreach (string strBranchFile in _lstPolicyBranchTypes)
								{
									XmlDocument objBranchDoc = new XmlDocument();
									objBranchDoc.Load(strBranchFile);

									XmlNode objEra = objBranchDoc.SelectSingleNode("/GameData/PolicyBranchTypes/Row[Type = \"" + objTechnology["PolicyBranchType"].InnerText + "\"]");
									if (objEra != null)
									{
										if (objEra["EraPrereq"] != null)
										{
											if (strEra == "")
											{
												strEra += "<h2>" + TXT_KEY_PEDIA_PREREQ_ERA_LABEL + "</h2>";
												strEra += "<div class=\"infobox\">";
											}
											strEra += GetEra(objEra["EraPrereq"].InnerText);
										}
									}
								}
							}
							if (strEra != "")
								strEra += "</div>";

							string strOutput = strTemplate;
							strOutput = strOutput.Replace("##TITLE##", strTitle);
							strOutput = strOutput.Replace("##IMAGE##", strImage);
							strOutput = strOutput.Replace("##HELP##", strHelp);
							strOutput = strOutput.Replace("##DESC##", strDesc);
							strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
							strOutput = strOutput.Replace("##PREREQ##", strPrereq);
							strOutput = strOutput.Replace("##BRANCH##", strBranch);
							strOutput = strOutput.Replace("##TENET##", strTenet);
							strOutput = strOutput.Replace("##ERA##", strEra);

							// Create a GroupItem for this Policy.
							GroupItem objItem = new GroupItem();
							objItem.Key = objTechnology["Type"].InnerText;
							objItem.Name = strTitle;

							// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
							string strBranchKey = "";
							if (objTechnology["PolicyBranchType"] != null)
							{
								strBranchKey = objTechnology["PolicyBranchType"].InnerText;
							}
							else
							{
								strBranchKey = objTechnology["Type"].InnerText.Replace("POLICY_", "POLICY_BRANCH_");
							}
							Group objGroup = new Group();
							foreach (Group objCurrentGroup in lstGroups)
							{
								if (objCurrentGroup.Key == strBranchKey)
								{
									objGroup = objCurrentGroup;
									break;
								}
							}
							objGroup.GroupItems.Add(objItem);

							_strXml += "\t\t<page>";
							_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
							_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
							_strXml += "\t\t</page>";

							// Create the Image.
							if (_strLanguage == "en_US")
							{
								CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
								CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
							}

							File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
						}
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_POLICIES_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"POLICY_HOME.aspx\"><div id=\"POLICY_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Policies.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Geart People pages.
		/// </summary>
		private void GenerateCovertOps()
		{
			txtDebug.Text += "\r\nGenerating Covert Ops...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_ESPIONAGE_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_ESPIONAGE");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_GAME_CONCEPT_HELP_TEXT");
			string strHomeOutput = strHomeTeplate;
			const string strHomeImage = "GAME_CONCEPTS";
			const string strMaster = "Covert";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "COVERT_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_COVERT.aspx"));
			// Flip the order of the files so that the base file comes first.
			_lstConcepts.Reverse();
			int intCategoryCount = 0;
			foreach (string strXmlFile in _lstConcepts)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Concepts/Row[Topic=\"TXT_KEY_TOPIC_COVERT\"]"))
				{
					if (objTechnology["Summary"].InnerText != "CONCEPT_SPECIALISTS_AND_GREAT_PEOPLE_GREAT_PEOPLE_GOLDEN_AGE")
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strDesc = "";

						switch (objTechnology["Summary"].InnerText)
						{
							case "CONCEPT_VICTORY_DIPLOMATIC_VOTING":
								strDesc = GetString("TXT_KEY_VICTORY_WHOVOTES_HEADING4_BODY_ALT");
								break;
							case "CONCEPT_VICTORY_MINOR_CIV_LIBERATION":
								strDesc = GetString("TXT_KEY_VICTORY_LIBERATION_HEADING4_BODY_ALT");
								break;
							default:
								strDesc = GetString(objTechnology["Summary"].InnerText);
								break;
						}

						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_SUMMARY_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##DESC##", strDesc);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;
						objGroup.GroupItems.Add(objItem);

						// If the Topic already exists in the Group List, add this item to it, otherwise, create the new Group.
						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_COVERT_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"COVERT_HOME.aspx\"><div id=\"COVERT_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Covert.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Sponsors/Leaders pages.
		/// </summary>
		private void GenerateSponsors()
		{
			txtDebug.Text += "\r\nGenerating Sponsors and Leaders...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_CIVILIZATIONS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_CIVS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_CIVS_HELP_TEXT");
			const string strHomeImage = "LEADER_ALEXANDER";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Civilizations";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "CIVILIZATION_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Civilization Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_CIVILIZATIONS.aspx"));
			foreach (string strXmlFile in _lstCivilizations)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Civilizations/Row"))
				{
					if (objTechnology["Type"].InnerText != "CIVILIZATION_MINOR" && objTechnology["Type"].InnerText != "CIVILIZATION_NEUTRAL_PROXY" && objTechnology["Type"].InnerText != "CIVILIZATION_ALIEN")
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["ShortDescription"].InnerText);
						string strXmlTitle = GetString(objTechnology["ShortDescription"].InnerText, false);

						string strDesc = "";
						// Get all of the Headings and Text.
						for (int i = 1; i <= 30; i++)
						{
							string strItemTitle = GetString(objTechnology["CivilopediaTag"].InnerText + "_HEADING_" + i.ToString());
							string strItemText = GetString(objTechnology["CivilopediaTag"].InnerText + "_TEXT_" + i.ToString());

							if (strItemTitle != "")
							{
								strDesc += "\n<h2>" + strItemTitle + "</h2>";
								strDesc += "<div class=\"infobox\">";
								strDesc += strItemText;
								strDesc += "</div>";
							}
							else
								break;
						}

						string strFactoidHeading = "\n<h2>" + GetString(objTechnology["CivilopediaTag"].InnerText + "_FACTOID_HEADING") + "</h2>";
						string strFactoidText = "<div class=\"infobox\">";
						strFactoidText += GetString(objTechnology["CivilopediaTag"].InnerText + "_FACTOID_TEXT");
						strFactoidText += "</div>";

						// Determine Leaders.
						string strLeaders = "";
						foreach (XmlNode objLeader in objDocument.SelectNodes("/GameData/Civilization_Leaders/Row[CivilizationType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							string strMyTitle = FindDescription(_lstLeaders, "Leaders", objLeader["LeaderheadType"].InnerText);
							strLeaders += "<a href=\"" + objLeader["LeaderheadType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objLeader["LeaderheadType"].InnerText + ".png\" /></a>";
						}
						if (strLeaders != "")
						{
							string strMyLeaders = strLeaders;
							strLeaders = "<h2>" + TXT_KEY_PEDIA_LEADERS_LABEL + "</h2>";
							strLeaders += "<div class=\"infobox\">";
							strLeaders += strMyLeaders;
							strLeaders += "</div>";
						}

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
						strOutput = strOutput.Replace("##DESC##", strDesc);
						strOutput = strOutput.Replace("##LEADERS##", strLeaders);
						strOutput = strOutput.Replace("##FACTOIDHEADING##", strFactoidHeading);
						strOutput = strOutput.Replace("##FACTOIDTEXT##", strFactoidText);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;

						// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
						bool blnFound = false;
						Group objGroup = new Group();
						foreach (Group objCurrentGroup in lstGroups)
						{
							if (objCurrentGroup.Key == "CIVILIZATIONS")
							{
								objGroup = objCurrentGroup;
								blnFound = true;
								break;
							}
						}
						if (!blnFound)
						{
							objGroup.Key = "CIVILIZATIONS";
							objGroup.Name = GetString("TXT_KEY_CIVILIZATIONS_SECTION_1");
							lstGroups.Add(objGroup);
						}
						objGroup.GroupItems.Add(objItem);

						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						// Create the Image.
						if (_strLanguage == "en_US")
						{
							CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
							CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
						}

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Leader Pages.
			strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_LEADERS.aspx"));
			foreach (string strXmlFile in _lstLeaders)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Leaders/Row"))
				{
					if (!objTechnology["Description"].InnerText.EndsWith("BARBARIAN") && !objTechnology["Description"].InnerText.EndsWith("_ALIEN"))
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strSubtitle = GetString(objTechnology["CivilopediaTag"].InnerText + "_SUBTITLE");

						string strTitles = "";
						// Get all of the Titles.
						for (int i = 1; i <= 10; i++)
						{
							string strItemText = GetString(objTechnology["CivilopediaTag"].InnerText + "_TITLES_" + i.ToString());

							if (strItemText != "")
							{
								strTitles += strItemText + "<br /><br />";
							}
							else
								break;
						}
						// Remove the two trailing <br /> tags.
						if (strTitles != "")
						{
							strTitles = strTitles.Substring(0, strTitles.Length - 12);
							string strMyTitles = strTitles;
							strTitles = "<h2>" + TXT_KEY_PEDIA_TITLES_LABEL + "</h2>";
							strTitles += "<div class=\"infobox\">";
							strTitles += strMyTitles;
							strTitles += "</div>";
						}

						string strDesc = "";
						// Get all of the Headings and Text.
						for (int i = 1; i <= 30; i++)
						{
							string strItemTitle = GetString(objTechnology["CivilopediaTag"].InnerText + "_HEADING_" + i.ToString());
							string strItemText = GetString(objTechnology["CivilopediaTag"].InnerText + "_TEXT_" + i.ToString());

							if (strItemTitle != "")
							{
								strDesc += "\n<h2>" + strItemTitle + "</h2>";
								strDesc += "<div class=\"infobox\">";
								strDesc += strItemText;
								strDesc += "</div>";
							}
							else
								break;
						}

						string strCivilization = "";
						// Determine Civilization.
						foreach (string strCivilizationFile in _lstCivilizations)
						{
							XmlDocument objCivilizationDoc = new XmlDocument();
							objCivilizationDoc.Load(strCivilizationFile);
							XmlNode objCivilization = objCivilizationDoc.SelectSingleNode("/GameData/Civilization_Leaders/Row[LeaderheadType = \"" + objTechnology["Type"].InnerText + "\"]");
							if (objCivilization != null)
							{
								string strMyTitle = FindDescription(_lstCivilizations, "Civilizations", objCivilization["CivilizationType"].InnerText);
								strCivilization += "<a href=\"" + objCivilization["CivilizationType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objCivilization["CivilizationType"].InnerText + ".png\" /></a>";
								string strMyCivilization = strCivilization;
								strCivilization = "<h2>" + TXT_KEY_PEDIA_CIVILIZATIONS_LABEL + "</h2>";
								strCivilization += "<div class=\"infobox\">";
								strCivilization += strMyCivilization;
								strCivilization += "</div>";
								break;
							}
						}

						string strTrait = "";
						// Determine Trait.
						XmlNode objLeaderTrait = objDocument.SelectSingleNode("/GameData/Leader_Traits/Row[LeaderType = \"" + objTechnology["Type"].InnerText + "\"]");
                        string strTraitName = string.Empty;
                        if (objLeaderTrait != null)
                            strTraitName = objLeaderTrait["TraitType"].InnerText;

						foreach (string strTraitFile in _lstTraits)
						{
							XmlDocument objTraitDoc = new XmlDocument();
							objTraitDoc.Load(strTraitFile);
							XmlNode objTrait = objTraitDoc.SelectSingleNode("/GameData/Traits/Row[Type = \"" + strTraitName + "\"]");
							if (objTrait != null)
							{
								string strTraitTitle = GetString(objTrait["ShortDescription"].InnerText);
								string strTraitText = GetString(objTrait["Description"].InnerText);

								strTrait = strTraitTitle + "<br /><br />" + strTraitText;
								string strMyTrait = strTrait;
								strTrait = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
								strTrait += "<div class=\"infobox\">";
								strTrait += strMyTrait;
								strTrait += "</div>";
								break;
							}
						}

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##SUBTITLE##", strSubtitle);
						strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
						strOutput = strOutput.Replace("##TRAIT##", strTrait);
						strOutput = strOutput.Replace("##DESC##", strDesc);
						strOutput = strOutput.Replace("##TITLES##", strTitles);
						strOutput = strOutput.Replace("##CIVILIZATION##", strCivilization);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;

						// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
						bool blnFound = false;
						Group objGroup = new Group();
						foreach (Group objCurrentGroup in lstGroups)
						{
							if (objCurrentGroup.Key == "LEADERS")
							{
								objGroup = objCurrentGroup;
								blnFound = true;
								break;
							}
						}
						if (!blnFound)
						{
							objGroup.Key = "LEADERS";
							objGroup.Name = GetString("TXT_KEY_CIVILIZATIONS_SECTION_2");
							lstGroups.Add(objGroup);
						}
						objGroup.GroupItems.Add(objItem);

						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						// Create the Image.
						if (_strLanguage == "en_US")
						{
							CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
							CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
						}

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_CIVILIZATIONS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"CIVILIZATION_HOME.aspx\"><div id=\"CIVILIZATION_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Civilizations.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Quest pages.
		/// </summary>
		private void GenerateQuests()
		{
			txtDebug.Text += "\r\nGenerating Quests...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_QUESTS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_QUESTS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_GAME_CONCEPT_HELP_TEXT");
			string strHomeOutput = strHomeTeplate;
			const string strHomeImage = "GAME_CONCEPTS";
			const string strMaster = "Quests";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "QUEST_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_QUEST.aspx"));
			// Flip the order of the files so that the base file comes first.
			_lstConcepts.Reverse();
			int intCategoryCount = 0;
			foreach (string strXmlFile in _lstConcepts)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Concepts/Row[Topic=\"TXT_KEY_TOPIC_QUESTS\"]"))
				{
					if (objTechnology["Summary"].InnerText != "CONCEPT_SPECIALISTS_AND_GREAT_PEOPLE_GREAT_PEOPLE_GOLDEN_AGE")
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strDesc = "";

						switch (objTechnology["Summary"].InnerText)
						{
							case "CONCEPT_VICTORY_DIPLOMATIC_VOTING":
								strDesc = GetString("TXT_KEY_VICTORY_WHOVOTES_HEADING4_BODY_ALT");
								break;
							case "CONCEPT_VICTORY_MINOR_CIV_LIBERATION":
								strDesc = GetString("TXT_KEY_VICTORY_LIBERATION_HEADING4_BODY_ALT");
								break;
							default:
								strDesc = GetString(objTechnology["Summary"].InnerText);
								break;
						}

						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_SUMMARY_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##DESC##", strDesc);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;
						objGroup.GroupItems.Add(objItem);

						// If the Topic already exists in the Group List, add this item to it, otherwise, create the new Group.
						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_QUEST_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"QUEST_HOME.aspx\"><div id=\"QUEST_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Quests.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Terrains and Features pages.
		/// </summary>
		private void GenerateTerrains()
		{
			txtDebug.Text += "\r\nGenerating Terrains and Features...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_TERRAIN_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_TERRAIN");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_TERRAIN_HELP_TEXT");
			strHomeDesc += "</div>";
			strHomeDesc += "<h2>" + GetString("TXT_KEY_PEDIA_TERRAIN_FEATURES_LABEL") + "</h2>";
			strHomeDesc += "<div class=\"infobox\">";
			strHomeDesc += GetString("TXT_KEY_PEDIA_TERRAIN_FEATURES_HELP_TEXT");
			const string strHomeImage = "TERRAIN_HILL";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Terrains";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "TERRAIN_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Terrain Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_TERRAINS.aspx"));
			foreach (string strXmlFile in _lstTerrains)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Terrains/Row"))
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
					string strDesc = GetString(objTechnology["Civilopedia"].InnerText);
					string strMyDesc = strDesc;
					strDesc = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
					strDesc += "<div class=\"infobox\">";
					strDesc += strMyDesc;
					strDesc += "</div>";

					// Determine Yields.
					string strYields = "";
					foreach (XmlNode objYield in objDocument.SelectNodes("/GameData/Terrain_Yields/Row[TerrainType = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strYields != string.Empty)
							strYields += ", ";

						switch (objYield["YieldType"].InnerText)
						{
							case "YIELD_FOOD":
								strYields += ParseString(GetString("TXT_KEY_BUILD_FOOD_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							case "YIELD_ENERGY":
								strYields += ParseString(GetString("TXT_KEY_BUILD_ENERGY_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							case "YIELD_PRODUCTION":
								strYields += ParseString(GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							default:
								break;
						}
					}
					if (strYields == "")
						strYields = GetString("TXT_KEY_PEDIA_NO_YIELD");
					if (objTechnology["Type"].InnerText == "TERRAIN_HILL")
						strYields = ParseString(GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false).Replace("{1_Num}", "1"));
					string strMyYields = strYields;
					strYields = "<h2>" + TXT_KEY_PEDIA_YIELD_LABEL + "</h2>";
					strYields += "<div class=\"infobox\">";
					strYields += strMyYields;
					strYields += "</div>";

					// Determine Features.
					string strFeatures = "";
					foreach (string strFeatureFile in _lstFeatures)
					{
						XmlDocument objFeatureDoc = new XmlDocument();
						objFeatureDoc.Load(strFeatureFile);

						foreach (XmlNode objFeature in objFeatureDoc.SelectNodes("/GameData/Feature_TerrainBooleans/Row[TerrainType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							if (strFeatures == "")
							{
								strFeatures += "\n<h2>" + TXT_KEY_PEDIA_FEATURES_LABEL + "</h2>";
								strFeatures += "<div class=\"infobox\">";
							}
							string strMyTitle = FindDescription(_lstFeatures, "Features", objFeature["FeatureType"].InnerText);
							strFeatures += "<a href=\"" + objFeature["FeatureType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objFeature["FeatureType"].InnerText + ".png\" /></a>";
						}
					}
					if (strFeatures != "")
						strFeatures += "</div>";

					// Determine Resources.
					string strResources = "";
					foreach (string strResourceFile in _lstResources)
					{
						XmlDocument objResourceDoc = new XmlDocument();
						objResourceDoc.Load(strResourceFile);
						string strXPath = "";
						string strElement = "";
						if (objTechnology["Type"].InnerText == "TERRAIN_HILL")
						{
							strXPath = "/GameData/Resources/Row[Hills = \"true\"]";
							strElement = "Type";
						}
						else
						{
							strXPath = "/GameData/Resource_TerrainBooleans/Row[TerrainType = \"" + objTechnology["Type"].InnerText + "\"]";
							strElement = "ResourceType";
						}
						foreach (XmlNode objRecource in objResourceDoc.SelectNodes(strXPath))
						{
							if (strResources == "")
							{
								strResources += "\n<h2>" + TXT_KEY_PEDIA_RESOURCESFOUND_LABEL + "</h2>";
								strResources += "<div class=\"infobox\">";
							}
							string strMyTitle = FindDescription(_lstResources, "Resources", objRecource[strElement].InnerText);
							strResources += "<a href=\"" + objRecource[strElement].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objRecource[strElement].InnerText + ".png\" /></a>";
						}
					}
					if (strResources != "")
						strResources += "</div>";

					// Define Moves.
					string strMoves = "";
					switch (objTechnology["Type"].InnerText)
					{
						case "TERRAIN_HILL":
							strMoves = "2 <img src=\"/civilopediabe/images/moves.png\" alt=\"moves\" />";
							break;
						case "TERRAIN_MOUNTAIN":
							strMoves = "Impassable";
							break;
						default:
							strMoves = "1 <img src=\"/civilopediabe/images/moves.png\" alt=\"moves\" />";
							break;
					}
					string strMyMoves = strMoves;
					strMoves = "<h2>" + TXT_KEY_PEDIA_MOVECOST_LABEL + "</h2>";
					strMoves += "<div class=\"infobox\">";
					strMoves += strMyMoves;
					strMoves += "</div>";

					// Define Combat.
					string strCombat = "";
					switch (objTechnology["Type"].InnerText)
					{
						case "TERRRAIN_GRASS":
							strCombat = "-10%";
							break;
						case "TERRAIN_HILL":
						case "TERRAIN_MOUNTAIN":
							strCombat = "+25%";
							break;
						default:
							strCombat = "0%";
							break;
					}
					string strMyCombat = strCombat;
					strCombat = "<h2>" + TXT_KEY_PEDIA_COMBATMOD_LABEL + "</h2>";
					strCombat += "<div class=\"infobox\">";
					strCombat += strMyCombat;
					strCombat += "</div>";

					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", string.Empty);
					strOutput = strOutput.Replace("##DESC##", strDesc);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##YIELDS##", strYields);
					strOutput = strOutput.Replace("##FEATURES##", strFeatures);
					strOutput = strOutput.Replace("##MOVES##", strMoves);
					strOutput = strOutput.Replace("##COMBAT##", strCombat);
					strOutput = strOutput.Replace("##RESOURCES##", strResources);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					bool blnFound = false;
					Group objGroup = new Group();
					foreach (Group objCurrentGroup in lstGroups)
					{
						if (objCurrentGroup.Key == "TERRAINS")
						{
							objGroup = objCurrentGroup;
							blnFound = true;
							break;
						}
					}
					if (!blnFound)
					{
						objGroup.Key = "TERRAINS";
						objGroup.Name = GetString("TXT_KEY_TERRAIN_SECTION_1");
						lstGroups.Add(objGroup);
					}
					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					// Create the Image.
					if (_strLanguage == "en_US")
					{
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
					}

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Features Pages.
			foreach (string strXmlFile in _lstFeatures)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Features/Row"))
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);

					string strHelp = "";
					try
					{
						strHelp = GetString(objTechnology["Help"].InnerText);
						if (strHelp != "")
						{
							string strMyHelp = strHelp;
							strHelp = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
							strHelp += "<div class=\"infobox\">";
							strHelp += strMyHelp;
							strHelp += "</div>";
						}
					}
					catch
					{
					}

					string strDesc = GetString(objTechnology["Civilopedia"].InnerText);
					string strMyDesc = strDesc;
					strDesc = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
					strDesc += "<div class=\"infobox\">";
					strDesc += strMyDesc;
					strDesc += "</div>";

					// Determine Yields.
					string strYields = "";
					foreach (XmlNode objYield in objDocument.SelectNodes("/GameData/Feature_YieldChanges/Row[FeatureType = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strYields != string.Empty)
							strYields += ", ";

						switch (objYield["YieldType"].InnerText)
						{
							case "YIELD_FOOD":
								strYields += ParseString(GetString("TXT_KEY_BUILD_FOOD_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							case "YIELD_ENERGY":
								strYields += ParseString(GetString("TXT_KEY_BUILD_ENERGY_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							case "YIELD_PRODUCTION":
								strYields += ParseString(GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							default:
								break;
						}
					}
					if (objTechnology["Culture"] != null)
						strYields += objTechnology["Culture"].InnerText + " <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" />";
					if (objTechnology["InBorderHappiness"] != null)
						strYields += objTechnology["InBorderHappiness"].InnerText + " <img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />";
					if (strYields == "")
						strYields = GetString("TXT_KEY_PEDIA_NO_YIELD");
					string strMyYields = strYields;
					strYields = "<h2>" + TXT_KEY_PEDIA_YIELD_LABEL + "</h2>";
					strYields += "<div class=\"infobox\">";
					strYields += strMyYields;
					strYields += "</div>";

					// Determine Moves.
					string strMoves = "";
					if (objTechnology["Movement"] != null)
						strMoves = objTechnology["Movement"].InnerText + " <img src=\"/civilopediabe/images/moves.png\" alt=\"moves\" />";
					if (objTechnology["Impassable"] != null)
					{
						if (objTechnology["Impassable"].InnerText == "true")
							strMoves = "Impassable";
					}
					string strMyMoves = strMoves;
					if (strMoves != string.Empty)
					{
						strMoves = "<h2>" + TXT_KEY_PEDIA_MOVECOST_LABEL + "</h2>";
						strMoves += "<div class=\"infobox\">";
						strMoves += strMyMoves;
						strMoves += "</div>";
					}

					// Define Combat.
					string strCombat = "";
					switch (objTechnology["Type"].InnerText)
					{
						case "FEATURE_RIVER":
							strCombat = "-20%";
							break;
					}
					string strMyCombat = strCombat;
					if (strCombat != string.Empty)
					{
						strCombat = "<h2>" + TXT_KEY_PEDIA_COMBATMOD_LABEL + "</h2>";
						strCombat += "<div class=\"infobox\">";
						strCombat += strMyCombat;
						strCombat += "</div>";
					}

					// Determine Resources.
					string strResources = "";
					foreach (string strResourceFile in _lstResources)
					{
						XmlDocument objResourceDoc = new XmlDocument();
						objResourceDoc.Load(strResourceFile);

						foreach (XmlNode objFeature in objResourceDoc.SelectNodes("/GameData/Resource_FeatureBooleans/Row[FeatureType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							if (strResources == "")
							{
								strResources += "\n<h2>" + TXT_KEY_PEDIA_RESOURCESFOUND_LABEL + "</h2>";
								strResources += "<div class=\"infobox\">";
							}
							string strMyTitle = FindDescription(_lstResources, "Resources", objFeature["ResourceType"].InnerText);
							strResources += "<a href=\"" + objFeature["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objFeature["ResourceType"].InnerText + ".png\" /></a>";
						}
					}
					if (strResources != "")
						strResources += "</div>";

					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", strHelp);
					strOutput = strOutput.Replace("##DESC##", strDesc);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##YIELDS##", strYields);
					strOutput = strOutput.Replace("##MOVES##", strMoves);
					strOutput = strOutput.Replace("##COMBAT##", strCombat);
					strOutput = strOutput.Replace("##FEATURES##", string.Empty);
					strOutput = strOutput.Replace("##RESOURCES##", strResources);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					bool blnFound = false;
					Group objGroup = new Group();
					foreach (Group objCurrentGroup in lstGroups)
					{
						if (objCurrentGroup.Key == "FEATURES")
						{
							objGroup = objCurrentGroup;
							blnFound = true;
							break;
						}
					}
					if (!blnFound)
					{
						objGroup.Key = "FEATURES";
						objGroup.Name = GetString("TXT_KEY_TERRAIN_SECTION_2");
						lstGroups.Add(objGroup);
					}
					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					// Create the Image.
					if (_strLanguage == "en_US")
					{
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
					}

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Fake Features Pages.
			foreach (string strXmlFile in _lstFeatures)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/FakeFeatures/Row"))
				{
					//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
					//txtDebug.SelectionStart = txtDebug.TextLength;
					//txtDebug.ScrollToCaret();
					//Application.DoEvents();
					string strTitle = GetString(objTechnology["Description"].InnerText);
					string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);

					string strHelp = "";
					try
					{
						strHelp = GetString(objTechnology["Help"].InnerText);
						if (strHelp != "")
						{
							string strMyHelp = strHelp;
							strHelp = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
							strHelp += "<div class=\"infobox\">";
							strHelp += strMyHelp;
							strHelp += "</div>";
						}
					}
					catch
					{
					}

					string strDesc = GetString(objTechnology["Civilopedia"].InnerText);
					string strMyDesc = strDesc;
					strDesc = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
					strDesc += "<div class=\"infobox\">";
					strDesc += strMyDesc;
					strDesc += "</div>";

					// Determine Yields.
					string strYields = "";
					foreach (XmlNode objYield in objDocument.SelectNodes("/GameData/Feature_YieldChanges/Row[FeatureType = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strYields != string.Empty)
							strYields += ", ";

						switch (objYield["YieldType"].InnerText)
						{
							case "YIELD_FOOD":
								strYields += ParseString(GetString("TXT_KEY_BUILD_FOOD_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							case "YIELD_ENERGY":
								strYields += ParseString(GetString("TXT_KEY_BUILD_ENERGY_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							case "YIELD_PRODUCTION":
								strYields += ParseString(GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false).Replace("{1_Num}", objYield["Yield"].InnerText));
								break;
							default:
								break;
						}
					}
					if (objTechnology["Culture"] != null)
						strYields += objTechnology["Culture"].InnerText + " <img src=\"/civilopediabe/images/culture.png\" alt=\"culture\" />";
					if (objTechnology["InBorderHappiness"] != null)
						strYields += objTechnology["InBorderHappiness"].InnerText + " <img src=\"/civilopediabe/images/happiness_1.png\" alt=\"happiness\" />";
					if (strYields == "")
						strYields = GetString("TXT_KEY_PEDIA_NO_YIELD");
					string strMyYields = strYields;
					strYields = "<h2>" + TXT_KEY_PEDIA_YIELD_LABEL + "</h2>";
					strYields += "<div class=\"infobox\">";
					strYields += strMyYields;
					strYields += "</div>";

					// Determine Moves.
					string strMoves = "";
					if (objTechnology["Movement"] != null)
					{
						strMoves = objTechnology["Movement"].InnerText;
						if (strMoves.StartsWith("TXT_KEY_"))
							strMoves = GetString(strMoves);
						strMoves += " <img src=\"/civilopediabe/images/moves.png\" alt=\"moves\" />";
					}
					if (objTechnology["Impassable"] != null)
					{
						if (objTechnology["Impassable"].InnerText == "true")
							strMoves = "Impassable";
					}
					string strMyMoves = strMoves;
					strMoves = "<h2>" + TXT_KEY_PEDIA_MOVECOST_LABEL + "</h2>";
					strMoves += "<div class=\"infobox\">";
					strMoves += strMyMoves;
					strMoves += "</div>";

					// Define Combat.
					string strCombat = "";
					switch (objTechnology["Type"].InnerText)
					{
						case "FEATURE_RIVER":
							strCombat = "-20%";
							break;
					}
					string strMyCombat = strCombat;
					if (strCombat != string.Empty)
					{
						strCombat = "<h2>" + TXT_KEY_PEDIA_COMBATMOD_LABEL + "</h2>";
						strCombat += "<div class=\"infobox\">";
						strCombat += strMyCombat;
						strCombat += "</div>";
					}

					// Determine Resources.
					string strResources = "";
					foreach (string strResourceFile in _lstResources)
					{
						XmlDocument objResourceDoc = new XmlDocument();
						objResourceDoc.Load(strResourceFile);

						foreach (XmlNode objFeature in objResourceDoc.SelectNodes("/GameData/Resource_FeatureBooleans/Row[FeatureType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							if (strResources == "")
							{
								strResources += "\n<h2>" + TXT_KEY_PEDIA_RESOURCESFOUND_LABEL + "</h2>";
								strResources += "<div class=\"infobox\">";
							}
							string strMyTitle = FindDescription(_lstResources, "Resources", objFeature["ResourceType"].InnerText);
							strResources += "<a href=\"" + objFeature["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objFeature["ResourceType"].InnerText + ".png\" /></a>";
						}
					}
					if (strResources != "")
						strResources += "</div>";

					string strOutput = strTemplate;
					strOutput = strOutput.Replace("##TITLE##", strTitle);
					strOutput = strOutput.Replace("##HELP##", strHelp);
					strOutput = strOutput.Replace("##DESC##", strDesc);
					strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
					strOutput = strOutput.Replace("##YIELDS##", strYields);
					strOutput = strOutput.Replace("##MOVES##", strMoves);
					strOutput = strOutput.Replace("##COMBAT##", strCombat);
					strOutput = strOutput.Replace("##FEATURES##", string.Empty);
					strOutput = strOutput.Replace("##RESOURCES##", strResources);

					// Create a GroupItem for this Tech.
					GroupItem objItem = new GroupItem();
					objItem.Key = objTechnology["Type"].InnerText;
					objItem.Name = strTitle;

					// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
					bool blnFound = false;
					Group objGroup = new Group();
					foreach (Group objCurrentGroup in lstGroups)
					{
						if (objCurrentGroup.Key == "FEATURES")
						{
							objGroup = objCurrentGroup;
							blnFound = true;
							break;
						}
					}
					if (!blnFound)
					{
						objGroup.Key = "FEATURES";
						objGroup.Name = GetString("TXT_KEY_TERRAIN_SECTION_2");
						lstGroups.Add(objGroup);
					}
					objGroup.GroupItems.Add(objItem);

					_strXml += "\t\t<page>";
					_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
					_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
					_strXml += "\t\t</page>";

					// Create the Image.
					if (_strLanguage == "en_US")
					{
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
						CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
					}

					File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_TERRAINS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"TERRAIN_HOME.aspx\"><div id=\"TERRAIN_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Terrains.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Resources pages.
		/// </summary>
		private void GenerateResources()
		{
			txtDebug.Text += "\r\nGenerating Resources...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			Group objBasic = new Group();
			objBasic.Key = "RESOURCECLASS_BASIC";
			objBasic.Name = GetString("TXT_KEY_RESOURCES_SECTION_0");
			lstGroups.Add(objBasic);

			Group objStrategic = new Group();
			objStrategic.Key = "RESOURCECLASS_STRATEGIC";
			objStrategic.Name = GetString("TXT_KEY_RESOURCES_SECTION_1");
			lstGroups.Add(objStrategic);

			Group objArtifact = new Group();
			objArtifact.Key = "RESOURCECLASS_ARTIFACT";
			objArtifact.Name = GetString("TXT_KEY_RESOURCES_SECTION_2");
			lstGroups.Add(objArtifact);

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_RESOURCES_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_RESOURCES");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_RESOURCES_HELP_TEXT");
			const string strHomeImage = "RESOURCE_HORSE";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Resources";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "RESOURCE_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_RESOURCES.aspx"));
			foreach (string strXmlFile in _lstResources)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				string strXPath = "";

				for (int i = 0; i <= 1; i++)
				{
					if (i == 0)
						strXPath = "/GameData/Resources/Row";
					else
						strXPath = "/GameData/Resources/InsertOrAbort";
					foreach (XmlNode objTechnology in objDocument.SelectNodes(strXPath))
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strHelp = GetString(objTechnology["Civilopedia"].InnerText);
						string strMyHelp = strHelp;
						strHelp = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
						strHelp += "<div class=\"infobox\">";
						strHelp += strMyHelp;
						strHelp += "</div>";

						// Determine Game Info.
						string strInfo = "";
						if (objTechnology["Help"] != null)
						{
							strInfo += "\n<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
							strInfo += "<div class=\"infobox\">";
							strInfo += GetString(objTechnology["Help"].InnerText);
							strInfo += "</div>";
						}

						// Determine Yields.
						string strYields = "";
						foreach (XmlNode objYield in objDocument.SelectNodes("/GameData/Resource_YieldChanges/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							string strThisYield = "";
							switch (objYield["YieldType"].InnerText)
							{
								case "YIELD_FOOD":
									strThisYield = GetString("TXT_KEY_BUILD_FOOD_STRING", false);
									break;
								case "YIELD_PRODUCTION":
									strThisYield = GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false);
									break;
								case "YIELD_ENERGY":
									strThisYield = GetString("TXT_KEY_BUILD_ENERGY_STRING", false);
									break;
								case "YIELD_SCIENCE":
									strThisYield = GetString("TXT_KEY_BUILD_SCIENCE_STRING", false);
									break;
								case "YIELD_CULTURE":
									strThisYield = GetString("TXT_KEY_TOP_PANEL_ITR_CULTURE_YIELD_TT", false);
									break;
								default:
									break;
							}

							strThisYield = strThisYield.Replace("{1_Num}", objYield["Yield"].InnerText);
							strThisYield = ParseString(strThisYield);
							strYields += strThisYield;
						}
						if (strYields == "")
							strYields = GetString("TXT_KEY_PEDIA_NO_YIELD");
						string strMyYields = strYields;
						strYields = "<h2>" + TXT_KEY_PEDIA_YIELD_LABEL + "</h2>";
						strYields += "<div class=\"infobox\">";
						strYields += strMyYields;
						strYields += "</div>";

						// Determine Terrains.
						string strTerrains = "";
						foreach (XmlNode objTerrain in objDocument.SelectNodes("/GameData/Resource_FeatureBooleans/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							string strMyTitle = FindDescription(_lstFeatures, "Features", objTerrain["FeatureType"].InnerText);
							strTerrains += "<a href=\"" + objTerrain["FeatureType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTerrain["FeatureType"].InnerText + ".png\" /></a>";
						}
						if (objTechnology["Hills"] != null)
						{
							if (objTechnology["Hills"].InnerText == "true")
								strTerrains += "<a href=\"TERRAIN_HILL.aspx\" onmouseover=\"return tooltip('" + GetString("TXT_KEY_TERRAIN_HILL") + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/TERRAIN_HILL.png\" /></a>";
						}
						foreach (XmlNode objTerrain in objDocument.SelectNodes("/GameData/Resource_TerrainBooleans/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
						{
							string strMyTitle = FindDescription(_lstTerrains, "Terrains", objTerrain["TerrainType"].InnerText);
							strTerrains += "<a href=\"" + objTerrain["TerrainType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTerrain["TerrainType"].InnerText + ".png\" /></a>";
						}
						if (strTerrains != "")
						{
							string strMyTerrains = strTerrains;
							strTerrains = "<h2>" + TXT_KEY_PEDIA_TERRAINS_LABEL + "</h2>";
							strTerrains += "<div class=\"infobox\">";
							strTerrains += strMyTerrains;
							strTerrains += "</div>";
						}

						// Determine Revealing Tech.
						string strRevealed = "";
						if (objTechnology["TechReveal"] != null)
						{
							strRevealed += "\n<h2>" + TXT_KEY_PEDIA_REVEAL_TECH_LABEL + "</h2>";
							strRevealed += "<div class=\"infobox\">";
							string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objTechnology["TechReveal"].InnerText);
							strRevealed += "<a href=\"" + objTechnology["TechReveal"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTechnology["TechReveal"].InnerText + ".png\" /></a>";
							strRevealed += "</div>";
						}

						// Determine Improved By.
						string strImproved = "";
						List<string> lstSeenImprovements = new List<string>();
						foreach (string strImprovementFile in _lstImprovements)
						{
							XmlDocument objImprovementDoc = new XmlDocument();
							objImprovementDoc.Load(strImprovementFile);

							foreach (XmlNode objImprovement in objImprovementDoc.SelectNodes("/GameData/Improvement_ResourceTypes/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
							{
								bool blnAddItem = true;
								foreach (string strImprovedBy in lstSeenImprovements)
								{
									if (strImprovedBy == objImprovement["ImprovementType"].InnerText)
									{
										blnAddItem = false;
										break;
									}
								}
								if (blnAddItem)
								{
									lstSeenImprovements.Add(objImprovement["ImprovementType"].InnerText);
									string strMyTitle = FindDescription(_lstImprovements, "Improvements", objImprovement["ImprovementType"].InnerText);
									strImproved += "<a href=\"" + objImprovement["ImprovementType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objImprovement["ImprovementType"].InnerText + ".png\" /></a>";
								}
							}
						}
						if (strImproved != "")
						{
							string strMyImproved = strImproved;
							strImproved = "<h2>" + TXT_KEY_PEDIA_IMPROVEMENTS_LABEL + "</h2>";
							strImproved += "<div class=\"infobox\">";
							strImproved += strMyImproved;
							strImproved += "</div>";
						}

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##INFO##", strInfo);
						strOutput = strOutput.Replace("##HELP##", strHelp);
						strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
						strOutput = strOutput.Replace("##YIELDS##", strYields);
						strOutput = strOutput.Replace("##TERRAINS##", strTerrains);
						strOutput = strOutput.Replace("##REVEALED##", strRevealed);
						strOutput = strOutput.Replace("##IMPROVED##", strImproved);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;

						// Determine which Group the Resource belongs to based on its Type since this doesn't seem to be defined anywhere in the XML files.
						string strGroupKey = objTechnology["ResourceClassType"].InnerText;

						// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
						Group objGroup = new Group();
						foreach (Group objCurrentGroup in lstGroups)
						{
							if (objCurrentGroup.Key == strGroupKey)
							{
								objGroup = objCurrentGroup;
								break;
							}
						}
						objGroup.GroupItems.Add(objItem);

						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						// Create the Image.
						if (_strLanguage == "en_US")
						{
							CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
							CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
						}

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_RESOURCES_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"RESOURCE_HOME.aspx\"><div id=\"TERRAIN_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
				strMenu += "\n\t\t\t</div></div>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Resources.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Improvement pages.
		/// </summary>
		private void GenerateImprovements()
		{
			txtDebug.Text += "\r\nGenerating Improvements...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			List<Group> lstGroups = new List<Group>();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_IMPROVEMENTS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_IMPROVEMENTS");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_IMPROVEMENT_HELP_TEXT");
			const string strHomeImage = "IMPROVEMENT_FARM";
			string strHomeOutput = strHomeTeplate;
			const string strMaster = "Improvements";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "IMPROVEMENT_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_IMPROVEMENTS.aspx"));
			XmlDocument objDocument = MergeXml(_lstImprovements);

			foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Improvements/Row"))
			{
				// Skip over Partial items.
				if (objTechnology["Type"].InnerText.EndsWith("_PARTIAL"))
					continue;

				// Skip over Graphical Only items since they should not appear in the Civilopedia.
				if (objTechnology["GraphicalOnly"] != null)
				{
					if (objTechnology["GraphicalOnly"].InnerText == "true")
						continue;
				}

				//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
				//txtDebug.SelectionStart = txtDebug.TextLength;
				//txtDebug.ScrollToCaret();
				//Application.DoEvents();
				string strTitle = GetString(objTechnology["Description"].InnerText);
				string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
				string strHelp = GetString(objTechnology["Civilopedia"].InnerText);
				string strMyHelp = strHelp;
				strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
				strHelp += "<div class=\"infobox\">";
				strHelp += strMyHelp;
				strHelp += "</div>";

				// Determine Maintenance.
				string strMaintenance = "";
				if (objTechnology["EnergyMaintenance"] != null)
				{
					if (objTechnology["EnergyMaintenance"].InnerText != "0")
					{
						strMaintenance += "<h2>" + TXT_KEY_PEDIA_MAINT_LABEL + "</h2>";
						strMaintenance += "<div class=\"infobox\">";
						strMaintenance += objTechnology["EnergyMaintenance"].InnerText + " <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
						strMaintenance += "</div>";
					}
				}

				// Determine Health.
				string strHealth = "";
				string strMyHealth = "";
				if (objTechnology["Health"] != null)
				{
					if (objTechnology["Health"].InnerText != "0")
					{
						strMyHealth += objTechnology["Health"].InnerText + " <img src=\"/civilopediabe/images/health.png\" alt=\"health\" />";
					}
				}
				if (objTechnology["Unhealth"] != null)
				{
					if (objTechnology["Unhealth"].InnerText != "0")
					{
						strMyHealth += objTechnology["Unhealth"].InnerText + " <img src=\"/civilopediabe/images/unhealth.png\" alt=\"unhealth\" />";
					}
				}

				if (strMyHealth != string.Empty)
				{
					strHealth += "<h2>" + TXT_KEY_PEDIA_HEALTH_LABEL + "</h2>";
					strHealth += "<div class=\"infobox\">";
					strHealth += strMyHealth;
					strHealth += "</div>";
				}

				string strResources = "";
				// Determine Resources.
				foreach (string strImprovementFile in _lstImprovements)
				{
					XmlDocument objImprovementDocument = new XmlDocument();
					objImprovementDocument.Load(strImprovementFile);
					foreach (XmlNode objResource in objImprovementDocument.SelectNodes("/GameData/Improvement_ResourceTypes/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						if (strResources == "")
						{
							strResources += "<h2>" + TXT_KEY_PEDIA_IMPROVES_RESRC_LABEL + "</h2>";
							strResources += "<div class=\"infobox\">";
						}
						string strMyTitle = FindDescription(_lstResources, "Resources", objResource["ResourceType"].InnerText);
						strResources += "<a href=\"" + objResource["ResourceType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objResource["ResourceType"].InnerText + ".png\" /></a>";
					}
				}
				if (strResources != "")
					strResources += "</div>";

				// Determine Prereq Tech.
				string strPrereq = "";
				foreach (string strBuildsFile in _lstBuilds)
				{
					XmlDocument objBuildsDoc = new XmlDocument();
					objBuildsDoc.Load(strBuildsFile);
					XmlNode objBuild = objBuildsDoc.SelectSingleNode("/GameData/Builds/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objBuild != null)
					{
						if (objBuild["PrereqTech"] != null)
						{
							strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
							strPrereq += "<div class=\"infobox\">";
							string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objBuild["PrereqTech"].InnerText);
							strPrereq += "<a href=\"" + objBuild["PrereqTech"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objBuild["PrereqTech"].InnerText + ".png\" /></a>";
							strPrereq += "</div>";
						}
					}
				}

				// Determine Yields.
				string strYields = "";
				// Science.
				foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Improvement_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_SCIENCE\"]"))
				{
					strYields += ParseString(GetString("TXT_KEY_BUILD_SCIENCE_STRING", false).Replace("{1_Num}", objModifier["Yield"].InnerText));
				}
				// Food.
				foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Improvement_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_FOOD\"]"))
				{
					if (strYields != string.Empty)
						strYields += "<br />";
					strYields += ParseString(GetString("TXT_KEY_BUILD_FOOD_STRING", false).Replace("{1_Num}", objModifier["Yield"].InnerText));
				}
				// Production.
				foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Improvement_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_PRODUCTION\"]"))
				{
					if (strYields != string.Empty)
						strYields += "<br />";
					strYields += ParseString(GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false).Replace("{1_Num}", objModifier["Yield"].InnerText));
				}
				// Energy.
				foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Improvement_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_ENERGY\"]"))
				{
					if (strYields != string.Empty)
						strYields += "<br />";
					strYields += ParseString(GetString("TXT_KEY_BUILD_ENERGY_STRING", false).Replace("{1_Num}", objModifier["Yield"].InnerText));
				}
				// Culture.
				foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Improvement_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\" and YieldType = \"YIELD_CULTURE\"]"))
				{
					if (strYields != string.Empty)
						strYields += "<br />";
					strYields += ParseString(GetString("TXT_KEY_TOP_PANEL_ITR_CULTURE_YIELD_TT", false).Replace("{1_Num}", objModifier["Yield"].InnerText));
				}
				// City HP.
				if (objTechnology["CityHP"] != null)
				{
					if (strYields != string.Empty)
						strYields += "<br />";
					strYields += ParseString(GetString("TXT_KEY_PRODUCTION_BUILDING_HITPOINTS_TT", false).Replace("{1_Num}", objTechnology["CityHP"].InnerText));
				}
				// Resource Type Yields.
				if (objDocument.SelectNodes("/GameData/Improvement_ResourceType_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]") != null)
				{
					foreach (XmlNode objModifier in objDocument.SelectNodes("/GameData/Improvement_ResourceType_Yields/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]"))
					{
						string strYieldIcon = string.Empty;
						string strYieldName = string.Empty;
						string strSourceIcon = string.Empty;
						string strSourceName = string.Empty;

						strYieldIcon = "[" + objModifier["YieldType"].InnerText.Replace("YIELD_", "ICON_") + "]";
						strYieldName = GetString("TXT_KEY_" + objModifier["YieldType"].InnerText);

						strSourceIcon = "[" + objModifier["ResourceType"].InnerText.Replace("RESOURCE_", "ICON_") + "]";
						strSourceName = GetString("TXT_KEY_" + objModifier["ResourceType"].InnerText);

						string strMyYield = GetString("TXT_KEY_YIELD_FROM_SPECIFIC_ICON_OBJECT", false);
						strMyYield = strMyYield.Replace("{1_Num}", objModifier["Yield"].InnerText);
						strMyYield = strMyYield.Replace("{2_IconString}", strYieldIcon);
						strMyYield = strMyYield.Replace("{3_YieldDesc}", strYieldName);
						strMyYield = strMyYield.Replace("{4_ObjectIcon}", strSourceIcon);
						strMyYield = strMyYield.Replace("{5_ObjectDesc}", strSourceName);

						if (strYields != string.Empty)
							strYields += "<br />";
						strYields += ParseString(strMyYield);
					}
				}

				if (strYields == "")
					strYields = GetString("TXT_KEY_PEDIA_NO_YIELD");

				if (strYields != "")
				{
					string strMyYield = strYields;
					strYields = "<h2>" + TXT_KEY_PEDIA_YIELD_LABEL + "</h2>";
					strYields += "<div class=\"infobox\">";
					strYields += strMyYield;
					strYields += "</div>";
				}

				// Look for Civilization.
				string strCivilization = "";
				if (objTechnology["CivilizationType"] != null)
				{
					strCivilization += "<h2>" + TXT_KEY_PEDIA_CIVILIZATIONS_LABEL + "</h2>";
					strCivilization += "<div class=\"infobox\">";
					string strMyTitle = FindDescription(_lstCivilizations, "Civilizations", objTechnology["CivilizationType"].InnerText);
					strCivilization += "<a href=\"" + objTechnology["CivilizationType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTechnology["CivilizationType"].InnerText + ".png\" /></a>";
					strCivilization += "</div>";
				}

				// Look for Features.
				string strBuildOn = "";
				foreach (XmlNode objTerrain in objDocument.SelectNodes("/GameData/Improvement_ValidFeatures/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]"))
				{
					if (strBuildOn == "")
					{
						strBuildOn += "<h2>" + TXT_KEY_PEDIA_FOUNDON_LABEL + "</h2>";
						strBuildOn += "<div class=\"infobox\">";
					}
					string strMyTitle = FindDescription(_lstFeatures, "Features", objTerrain["FeatureType"].InnerText);
					strBuildOn += "<a href=\"" + objTerrain["FeatureType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTerrain["FeatureType"].InnerText + ".png\" /></a>";
				}
				// Look for Terrains.
				foreach (XmlNode objTerrain in objDocument.SelectNodes("/GameData/Improvement_ValidTerrains/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]"))
				{
					if (strBuildOn == "")
					{
						strBuildOn += "<h2>" + TXT_KEY_PEDIA_FOUNDON_LABEL + "</h2>";
						strBuildOn += "<div class=\"infobox\">";
					}
					string strMyTitle = FindDescription(_lstTerrains, "Terrains", objTerrain["TerrainType"].InnerText);
					strBuildOn += "<a href=\"" + objTerrain["TerrainType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTerrain["TerrainType"].InnerText + ".png\" /></a>";
				}
				if (strBuildOn != "")
					strBuildOn += "</div>";

				// Look for Misc.
				string strMisc = "";
				XmlNode objMisc = objDocument.SelectSingleNode("/GameData/Improvement_AdjacentMountainYieldChanges/Row[ImprovementType = \"" + objTechnology["Type"].InnerText + "\"]");
				if (objMisc != null)
				{
					strMisc += "<h2>" + TXT_KEY_PEDIA_MOUNTAINADJYIELD_LABEL + "</h2>";
					strMisc += "<div class=\"infobox\">";
					strMisc += "+" + objMisc["Yield"].InnerText + " <img src=\"/civilopediabe/images/food.png\" alt=\"food\" /> ";
					strMisc += "</div>";
				}

				string strOutput = strTemplate;
				strOutput = strOutput.Replace("##TITLE##", strTitle);
				strOutput = strOutput.Replace("##MAINTENANCE##", strMaintenance);
				strOutput = strOutput.Replace("##HEALTH##", strHealth);
				strOutput = strOutput.Replace("##HELP##", strHelp);
				strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
				strOutput = strOutput.Replace("##IMPROVES##", strResources);
				strOutput = strOutput.Replace("##PREREQ##", strPrereq);
				strOutput = strOutput.Replace("##YIELDS##", strYields);
				strOutput = strOutput.Replace("##CIVILIZATION##", strCivilization);
				strOutput = strOutput.Replace("##BUILDON##", strBuildOn);
				strOutput = strOutput.Replace("##MISC##", strMisc);

				// Create a GroupItem for this Tech.
				GroupItem objItem = new GroupItem();
				objItem.Key = objTechnology["Type"].InnerText;
				objItem.Name = strTitle;

				// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
				bool blnFound = false;
				Group objGroup = new Group();
				foreach (Group objCurrentGroup in lstGroups)
				{
					if (objCurrentGroup.Key == "IMPROVEMENTS")
					{
						objGroup = objCurrentGroup;
						blnFound = true;
						break;
					}
				}
				if (!blnFound)
				{
					objGroup.Key = "IMPROVEMENTS";
					objGroup.Name = GetString("TXT_KEY_PEDIA_CATEGORY_14_LABEL");
					lstGroups.Add(objGroup);
				}
				objGroup.GroupItems.Add(objItem);

				_strXml += "\t\t<page>";
				_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
				_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
				_strXml += "\t\t</page>";

				// Create the Image.
				if (_strLanguage == "en_US")
				{
					CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
					CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
				}

				File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
			}

			// Routes.
			objDocument = MergeXml(_lstRoutes);

			foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Routes/Row"))
			{
				// Skip over Partial items.
				if (objTechnology["Type"].InnerText.EndsWith("_PARTIAL"))
					continue;

				// Skip over Graphical Only items since they should not appear in the Civilopedia.
				if (objTechnology["GraphicalOnly"] != null)
				{
					if (objTechnology["GraphicalOnly"].InnerText == "true")
						continue;
				}

				//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
				//txtDebug.SelectionStart = txtDebug.TextLength;
				//txtDebug.ScrollToCaret();
				//Application.DoEvents();
				string strTitle = GetString(objTechnology["Description"].InnerText);
				string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
				string strHelp = GetString(objTechnology["Civilopedia"].InnerText);
				string strMyHelp = strHelp;
				strHelp = "<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
				strHelp += "<div class=\"infobox\">";
				strHelp += strMyHelp;
				strHelp += "</div>";

				// Determine Maintenance.
				string strMaintenance = "";
				if (objTechnology["EnergyMaintenance"] != null)
				{
					if (objTechnology["EnergyMaintenance"].InnerText != "0")
					{
						strMaintenance += "<h2>" + TXT_KEY_PEDIA_MAINT_LABEL + "</h2>";
						strMaintenance += "<div class=\"infobox\">";
						strMaintenance += objTechnology["EnergyMaintenance"].InnerText + " <img src=\"/civilopediabe/images/energy.png\" alt=\"energy\" />";
						strMaintenance += "</div>";
					}
				}

				// Determine Health.
				string strHealth = "";
				string strMyHealth = "";
				if (objTechnology["Health"] != null)
				{
					if (objTechnology["Health"].InnerText != "0")
					{
						strMyHealth += objTechnology["Health"].InnerText + " <img src=\"/civilopediabe/images/health.png\" alt=\"health\" />";
					}
				}
				if (objTechnology["Unhealth"] != null)
				{
					if (objTechnology["Unhealth"].InnerText != "0")
					{
						strMyHealth += objTechnology["Unhealth"].InnerText + " <img src=\"/civilopediabe/images/unhealth.png\" alt=\"unhealth\" />";
					}
				}

				if (strMyHealth != string.Empty)
				{
					strHealth += "<h2>" + TXT_KEY_PEDIA_HEALTH_LABEL + "</h2>";
					strHealth += "<div class=\"infobox\">";
					strHealth += strMyHealth;
					strHealth += "</div>";
				}

				// Determine Prereq Tech.
				string strPrereq = "";
				foreach (string strBuildsFile in _lstBuilds)
				{
					XmlDocument objBuildsDoc = new XmlDocument();
					objBuildsDoc.Load(strBuildsFile);
					XmlNode objBuild = objBuildsDoc.SelectSingleNode("/GameData/Builds/Row[RouteType = \"" + objTechnology["Type"].InnerText + "\"]");
					if (objBuild != null)
					{
						if (objBuild["PrereqTech"] != null)
						{
							strPrereq += "<h2>" + TXT_KEY_PEDIA_PREREQ_TECH_LABEL + "</h2>";
							strPrereq += "<div class=\"infobox\">";
							string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objBuild["PrereqTech"].InnerText);
							strPrereq += "<a href=\"" + objBuild["PrereqTech"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objBuild["PrereqTech"].InnerText + ".png\" /></a>";
							strPrereq += "</div>";
						}
					}
				}

				string strOutput = strTemplate;
				strOutput = strOutput.Replace("##TITLE##", strTitle);
				strOutput = strOutput.Replace("##MAINTENANCE##", strMaintenance);
				strOutput = strOutput.Replace("##HEALTH##", strHealth);
				strOutput = strOutput.Replace("##HELP##", strHelp);
				strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
				strOutput = strOutput.Replace("##PREREQ##", strPrereq);
				strOutput = strOutput.Replace("##YIELDS##", string.Empty);
				strOutput = strOutput.Replace("##MISC##", string.Empty);
				strOutput = strOutput.Replace("##CIVILIZATION##", string.Empty);
				strOutput = strOutput.Replace("##IMPROVES##", string.Empty);
				strOutput = strOutput.Replace("##BUILDON##", string.Empty);

				// Create a GroupItem for this Tech.
				GroupItem objItem = new GroupItem();
				objItem.Key = objTechnology["Type"].InnerText;
				objItem.Name = strTitle;

				// If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
				bool blnFound = false;
				Group objGroup = new Group();
				foreach (Group objCurrentGroup in lstGroups)
				{
					if (objCurrentGroup.Key == "IMPROVEMENTS")
					{
						objGroup = objCurrentGroup;
						blnFound = true;
						break;
					}
				}
				if (!blnFound)
				{
					objGroup.Key = "IMPROVEMENTS";
					objGroup.Name = GetString("TXT_KEY_PEDIA_CATEGORY_14_LABEL");
					lstGroups.Add(objGroup);
				}
				objGroup.GroupItems.Add(objItem);

				_strXml += "\t\t<page>";
				_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
				_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
				_strXml += "\t\t</page>";

				// Create the Image.
				if (_strLanguage == "en_US")
				{
					CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
					CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
				}

				File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_IMPROVEMENTS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"IMPROVEMENT_HOME.aspx\"><div id=\"IMPROVEMENT_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (Group objGroup in lstGroups)
			{
				objGroup.Sort();
				foreach (GroupItem objItem in objGroup.GroupItems)
				{
					strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
				}
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Improvements.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Affinity pages.
		/// </summary>
		private void GenerateAffinities()
		{
			txtDebug.Text += "\r\nGenerating Affinities...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_AFFINITIES_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_AFFINITIES");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_GAME_CONCEPT_HELP_TEXT");
			string strHomeOutput = strHomeTeplate;
			const string strHomeImage = "GAME_CONCEPTS";
			const string strMaster = "Affinity";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "AFFINITY_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_AFFINITY.aspx"));
			// Flip the order of the files so that the base file comes first.
			_lstConcepts.Reverse();
			int intCategoryCount = 0;
			foreach (string strXmlFile in _lstConcepts)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Concepts/Row[Topic=\"TXT_KEY_TOPIC_AFFINITY\"]"))
				{
					if (objTechnology["Summary"].InnerText != "CONCEPT_SPECIALISTS_AND_GREAT_PEOPLE_GREAT_PEOPLE_GOLDEN_AGE")
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strDesc = "";

						switch (objTechnology["Summary"].InnerText)
						{
							case "CONCEPT_VICTORY_DIPLOMATIC_VOTING":
								strDesc = GetString("TXT_KEY_VICTORY_WHOVOTES_HEADING4_BODY_ALT");
								break;
							case "CONCEPT_VICTORY_MINOR_CIV_LIBERATION":
								strDesc = GetString("TXT_KEY_VICTORY_LIBERATION_HEADING4_BODY_ALT");
								break;
							default:
								strDesc = GetString(objTechnology["Summary"].InnerText);
								break;
						}

						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_SUMMARY_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##DESC##", strDesc);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;
						objGroup.GroupItems.Add(objItem);

						// If the Topic already exists in the Group List, add this item to it, otherwise, create the new Group.
						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_AFFINITY_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"AFFINITY_HOME.aspx\"><div id=\"AFFINITY_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Affinity.master"), strMasterOutput, Encoding.UTF8);
		}

		/// <summary>
		/// Generate Stations pages.
		/// </summary>
		public void GenerateStations()
		{
			txtDebug.Text += "\r\nGenerating Stations...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();
			Group objGroup = new Group();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_STATIONS_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_STATIONS_HOMEPAGE_BLURB");
			string strHomeDesc = GetString("TXT_KEY_PEDIA_GAME_CONCEPT_HELP_TEXT");
			string strHomeOutput = strHomeTeplate;
			const string strHomeImage = "GAME_CONCEPTS";
			const string strMaster = "Stations";
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
			strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
			strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "STATION_HOME.aspx"), strHomeOutput, Encoding.UTF8);

			// Pages.
			string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_STATIONS.aspx"));
			// Flip the order of the files so that the base file comes first.
			_lstConcepts.Reverse();
			int intCategoryCount = 0;
			foreach (string strXmlFile in _lstConcepts)
			{
				XmlDocument objDocument = new XmlDocument();
				objDocument.Load(strXmlFile);

				foreach (XmlNode objTechnology in objDocument.SelectNodes("/GameData/Concepts/Row[Topic=\"TXT_KEY_TOPIC_STATIONS\"]"))
				{
					if (objTechnology["Summary"].InnerText != "CONCEPT_SPECIALISTS_AND_GREAT_PEOPLE_GREAT_PEOPLE_GOLDEN_AGE")
					{
						//txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
						//txtDebug.SelectionStart = txtDebug.TextLength;
						//txtDebug.ScrollToCaret();
						//Application.DoEvents();
						string strTitle = GetString(objTechnology["Description"].InnerText);
						string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
						string strDesc = "";

						switch (objTechnology["Summary"].InnerText)
						{
							case "CONCEPT_VICTORY_DIPLOMATIC_VOTING":
								strDesc = GetString("TXT_KEY_VICTORY_WHOVOTES_HEADING4_BODY_ALT");
								break;
							case "CONCEPT_VICTORY_MINOR_CIV_LIBERATION":
								strDesc = GetString("TXT_KEY_VICTORY_LIBERATION_HEADING4_BODY_ALT");
								break;
							default:
								strDesc = GetString(objTechnology["Summary"].InnerText);
								break;
						}

						string strMyDesc = strDesc;
						strDesc = "<h2>" + TXT_KEY_PEDIA_SUMMARY_LABEL + "</h2>";
						strDesc += "<div class=\"infobox\">";
						strDesc += strMyDesc;
						strDesc += "</div>";

						string strOutput = strTemplate;
						strOutput = strOutput.Replace("##TITLE##", strTitle);
						strOutput = strOutput.Replace("##DESC##", strDesc);

						// Create a GroupItem for this Tech.
						GroupItem objItem = new GroupItem();
						objItem.Key = objTechnology["Type"].InnerText;
						objItem.Name = strTitle;
						objGroup.GroupItems.Add(objItem);

						// If the Topic already exists in the Group List, add this item to it, otherwise, create the new Group.
						_strXml += "\t\t<page>";
						_strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
						_strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
						_strXml += "\t\t</page>";

						File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx"), strOutput, Encoding.UTF8);
					}
				}
			}

			// Write the Era information to the menu.
			string strMenu = "";
			string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_STATIONS_MASTER.master"));
			strMenu += "\n\t\t\t\t<a href=\"STATION_HOME.aspx\"><div id=\"STATION_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
			foreach (GroupItem objItem in objGroup.GroupItems)
			{
				strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key.Replace("CONCEPT_", "CONCEPTALT_") + ".aspx\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
			}

			string strMasterOutput = strMasterTeplate;
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
			strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Stations.master"), strMasterOutput, Encoding.UTF8);
		}

        /// <summary>
        /// Generate Resources pages.
        /// </summary>
        private void GenerateDiplomacy()
        {
            txtDebug.Text += "\r\nGenerating Diplomacy...";
            txtDebug.SelectionStart = txtDebug.TextLength;
            txtDebug.ScrollToCaret();
            Application.DoEvents();
            List<Group> lstGroups = new List<Group>();

            Group objBasic = new Group();
            objBasic.Key = "RESOURCECLASS_BASIC";
            objBasic.Name = GetString("TXT_KEY_RESOURCES_SECTION_0");
            lstGroups.Add(objBasic);

            Group objStrategic = new Group();
            objStrategic.Key = "RESOURCECLASS_STRATEGIC";
            objStrategic.Name = GetString("TXT_KEY_RESOURCES_SECTION_1");
            lstGroups.Add(objStrategic);

            Group objArtifact = new Group();
            objArtifact.Key = "RESOURCECLASS_ARTIFACT";
            objArtifact.Name = GetString("TXT_KEY_RESOURCES_SECTION_2");
            lstGroups.Add(objArtifact);

            // Home Page.
            string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_HOME.aspx"));
            string strHomeTitle = GetString("TXT_KEY_PEDIA_RESOURCES_PAGE_LABEL");
            string strHomeQuote = GetString("TXT_KEY_PEDIA_QUOTE_BLOCK_RESOURCES");
            string strHomeDesc = GetString("TXT_KEY_PEDIA_RESOURCES_HELP_TEXT");
            const string strHomeImage = "RESOURCE_HORSE";
            string strHomeOutput = strHomeTeplate;
            const string strMaster = "Resources";
            strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
            strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
            strHomeOutput = strHomeOutput.Replace("##DESC##", strHomeDesc);
            strHomeOutput = strHomeOutput.Replace("##IMAGE##", strHomeImage);
            strHomeOutput = strHomeOutput.Replace("##MASTER##", strMaster);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "DIPLOMACY_HOME.aspx"), strHomeOutput, Encoding.UTF8);

            // Pages.
            string strTemplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_DIPLOMACY.aspx"));
            foreach (string strXmlFile in _lstResources)
            {
                XmlDocument objDocument = new XmlDocument();
                objDocument.Load(strXmlFile);

                string strXPath = "";

                for (int i = 0; i <= 1; i++)
                {
                    if (i == 0)
                        strXPath = "/GameData/Resources/Row";
                    else
                        strXPath = "/GameData/Resources/InsertOrAbort";
                    foreach (XmlNode objTechnology in objDocument.SelectNodes(strXPath))
                    {
                        //txtDebug.Text += "\r\nGenerating " + objTechnology["Description"].InnerText;
                        //txtDebug.SelectionStart = txtDebug.TextLength;
                        //txtDebug.ScrollToCaret();
                        //Application.DoEvents();
                        string strTitle = GetString(objTechnology["Description"].InnerText);
                        string strXmlTitle = GetString(objTechnology["Description"].InnerText, false);
                        string strHelp = GetString(objTechnology["Civilopedia"].InnerText);
                        string strMyHelp = strHelp;
                        strHelp = "<h2>" + TXT_KEY_PEDIA_HISTORICAL_LABEL + "</h2>";
                        strHelp += "<div class=\"infobox\">";
                        strHelp += strMyHelp;
                        strHelp += "</div>";

                        // Determine Game Info.
                        string strInfo = "";
                        if (objTechnology["Help"] != null)
                        {
                            strInfo += "\n<h2>" + TXT_KEY_PEDIA_GAME_INFO_LABEL + "</h2>";
                            strInfo += "<div class=\"infobox\">";
                            strInfo += GetString(objTechnology["Help"].InnerText);
                            strInfo += "</div>";
                        }

                        // Determine Yields.
                        string strYields = "";
                        foreach (XmlNode objYield in objDocument.SelectNodes("/GameData/Resource_YieldChanges/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
                        {
                            string strThisYield = "";
                            switch (objYield["YieldType"].InnerText)
                            {
                                case "YIELD_FOOD":
                                    strThisYield = GetString("TXT_KEY_BUILD_FOOD_STRING", false);
                                    break;
                                case "YIELD_PRODUCTION":
                                    strThisYield = GetString("TXT_KEY_BUILD_PRODUCTION_STRING", false);
                                    break;
                                case "YIELD_ENERGY":
                                    strThisYield = GetString("TXT_KEY_BUILD_ENERGY_STRING", false);
                                    break;
                                case "YIELD_SCIENCE":
                                    strThisYield = GetString("TXT_KEY_BUILD_SCIENCE_STRING", false);
                                    break;
                                case "YIELD_CULTURE":
                                    strThisYield = GetString("TXT_KEY_TOP_PANEL_ITR_CULTURE_YIELD_TT", false);
                                    break;
                                default:
                                    break;
                            }

                            strThisYield = strThisYield.Replace("{1_Num}", objYield["Yield"].InnerText);
                            strThisYield = ParseString(strThisYield);
                            strYields += strThisYield;
                        }
                        if (strYields == "")
                            strYields = GetString("TXT_KEY_PEDIA_NO_YIELD");
                        string strMyYields = strYields;
                        strYields = "<h2>" + TXT_KEY_PEDIA_YIELD_LABEL + "</h2>";
                        strYields += "<div class=\"infobox\">";
                        strYields += strMyYields;
                        strYields += "</div>";

                        // Determine Terrains.
                        string strTerrains = "";
                        foreach (XmlNode objTerrain in objDocument.SelectNodes("/GameData/Resource_FeatureBooleans/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
                        {
                            string strMyTitle = FindDescription(_lstFeatures, "Features", objTerrain["FeatureType"].InnerText);
                            strTerrains += "<a href=\"" + objTerrain["FeatureType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTerrain["FeatureType"].InnerText + ".png\" /></a>";
                        }
                        if (objTechnology["Hills"] != null)
                        {
                            if (objTechnology["Hills"].InnerText == "true")
                                strTerrains += "<a href=\"TERRAIN_HILL.aspx\" onmouseover=\"return tooltip('" + GetString("TXT_KEY_TERRAIN_HILL") + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/TERRAIN_HILL.png\" /></a>";
                        }
                        foreach (XmlNode objTerrain in objDocument.SelectNodes("/GameData/Resource_TerrainBooleans/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
                        {
                            string strMyTitle = FindDescription(_lstTerrains, "Terrains", objTerrain["TerrainType"].InnerText);
                            strTerrains += "<a href=\"" + objTerrain["TerrainType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTerrain["TerrainType"].InnerText + ".png\" /></a>";
                        }
                        if (strTerrains != "")
                        {
                            string strMyTerrains = strTerrains;
                            strTerrains = "<h2>" + TXT_KEY_PEDIA_TERRAINS_LABEL + "</h2>";
                            strTerrains += "<div class=\"infobox\">";
                            strTerrains += strMyTerrains;
                            strTerrains += "</div>";
                        }

                        // Determine Revealing Tech.
                        string strRevealed = "";
                        if (objTechnology["TechReveal"] != null)
                        {
                            strRevealed += "\n<h2>" + TXT_KEY_PEDIA_REVEAL_TECH_LABEL + "</h2>";
                            strRevealed += "<div class=\"infobox\">";
                            string strMyTitle = FindDescription(_lstTechnologies, "Technologies", objTechnology["TechReveal"].InnerText);
                            strRevealed += "<a href=\"" + objTechnology["TechReveal"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objTechnology["TechReveal"].InnerText + ".png\" /></a>";
                            strRevealed += "</div>";
                        }

                        // Determine Improved By.
                        string strImproved = "";
                        List<string> lstSeenImprovements = new List<string>();
                        foreach (string strImprovementFile in _lstImprovements)
                        {
                            XmlDocument objImprovementDoc = new XmlDocument();
                            objImprovementDoc.Load(strImprovementFile);

                            foreach (XmlNode objImprovement in objImprovementDoc.SelectNodes("/GameData/Improvement_ResourceTypes/Row[ResourceType = \"" + objTechnology["Type"].InnerText + "\"]"))
                            {
                                bool blnAddItem = true;
                                foreach (string strImprovedBy in lstSeenImprovements)
                                {
                                    if (strImprovedBy == objImprovement["ImprovementType"].InnerText)
                                    {
                                        blnAddItem = false;
                                        break;
                                    }
                                }
                                if (blnAddItem)
                                {
                                    lstSeenImprovements.Add(objImprovement["ImprovementType"].InnerText);
                                    string strMyTitle = FindDescription(_lstImprovements, "Improvements", objImprovement["ImprovementType"].InnerText);
                                    strImproved += "<a href=\"" + objImprovement["ImprovementType"].InnerText + ".aspx\" onmouseover=\"return tooltip('" + strMyTitle + "');\" onmouseout=\"return hideTip();\"><img src=\"/civilopediabe/images/small/" + objImprovement["ImprovementType"].InnerText + ".png\" /></a>";
                                }
                            }
                        }
                        if (strImproved != "")
                        {
                            string strMyImproved = strImproved;
                            strImproved = "<h2>" + TXT_KEY_PEDIA_IMPROVEMENTS_LABEL + "</h2>";
                            strImproved += "<div class=\"infobox\">";
                            strImproved += strMyImproved;
                            strImproved += "</div>";
                        }

                        string strOutput = strTemplate;
                        strOutput = strOutput.Replace("##TITLE##", strTitle);
                        strOutput = strOutput.Replace("##INFO##", strInfo);
                        strOutput = strOutput.Replace("##HELP##", strHelp);
                        strOutput = strOutput.Replace("##TYPE##", objTechnology["Type"].InnerText);
                        strOutput = strOutput.Replace("##YIELDS##", strYields);
                        strOutput = strOutput.Replace("##TERRAINS##", strTerrains);
                        strOutput = strOutput.Replace("##REVEALED##", strRevealed);
                        strOutput = strOutput.Replace("##IMPROVED##", strImproved);

                        // Create a GroupItem for this Tech.
                        GroupItem objItem = new GroupItem();
                        objItem.Key = objTechnology["Type"].InnerText;
                        objItem.Name = strTitle;

                        // Determine which Group the Resource belongs to based on its Type since this doesn't seem to be defined anywhere in the XML files.
                        string strGroupKey = objTechnology["ResourceClassType"].InnerText;

                        // If the Era already exists in the Group List, add this item to it, otherwise, create the new Group.
                        Group objGroup = new Group();
                        foreach (Group objCurrentGroup in lstGroups)
                        {
                            if (objCurrentGroup.Key == strGroupKey)
                            {
                                objGroup = objCurrentGroup;
                                break;
                            }
                        }
                        objGroup.GroupItems.Add(objItem);

                        _strXml += "\t\t<page>";
                        _strXml += "\t\t\t<name>" + strXmlTitle.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;") + "</name>";
                        _strXml += "\t\t\t<url>" + objTechnology["Type"].InnerText + "</url>";
                        _strXml += "\t\t</page>";

                        // Create the Image.
                        if (_strLanguage == "en_US")
                        {
                            CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 128);
                            CreateImage(objTechnology["Type"].InnerText, objTechnology["IconAtlas"].InnerText, objTechnology["PortraitIndex"].InnerText, 64);
                        }

                        File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, objTechnology["Type"].InnerText + ".aspx"), strOutput, Encoding.UTF8);
                    }
                }
            }

            // Write the Era information to the menu.
            string strMenu = "";
            string strMasterTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_DIPLOMACY_MASTER.master"));
            strMenu += "\n\t\t\t\t<a href=\"DIPLOMACY_HOME.aspx\"><div id=\"TERRAIN_HOME\" class=\"menuitem\">" + strHomeTitle + "</div></a>";
            foreach (Group objGroup in lstGroups)
            {
                strMenu += "\n\t\t\t<div id=\"GROUP_" + objGroup.Key + "\" class=\"menugroupcontainer\"><a href=\"javascript:togglediv('" + objGroup.Key + "_CONTENT');\"><div id=\"" + objGroup.Key + "\" class=\"menugroup\">" + objGroup.Name + "</div></a><div id=\"" + objGroup.Key + "_CONTENT\">";
                objGroup.Sort();
                foreach (GroupItem objItem in objGroup.GroupItems)
                {
                    strMenu += "\n\t\t\t\t<a href=\"" + objItem.Key + ".aspx\" onmouseover=\"return tooltip('<img src=\\'/civilopediabe/images/small/" + objItem.Key + ".png\\' />', true);\" onmouseout=\"return hideTip();\"><div id=\"" + objItem.Key + "\" class=\"menuitem\">" + objItem.Name + "</div></a>";
                }
                strMenu += "\n\t\t\t</div></div>";
            }

            string strMasterOutput = strMasterTeplate;
            strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##MENU##", strMenu);
            strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
            strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Diplomacy.master"), strMasterOutput, Encoding.UTF8);
        }

        /// <summary>
        /// Generate Home page.
        /// </summary>
        private void GenerateHome()
		{
			txtDebug.Text += "\r\nGenerating Home...";
			txtDebug.SelectionStart = txtDebug.TextLength;
			txtDebug.ScrollToCaret();
			Application.DoEvents();

			// Home Page.
			string strHomeTeplate = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_DEFAULT.aspx"));
			string strHomeTitle = GetString("TXT_KEY_PEDIA_HOME_PAGE_LABEL");
			string strHomeQuote = GetString("TXT_KEY_PEDIA_HOME_PAGE_BLURB_TEXT");
			string strHomeTitle2 = GetString("TXT_KEY_PEDIA_HOME_PAGE_HELP_LABEL");
			string strHomeOutput = strHomeTeplate;
			string strChanges = File.ReadAllText(Path.Combine(Application.StartupPath, "civchanges.txt"));
			strHomeOutput = strHomeOutput.Replace("##TITLE##", strHomeTitle);
			strHomeOutput = strHomeOutput.Replace("##QUOTE##", strHomeQuote);
			strHomeOutput = strHomeOutput.Replace("##TITLE2##", strHomeTitle2);
			strHomeOutput = strHomeOutput.Replace("##CHANGES##", strChanges);
			strHomeOutput = strHomeOutput.Replace("##WELCOME##", GetString("TXT_KEY_PEDIA_HOME_PAGE_HELP_TEXT"));

			File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "default.aspx"), strHomeOutput, Encoding.UTF8);

			string strMasterOutput = File.ReadAllText(Path.Combine(Application.StartupPath, "html", "TEMPLATE_DEFAULT_MASTER.master"));
			strMasterOutput = strMasterOutput.Replace("##TITLE##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##LANGUAGE##", _strLanguage.ToLower().Replace("_", "-"));
			strMasterOutput = strMasterOutput.Replace("##CATEGORY1##", TXT_KEY_PEDIA_CATEGORY_1_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY2##", TXT_KEY_PEDIA_CATEGORY_2_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY3##", TXT_KEY_PEDIA_CATEGORY_3_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY4##", TXT_KEY_PEDIA_CATEGORY_4_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY5##", TXT_KEY_PEDIA_CATEGORY_5_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY6##", TXT_KEY_PEDIA_CATEGORY_6_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY7##", TXT_KEY_PEDIA_CATEGORY_7_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY8##", TXT_KEY_PEDIA_CATEGORY_8_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY9##", TXT_KEY_PEDIA_CATEGORY_9_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY10##", TXT_KEY_PEDIA_CATEGORY_10_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY11##", TXT_KEY_PEDIA_CATEGORY_11_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY12##", TXT_KEY_PEDIA_CATEGORY_12_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY13##", TXT_KEY_PEDIA_CATEGORY_13_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY14##", TXT_KEY_PEDIA_CATEGORY_14_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY15##", TXT_KEY_PEDIA_CATEGORY_15_LABEL);
			strMasterOutput = strMasterOutput.Replace("##CATEGORY16##", TXT_KEY_PEDIA_CATEGORY_16_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY17##", TXT_KEY_PEDIA_CATEGORY_17_LABEL);
            strMasterOutput = strMasterOutput.Replace("##CATEGORY18##", TXT_KEY_PEDIA_CATEGORY_18_LABEL);

            File.WriteAllText(Path.Combine(Application.StartupPath, _strHtmlPath, "Home.master"), strMasterOutput, Encoding.UTF8);
		}
		#endregion
	}
}