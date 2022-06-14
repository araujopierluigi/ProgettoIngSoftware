import 'package:flutter_test/flutter_test.dart';
import 'package:code/spider.dart';

void main() {
  group("Test Spider", () {
    test("Controllo che il nome venga impostato correttamente", () {
      Spider spider = new Spider("Acanthoscurria Geniculata");
      expect(spider.name, "Acanthoscurria Geniculata");
    });
    test("Controllo che la descrizione ottenuta sia quella corretta", () {
      Spider spider = new Spider("Acanthoscurria Geniculata");
      String descrizione =
          "Il colore di fondo è un marrone molto scuro, quasi nero negli esemplari "
          "freschi di muta; sulle zampe sono alternate delle fasce di colore "
          "bianco crema, unite tra loro da sottili righe del medesimo colore; "
          "il bianco è presente anche alla base dei cheliceri. L\'aspetto "
          "generale è quello massiccio di un ragno terrestre, quindi con arti "
          "adatti alla vita da scavatore. Il maschio e la femmina adulti, per "
          "quanto riguarda la colorazione, non presentano differenze; dal punto "
          "di vista somatico, invece, è evidente nel maschio la presenza degli "
          "uncini sulle tibie e in generale la presenza di arti più slanciati, "
          "in proporzione al corpo, rispetto a quelli delle femmine.";
      expect(spider.descrizione(spider.name), descrizione);
    });
    test("Controllo che l\'allevamento ottenuto sia quello corretto", () {
      Spider spider = new Spider("Acanthoscurria Geniculata");
      String allevamento =
          "Per quanto riguarda l\'allevamento, essendo un ragno di taglia "
          "medio-grande sarà necessario un terrario di circa 35 x cm 25 cm x "
          "20 cm, allestito con un substrato di media profondità costituito da "
          "torba o vermiculite. Il substrato dovrebbe essere mantenuto umido ma "
          "non in modo eccessivo, poiché questo ragno preferisce avere a "
          "disposizione l\'acqua da bere, piuttosto che semplicemente un\'elevata "
          "umidità atmosferica.";
      expect(spider.allevamento(spider.name), allevamento);
    });
    test("Controllo che la descrizione ottenuta sia quella corretta", () {
      Spider spider = new Spider("Theraphosa Blondii");
      String descrizione =
          "Al genere Theraposa appartiene questa specie dalla taglia gigantesca: "
          "si tratta di un ragno massiccio dalla colorazione marrone scura, "
          "distribuita uniformemente su tutto il corpo. Questa specie è stata "
          "allungo nel Guinness dei primati come il ragno più grosso del mondo. "
          "Man mano che si avvicina il periodo della muta, la colorazione del ragno "
          "diventa sempre più chiara e rossiccia. Il maschio adulto non presenta"
          " gli uncini sotto le tibie; la colorazione generale è la stessa delle"
          " femmine, però sui femori delle zampe sono presenti delle leggere "
          "iridescenze color porpora.";
      expect(spider.descrizione(spider.name), descrizione);
    });
    test("Controllo che l\'allevamento ottenuto sia quello corretto", () {
      Spider spider = new Spider("Theraphosa Blondii");
      String allevamento =
          "Viste le dimensioni, questo ragno necessita di un terrario spazioso 40 cm"
          " x 30 cm x 20 cm circa arredato con un substrato di fondo molto umido, "
          "alto non più di qualche centimetro; un rifugio dentro il quale nascondersi"
          " è sempre molto gradito, così pure l\'acqua da bere. I ritmi di vita e le"
          " attività di questo animale sono molto legati alla temperatura alla quale"
          " viene mantenuto; di conseguenza si consiglia di non fare mai scendere la"
          " temperatura al di sotto dei 20 °C.";
      expect(spider.allevamento(spider.name), allevamento);
    });
    test("Controllo che la descrizione ottenuta sia quella corretta", () {
      Spider spider = new Spider("Grammostola Spatulata");
      String descrizione =
          "Questo ragno è interamente ricoperto da una fitta peluria di setae di "
          "media lunghezza, di colore marrone grigio argentato; i tarsi delle "
          "zampe sono neri e sulla patella e la tibia di ciascuna zampa sono "
          "presenti due leggere linee verticali di colore chiaro. La zona dell\'"
          "opistosoma dove si trovano i peli urticanti presenta una particolare "
          "lucentezza metallica. In alcuni esemplari, l\'intera colorazione del "
          "corpo può tendere a una sfumatura di colore rosa.";
      expect(spider.descrizione(spider.name), descrizione);
    });
    test("Controllo che l\'allevamento ottenuto sia quello corretto", () {
      Spider spider = new Spider("Grammostola Spatulata");
      String allevamento =
          "Specie facile da mantenere in un terrario per ragni terrestri con un "
          "substrato di fondo moderatamente umido, spesso pochi centimetri. Se viene"
          " messo a disposizione un rifugio, viene utilizzato volentieri; non si"
          " è mai vista questa specie scavare o modificare l'arredamento del "
          "terrario.";
      expect(spider.allevamento(spider.name), allevamento);
    });
    test("Controllo che la descrizione ottenuta sia quella corretta", () {
      Spider spider = new Spider("Haplopelma Lividus");
      String descrizione =
          "Le zampe, i pedipalpi e i cheliceri sono coperti da una cortissima "
          "peluria di colore blu violaceo intenso e brillante, che conferisce al "
          "ragno un aspetto vellutato e setoso; il carapace è di colore grigio "
          "argento con riflessi blu, mentre l\'opistosoma è di colore nero. Il "
          "maschio adulto, invece, è di colore grigio scuro, con lunghe e "
          "sottili linee chiare che percorrono le zampe longitudinalmente; al "
          "posto degli uncini, è dotato di due sporgenze corte, poste sul lato "
          "interno delle tibie.";
      expect(spider.descrizione(spider.name), descrizione);
    });
    test("Controllo che l\'allevamento ottenuto sia quello corretto", () {
      Spider spider = new Spider("Haplopelma Lividus");
      String allevamento =
          "Questo ragno, dall'eccezionale colorazione, necessita di un terrario "
          "provvisto di uno spesso substrato di fondo molto umido; essendo molto"
          " nervoso e mordace, deve essere trattato con la massima cautela, sono"
          " infatti tutte le conseguenze del suo morso: il veleno neurotossico "
          "causa forte dolore e bruciore; in seguito, si sviluppano crampi e "
          "dolori alle articolazioni che possono durare più di un mese.";
      expect(spider.allevamento(spider.name), allevamento);
    });
    test("Controllo che la descrizione ottenuta sia quella corretta", () {
      Spider spider = new Spider("Euathlus Auratum");
      String descrizione =
          "Il colore di fondo è nero, con numerosi peli lunghi di colore beige "
          "rossicci su zampe e opistosoma; sempre beige è il contorno del "
          "cefalotorace e i trocanteri; le patelle sono  invece di colore "
          "arancio vivo (comprese quelle dei pedipalpi).";
      expect(spider.descrizione(spider.name), descrizione);
    });
    test("Controllo che l\'allevamento ottenuto sia quello corretto", () {
      Spider spider = new Spider("Euathlus Auratum");
      String allevamento =
          "Per quanto riguarda l'allevamento, è sufficiente un terrario arredato "
          "con un substrato di fondo umido altro pochi centimetri, un "
          "contenitore per l'acqua e un rifugio. SI tratta di una specie docile "
          "e poco attiva, facile da alimentare e poco incline e morsicare.";
      expect(spider.allevamento(spider.name), allevamento);
    });
  });
}
