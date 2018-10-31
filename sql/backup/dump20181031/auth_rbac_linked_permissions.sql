-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: auth
-- ------------------------------------------------------
-- Server version	5.6.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rbac_linked_permissions`
--

DROP TABLE IF EXISTS `rbac_linked_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_linked_permissions` (
  `id` int(10) unsigned NOT NULL COMMENT 'Permission id',
  `linkedId` int(10) unsigned NOT NULL COMMENT 'Linked Permission id',
  PRIMARY KEY (`id`,`linkedId`),
  KEY `fk__rbac_linked_permissions__rbac_permissions1` (`id`),
  KEY `fk__rbac_linked_permissions__rbac_permissions2` (`linkedId`),
  CONSTRAINT `fk__rbac_linked_permissions__rbac_permissions1` FOREIGN KEY (`id`) REFERENCES `rbac_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk__rbac_linked_permissions__rbac_permissions2` FOREIGN KEY (`linkedId`) REFERENCES `rbac_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Permission - Linked Permission relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_linked_permissions`
--

LOCK TABLES `rbac_linked_permissions` WRITE;
/*!40000 ALTER TABLE `rbac_linked_permissions` DISABLE KEYS */;
INSERT INTO `rbac_linked_permissions` VALUES (192,21),(192,42),(192,43),(192,193),(192,196),(192,778),(192,779),(192,780),(192,781),(192,782),(192,783),(192,784),(192,785),(192,786),(192,787),(192,788),(192,789),(192,790),(192,791),(192,792),(192,793),(192,794),(192,795),(192,796),(192,835),(193,48),(193,194),(193,197),(194,1),(194,2),(194,11),(194,13),(194,14),(194,15),(194,16),(194,17),(194,18),(194,19),(194,20),(194,22),(194,23),(194,25),(194,26),(194,27),(194,28),(194,29),(194,30),(194,31),(194,32),(194,33),(194,34),(194,35),(194,36),(194,37),(194,38),(194,39),(194,40),(194,41),(194,44),(194,46),(194,47),(194,51),(194,195),(194,198),(194,632),(194,798),(195,3),(195,4),(195,5),(195,6),(195,24),(195,49),(195,199),(196,7),(196,200),(196,201),(196,226),(196,227),(196,230),(196,231),(196,233),(196,234),(196,235),(196,238),(196,239),(196,240),(196,241),(196,242),(196,243),(196,244),(196,245),(196,246),(196,247),(196,248),(196,249),(196,250),(196,251),(196,252),(196,253),(196,254),(196,255),(196,256),(196,257),(196,258),(196,259),(196,260),(196,261),(196,262),(196,264),(196,265),(196,266),(196,267),(196,268),(196,269),(196,270),(196,271),(196,272),(196,279),(196,280),(196,283),(196,287),(196,288),(196,289),(196,290),(196,291),(196,292),(196,293),(196,294),(196,295),(196,296),(196,297),(196,298),(196,299),(196,302),(196,303),(196,304),(196,305),(196,306),(196,307),(196,308),(196,309),(196,310),(196,313),(196,314),(196,319),(196,320),(196,321),(196,322),(196,323),(196,324),(196,325),(196,326),(196,327),(196,328),(196,329),(196,330),(196,331),(196,332),(196,333),(196,334),(196,335),(196,336),(196,337),(196,338),(196,339),(196,340),(196,341),(196,342),(196,343),(196,344),(196,345),(196,346),(196,347),(196,348),(196,349),(196,350),(196,351),(196,352),(196,353),(196,354),(196,355),(196,356),(196,357),(196,358),(196,359),(196,360),(196,361),(196,362),(196,363),(196,364),(196,365),(196,366),(196,373),(196,375),(196,400),(196,401),(196,402),(196,403),(196,404),(196,405),(196,406),(196,407),(196,417),(196,418),(196,419),(196,420),(196,421),(196,422),(196,423),(196,424),(196,425),(196,426),(196,427),(196,428),(196,429),(196,434),(196,435),(196,436),(196,437),(196,438),(196,439),(196,440),(196,441),(196,442),(196,443),(196,444),(196,445),(196,446),(196,447),(196,448),(196,449),(196,450),(196,451),(196,452),(196,453),(196,454),(196,455),(196,456),(196,457),(196,458),(196,459),(196,461),(196,463),(196,464),(196,465),(196,472),(196,474),(196,475),(196,476),(196,477),(196,478),(196,488),(196,489),(196,491),(196,492),(196,493),(196,495),(196,497),(196,498),(196,499),(196,500),(196,502),(196,503),(196,505),(196,508),(196,511),(196,513),(196,514),(196,516),(196,519),(196,522),(196,523),(196,526),(196,527),(196,529),(196,530),(196,533),(196,535),(196,536),(196,537),(196,538),(196,539),(196,540),(196,541),(196,556),(196,581),(196,582),(196,592),(196,593),(196,596),(196,602),(196,603),(196,604),(196,605),(196,606),(196,607),(196,608),(196,609),(196,610),(196,611),(196,612),(196,613),(196,614),(196,615),(196,616),(196,617),(196,618),(196,619),(196,620),(196,621),(196,622),(196,623),(196,624),(196,625),(196,626),(196,627),(196,628),(196,629),(196,630),(196,631),(196,633),(196,634),(196,635),(196,636),(196,637),(196,638),(196,639),(196,640),(196,641),(196,642),(196,643),(196,644),(196,645),(196,646),(196,647),(196,648),(196,649),(196,650),(196,651),(196,652),(196,653),(196,654),(196,655),(196,656),(196,657),(196,658),(196,659),(196,660),(196,661),(196,662),(196,663),(196,664),(196,665),(196,666),(196,667),(196,668),(196,669),(196,670),(196,671),(196,672),(196,673),(196,674),(196,675),(196,676),(196,677),(196,678),(196,679),(196,680),(196,681),(196,682),(196,683),(196,684),(196,685),(196,686),(196,687),(196,688),(196,689),(196,690),(196,691),(196,692),(196,693),(196,694),(196,695),(196,696),(196,697),(196,698),(196,699),(196,700),(196,701),(196,702),(196,703),(196,704),(196,705),(196,706),(196,707),(196,708),(196,709),(196,710),(196,711),(196,712),(196,713),(196,714),(196,715),(196,716),(196,717),(196,718),(196,719),(196,721),(196,722),(196,723),(196,724),(196,725),(196,726),(196,727),(196,728),(196,729),(196,730),(196,733),(196,734),(196,735),(196,736),(196,738),(196,739),(196,748),(196,753),(196,757),(196,773),(196,777),(196,836),(196,837),(196,838),(196,839),(196,840),(196,841),(196,843),(196,866),(196,867),(196,870),(196,871),(196,872),(196,873),(197,232),(197,236),(197,237),(197,273),(197,274),(197,275),(197,276),(197,277),(197,284),(197,285),(197,286),(197,301),(197,311),(197,387),(197,388),(197,389),(197,390),(197,391),(197,392),(197,393),(197,394),(197,395),(197,396),(197,397),(197,398),(197,399),(197,473),(197,479),(197,480),(197,481),(197,482),(197,485),(197,486),(197,487),(197,494),(197,501),(197,506),(197,509),(197,510),(197,517),(197,518),(197,521),(197,542),(197,543),(197,550),(197,558),(197,568),(197,571),(197,572),(197,573),(197,574),(197,575),(197,576),(197,577),(197,578),(197,579),(197,580),(197,583),(197,584),(197,585),(197,586),(197,587),(197,588),(197,589),(197,590),(197,591),(197,594),(197,595),(197,601),(197,743),(197,750),(197,758),(197,761),(197,762),(197,763),(197,764),(197,765),(197,766),(197,767),(197,768),(197,769),(197,770),(197,771),(197,772),(197,774),(197,856),(197,857),(197,858),(197,859),(197,860),(197,861),(197,862),(197,863),(197,864),(197,865),(198,218),(198,300),(198,312),(198,315),(198,316),(198,317),(198,318),(198,367),(198,368),(198,369),(198,370),(198,371),(198,372),(198,374),(198,376),(198,377),(198,408),(198,409),(198,410),(198,411),(198,412),(198,413),(198,414),(198,415),(198,416),(198,430),(198,431),(198,432),(198,433),(198,462),(198,466),(198,467),(198,468),(198,469),(198,470),(198,471),(198,483),(198,484),(198,490),(198,504),(198,512),(198,515),(198,520),(198,524),(198,528),(198,531),(198,532),(198,544),(198,545),(198,546),(198,547),(198,548),(198,549),(198,551),(198,552),(198,553),(198,554),(198,555),(198,557),(198,559),(198,560),(198,561),(198,562),(198,563),(198,564),(198,565),(198,566),(198,567),(198,569),(198,570),(198,597),(198,598),(198,599),(198,600),(198,737),(198,740),(198,741),(198,742),(198,744),(198,745),(198,746),(198,747),(198,749),(198,751),(198,752),(198,754),(198,755),(198,756),(198,759),(198,760),(198,855),(199,217),(199,221),(199,222),(199,223),(199,225),(199,263),(199,496),(199,507),(199,525),(199,534),(199,797);
/*!40000 ALTER TABLE `rbac_linked_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:09:30
