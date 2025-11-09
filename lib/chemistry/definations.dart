import 'package:flutter/material.dart';

class ChemistryDefinitionsScreen extends StatelessWidget {
  ChemistryDefinitionsScreen({super.key});

  final List<Map<String, String>> definitions = [
    {
      "term": "Chemistry",
      "definition": "The branch of science that studies the composition, structure, properties, and changes of matter.",
      "urdu": "سائنس کی وہ شاخ جو مادے کی ساخت، ترکیب، خصوصیات اور تبدیلیوں کا مطالعہ کرتی ہے۔",
      "example": "Chemistry helps us understand how water forms from hydrogen and oxygen."
    },
    {
      "term": "Matter",
      "definition": "Anything that has mass and occupies space.",
      "urdu": "ہر وہ چیز جس کا وزن ہو اور جو جگہ گھیرے۔",
      "example": "Air, water, and wood are all matter."
    },
    {
      "term": "Atom",
      "definition": "The smallest particle of an element that can take part in a chemical reaction.",
      "urdu": "کسی عنصر کا سب سے چھوٹا ذرہ جو کیمیائی عمل میں حصہ لے سکتا ہے۔",
      "example": "A hydrogen atom (H) combines with oxygen to form water."
    },
    {
      "term": "Element",
      "definition": "A pure substance made up of only one kind of atom.",
      "urdu": "خالص مادہ جو صرف ایک ہی قسم کے ایٹم پر مشتمل ہو۔",
      "example": "Oxygen (O₂), Hydrogen (H₂), Iron (Fe)."
    },
    {
      "term": "Compound",
      "definition": "A substance formed when two or more elements combine chemically in fixed proportions.",
      "urdu": "وہ مادہ جو دو یا زیادہ عناصر کے کیمیائی ملاپ سے بنتا ہے۔",
      "example": "Water (H₂O) is a compound of hydrogen and oxygen."
    },
    {
      "term": "Mixture",
      "definition": "A combination of two or more substances that are not chemically combined.",
      "urdu": "دو یا زیادہ مادوں کا مجموعہ جو کیمیائی طور پر نہیں جڑے ہوتے۔",
      "example": "Air is a mixture of gases like oxygen and nitrogen."
    },
    {
      "term": "Molecule",
      "definition": "Two or more atoms bonded together chemically.",
      "urdu": "دو یا زیادہ ایٹم جو کیمیائی طور پر جڑے ہوں۔",
      "example": "O₂ (oxygen molecule), H₂O (water molecule)."
    },
    {
      "term": "Ion",
      "definition": "An atom or group of atoms that carries an electric charge.",
      "urdu": "ایٹم یا ایٹموں کا گروہ جس پر برقی چارج ہوتا ہے۔",
      "example": "Na⁺ (sodium ion), Cl⁻ (chloride ion)."
    },
    {
      "term": "Cation",
      "definition": "A positively charged ion formed by losing electrons.",
      "urdu": "وہ آئن جس پر مثبت چارج ہو اور جو الیکٹران کھو دیتا ہے۔",
      "example": "Na⁺, Ca²⁺"
    },
    {
      "term": "Anion",
      "definition": "A negatively charged ion formed by gaining electrons.",
      "urdu": "وہ آئن جس پر منفی چارج ہو اور جو الیکٹران حاصل کرے۔",
      "example": "Cl⁻, O²⁻"
    },
    {
      "term": "Atomic Number",
      "definition": "The number of protons in the nucleus of an atom.",
      "urdu": "کسی ایٹم کے مرکزے میں پروٹانوں کی تعداد۔",
      "example": "Hydrogen has atomic number 1."
    },
    {
      "term": "Mass Number",
      "definition": "The total number of protons and neutrons in an atom.",
      "urdu": "کسی ایٹم میں پروٹان اور نیوٹران کی کل تعداد۔",
      "example": "Carbon has a mass number of 12."
    },
    {
      "term": "Isotopes",
      "definition": "Atoms of the same element with the same atomic number but different mass numbers.",
      "urdu": "ایک ہی عنصر کے ایسے ایٹم جن کا ایٹمی نمبر ایک جیسا مگر کمیتی نمبر مختلف ہو۔",
      "example": "Carbon-12 and Carbon-14."
    },
    {
      "term": "Valency",
      "definition": "The combining capacity of an element.",
      "urdu": "کسی عنصر کی ملاپ کرنے کی صلاحیت۔",
      "example": "Valency of hydrogen is 1, oxygen is 2."
    },
    {
      "term": "Chemical Bond",
      "definition": "The force that holds atoms together in a compound.",
      "urdu": "وہ قوت جو ایٹموں کو ایک مرکب میں جوڑے رکھتی ہے۔",
      "example": "H–O–H bonds in water."
    },
    {
      "term": "Ionic Bond",
      "definition": "A bond formed by the transfer of electrons from one atom to another.",
      "urdu": "وہ بندش جو ایک ایٹم سے دوسرے ایٹم کو الیکٹران منتقل کرنے سے بنتی ہے۔",
      "example": "NaCl (sodium chloride)."
    },
    {
      "term": "Covalent Bond",
      "definition": "A bond formed by the sharing of electrons between atoms.",
      "urdu": "وہ بندش جو ایٹموں کے درمیان الیکٹران بانٹنے سے بنتی ہے۔",
      "example": "H₂, O₂, H₂O."
    },
    {
      "term": "Physical Change",
      "definition": "A change that does not produce a new substance.",
      "urdu": "ایسی تبدیلی جس میں نیا مادہ پیدا نہیں ہوتا۔",
      "example": "Ice melting into water."
    },
    {
      "term": "Chemical Change",
      "definition": "A change that produces a new substance.",
      "urdu": "ایسی تبدیلی جس میں نیا مادہ بنتا ہے۔",
      "example": "Burning of paper or rusting of iron."
    },
    {
      "term": "Acid",
      "definition": "A substance that produces hydrogen ions (H⁺) in water.",
      "urdu": "وہ مادہ جو پانی میں ہائیڈروجن آئن پیدا کرے۔",
      "example": "HCl (Hydrochloric acid)."
    },
    {
      "term": "Base",
      "definition": "A substance that produces hydroxide ions (OH⁻) in water.",
      "urdu": "وہ مادہ جو پانی میں ہائیڈرو آکسائیڈ آئن پیدا کرے۔",
      "example": "NaOH (Sodium hydroxide)."
    },
    {
      "term": "Salt",
      "definition": "A compound formed when an acid reacts with a base.",
      "urdu": "وہ مرکب جو تیزاب اور اساس کے ردعمل سے بنتا ہے۔",
      "example": "NaCl is formed from HCl and NaOH."
    },
    {
      "term": "pH Scale",
      "definition": "A scale used to measure how acidic or basic a solution is (0–14).",
      "urdu": "وہ پیمانہ جو محلول کی تیزابیت یا اساسیت ناپنے کے لیے استعمال ہوتا ہے۔",
      "example": "pH of water is 7 (neutral)."
    },
    {
      "term": "Periodic Table",
      "definition": "A table that arranges elements according to atomic number and properties.",
      "urdu": "ایک جدول جو عناصر کو ان کے ایٹمی نمبر اور خصوصیات کے لحاظ سے ترتیب دیتا ہے۔",
      "example": "Mendeleev created the first periodic table."
    },
    {
      "term": "Mole",
      "definition": "The amount of a substance containing 6.022×10²³ particles.",
      "urdu": "وہ مقدار جس میں 6.022×10²³ ذرات ہوں۔",
      "example": "1 mole of water = 6.022×10²³ molecules of H₂O."
    },
      {
        "term": "Atomic Mass",
        "definition": "The average mass of all the isotopes of an element.",
        "urdu": "کسی عنصر کے تمام آئسوٹوپس کے اوسط کمیتی وزن کو ایٹمی کمیت کہتے ہیں۔",
        "example": "The atomic mass of chlorine is 35.5 u."
      },
      {
        "term": "Molar Mass",
        "definition": "The mass of one mole of a substance, expressed in grams per mole (g/mol).",
        "urdu": "کسی مادے کے ایک مول کا وزن، گرام فی مول میں ظاہر کیا جاتا ہے۔",
        "example": "Molar mass of water (H₂O) = 18 g/mol."
      },
      {
        "term": "Avogadro’s Number",
        "definition": "The number of atoms, ions, or molecules in one mole of a substance.",
        "urdu": "ایک مول میں موجود ایٹم، آئن یا سالمات کی تعداد۔",
        "example": "1 mole = 6.022 × 10²³ particles."
      },
      {
        "term": "Law of Conservation of Mass",
        "definition": "Mass is neither created nor destroyed in a chemical reaction.",
        "urdu": "کسی کیمیائی عمل میں کمیت نہ پیدا ہوتی ہے نہ ختم ہوتی ہے۔",
        "example": "Total mass of reactants = total mass of products."
      },
      {
        "term": "Chemical Reaction",
        "definition": "A process in which one or more substances change into new substances.",
        "urdu": "وہ عمل جس میں ایک یا زیادہ مادے نئے مادوں میں تبدیل ہو جائیں۔",
        "example": "H₂ + O₂ → H₂O"
      },
      {
        "term": "Reactants",
        "definition": "Substances that take part in a chemical reaction.",
        "urdu": "وہ مادے جو کیمیائی عمل میں حصہ لیتے ہیں۔",
        "example": "In H₂ + O₂ → H₂O, H₂ and O₂ are reactants."
      },
      {
        "term": "Products",
        "definition": "Substances formed as a result of a chemical reaction.",
        "urdu": "وہ مادے جو کیمیائی عمل کے نتیجے میں بنتے ہیں۔",
        "example": "In H₂ + O₂ → H₂O, water (H₂O) is the product."
      },
      {
        "term": "Catalyst",
        "definition": "A substance that speeds up a chemical reaction without being used up.",
        "urdu": "وہ مادہ جو کیمیائی عمل کی رفتار بڑھاتا ہے مگر خود استعمال نہیں ہوتا۔",
        "example": "Enzymes act as catalysts in our body."
      },
      {
        "term": "Oxidation",
        "definition": "The process in which a substance gains oxygen or loses electrons.",
        "urdu": "وہ عمل جس میں کوئی مادہ آکسیجن حاصل کرے یا الیکٹران کھو دے۔",
        "example": "Rusting of iron is oxidation."
      },
      {
        "term": "Reduction",
        "definition": "The process in which a substance loses oxygen or gains electrons.",
        "urdu": "وہ عمل جس میں کوئی مادہ آکسیجن کھو دے یا الیکٹران حاصل کرے۔",
        "example": "CuO + H₂ → Cu + H₂O (Copper is reduced)."
      },
      {
        "term": "Oxidation Number",
        "definition": "The apparent charge on an atom in a compound.",
        "urdu": "کسی مرکب میں ایٹم پر ظاہر ہونے والا فرضی چارج۔",
        "example": "Oxidation number of Na in NaCl is +1."
      },
      {
        "term": "Acidic Solution",
        "definition": "A solution with pH less than 7.",
        "urdu": "ایسا محلول جس کا pH سات سے کم ہو۔",
        "example": "Lemon juice and vinegar are acidic."
      },
      {
        "term": "Basic (Alkaline) Solution",
        "definition": "A solution with pH greater than 7.",
        "urdu": "ایسا محلول جس کا pH سات سے زیادہ ہو۔",
        "example": "Soap water is basic."
      },
      {
        "term": "Neutral Solution",
        "definition": "A solution with pH equal to 7.",
        "urdu": "ایسا محلول جس کا pH بالکل 7 ہو۔",
        "example": "Pure water is a neutral solution."
      },
      {
        "term": "Endothermic Reaction",
        "definition": "A reaction that absorbs heat from surroundings.",
        "urdu": "وہ ردعمل جو حرارت جذب کرے۔",
        "example": "Photosynthesis is an endothermic reaction."
      },
      {
        "term": "Exothermic Reaction",
        "definition": "A reaction that releases heat.",
        "urdu": "وہ ردعمل جو حرارت خارج کرے۔",
        "example": "Burning of coal is an exothermic reaction."
      },
      {
        "term": "Solution",
        "definition": "A homogeneous mixture of two or more substances.",
        "urdu": "دو یا زیادہ مادوں کا یکساں آمیزہ۔",
        "example": "Salt dissolved in water forms a solution."
      },
      {
        "term": "Solvent",
        "definition": "The substance that dissolves another substance.",
        "urdu": "وہ مادہ جو کسی دوسرے مادے کو گھلاتا ہے۔",
        "example": "Water is a universal solvent."
      },
      {
        "term": "Solute",
        "definition": "The substance that is dissolved in a solvent.",
        "urdu": "وہ مادہ جو سالوینٹ میں گھل جائے۔",
        "example": "In salt water, salt is the solute."
      },
      {
        "term": "Concentration",
        "definition": "The amount of solute present in a given amount of solution.",
        "urdu": "کسی محلول میں موجود محلول شدہ مادے کی مقدار۔",
        "example": "Strong tea has a high concentration of tea leaves."
      },
      {
        "term": "Distillation",
        "definition": "A process used to separate liquids based on their boiling points.",
        "urdu": "ایسا عمل جس میں مختلف ابال نقطے رکھنے والے مائعات کو الگ کیا جاتا ہے۔",
        "example": "Distillation is used to purify water."
      },
      {
        "term": "Evaporation",
        "definition": "The process of converting a liquid into vapor without boiling.",
        "urdu": "وہ عمل جس میں مائع بغیر اُبالے بخارات میں تبدیل ہو جائے۔",
        "example": "Drying of wet clothes."
      },
      {
        "term": "Sublimation",
        "definition": "The process in which a solid changes directly into gas without becoming liquid.",
        "urdu": "وہ عمل جس میں ٹھوس براہِ راست گیس میں تبدیل ہو جائے۔",
        "example": "Camphor or iodine undergo sublimation."
      },
      {
        "term": "Condensation",
        "definition": "The process of changing vapor into liquid.",
        "urdu": "وہ عمل جس میں بھاپ یا بخارات مائع میں تبدیل ہو جائیں۔",
        "example": "Formation of water droplets on a cold bottle."
      },
      {
        "term": "Precipitate",
        "definition": "A solid formed in a chemical reaction from two solutions.",
        "urdu": "وہ ٹھوس مادہ جو دو محلولوں کے ردعمل سے بنتا ہے۔",
        "example": "When NaCl and AgNO₃ react, a white precipitate of AgCl forms."
      },

      {
        "term": "Electrolysis",
        "definition": "The process of breaking down a compound using electric current.",
        "urdu": "کسی مرکب کو برقی رو کے ذریعے توڑنے کا عمل۔",
        "example": "Electrolysis of water produces hydrogen and oxygen gases."
      },
    {
      "term": "Electrolyte",
      "definition": "A substance that conducts electricity when dissolved in water or molten state.",
      "urdu": "وہ مادہ جو پانی میں گھلنے یا پگھلنے پر بجلی گزارے۔",
      "example": "NaCl solution is an electrolyte."
    },
    {
      "term": "Non-electrolyte",
      "definition": "A substance that does not conduct electricity when dissolved in water.",
      "urdu": "وہ مادہ جو پانی میں گھلنے پر بجلی نہ گزارے۔",
      "example": "Sugar solution is a non-electrolyte."
    },
    {
      "term": "Ionization Energy",
      "definition": "The energy required to remove an electron from an atom in the gaseous state.",
      "urdu": "گیس کی حالت میں ایٹم سے ایک الیکٹران نکالنے کے لیے درکار توانائی۔",
      "example": "Helium has high ionization energy."
    },
    {
      "term": "Electron Affinity",
      "definition": "The energy released when an electron is added to a neutral atom.",
      "urdu": "وہ توانائی جو کسی غیر چارج شدہ ایٹم میں الیکٹران شامل کرنے سے خارج ہوتی ہے۔",
      "example": "Chlorine has high electron affinity."
    },
    {
      "term": "Electronegativity",
      "definition": "The tendency of an atom to attract electrons towards itself in a chemical bond.",
      "urdu": "کسی ایٹم کی صلاحیت کہ وہ کیمیائی بندش میں الیکٹرانوں کو اپنی طرف کھینچے۔",
      "example": "Fluorine is the most electronegative element."
    },
    {
      "term": "Atomic Radius",
      "definition": "The distance from the nucleus to the outermost electron of an atom.",
      "urdu": "ایٹم کے مرکزے سے بیرونی الیکٹران تک کا فاصلہ۔",
      "example": "Sodium has a larger atomic radius than chlorine."
    },
    {
      "term": "Covalent Radius",
      "definition": "Half the distance between two nuclei of identical atoms bonded covalently.",
      "urdu": "دو یکساں ایٹموں کے مرکزوں کے درمیان فاصلے کا آدھا حصہ جو کوویلنٹ بند سے جڑے ہوں۔",
      "example": "H–H bond length is 0.74 Å, so covalent radius of hydrogen = 0.37 Å."
    },
    {
      "term": "Metallic Character",
      "definition": "The tendency of an element to lose electrons and form positive ions.",
      "urdu": "کسی عنصر کا الیکٹران کھو کر مثبت آئن بنانے کا رجحان۔",
      "example": "Sodium shows strong metallic character."
    },
    {
      "term": "Non-metallic Character",
      "definition": "The tendency of an element to gain electrons and form negative ions.",
      "urdu": "کسی عنصر کا الیکٹران حاصل کر کے منفی آئن بنانے کا رجحان۔",
      "example": "Chlorine has a strong non-metallic character."
    },
    {
      "term": "Periodic Law",
      "definition": "The properties of elements are periodic functions of their atomic numbers.",
      "urdu": "عناصر کی خصوصیات ان کے ایٹمی نمبروں کی پیریاڈک فنکشن ہوتی ہیں۔",
      "example": "Elements with similar properties occur at regular intervals in the periodic table."
    },
    {
      "term": "Period",
      "definition": "A horizontal row in the periodic table.",
      "urdu": "دوری جدول کی افقی قطار۔",
      "example": "Sodium and magnesium belong to period 3."
    },
    {
      "term": "Group (Family)",
      "definition": "A vertical column in the periodic table containing elements with similar properties.",
      "urdu": "دوری جدول کا عمودی کالم جس میں مشابہ خصوصیات والے عناصر ہوتے ہیں۔",
      "example": "Group 1 elements are alkali metals."
    },
    {
      "term": "Transition Elements",
      "definition": "Elements in the middle of the periodic table having partially filled d-orbitals.",
      "urdu": "وہ عناصر جو دوری جدول کے درمیانی حصے میں ہوتے ہیں اور جن کے d مدار جزوی طور پر بھرے ہوں۔",
      "example": "Iron (Fe), Copper (Cu), Nickel (Ni)."
    },
    {
      "term": "Atomic Orbital",
      "definition": "The region around the nucleus where the probability of finding an electron is maximum.",
      "urdu": "مرکزے کے گرد وہ علاقہ جہاں الیکٹران کے پائے جانے کا امکان سب سے زیادہ ہو۔",
      "example": "The 1s orbital in hydrogen."
    },
    {
      "term": "Quantum Number",
      "definition": "A set of four numbers used to describe the position and energy of an electron.",
      "urdu": "چار نمبروں کا مجموعہ جو الیکٹران کی پوزیشن اور توانائی ظاہر کرتا ہے۔",
      "example": "Principal quantum number (n = 2) indicates 2nd energy level."
    },
    {
      "term": "Orbital Diagram",
      "definition": "A representation showing how electrons are distributed in orbitals.",
      "urdu": "ایک خاکہ جو ظاہر کرتا ہے کہ الیکٹران مختلف مداروں میں کیسے تقسیم ہیں۔",
      "example": "1s² 2s² 2p⁶ shows electron configuration of neon."
    },
    {
      "term": "Chemical Equation",
      "definition": "A symbolic representation of a chemical reaction.",
      "urdu": "کسی کیمیائی عمل کو علامتوں میں ظاہر کرنا۔",
      "example": "Zn + H₂SO₄ → ZnSO₄ + H₂↑"
    },
    {
      "term": "Balanced Equation",
      "definition": "A chemical equation having equal number of atoms on both sides.",
      "urdu": "وہ مساوات جس کے دونوں اطراف ایٹموں کی تعداد برابر ہو۔",
      "example": "2H₂ + O₂ → 2H₂O"
    },
    {
      "term": "Law of Constant Composition",
      "definition": "A given compound always contains the same elements in the same ratio by mass.",
      "urdu": "ہر مرکب میں عناصر ایک ہی تناسب میں موجود ہوتے ہیں۔",
      "example": "Water (H₂O) always contains hydrogen and oxygen in a 1:8 ratio by mass."
    },
    {
      "term": "Empirical Formula",
      "definition": "The simplest whole-number ratio of atoms in a compound.",
      "urdu": "کسی مرکب میں ایٹموں کے سب سے سادہ عددی تناسب کو ظاہر کرتی ہے۔",
      "example": "Glucose (C₆H₁₂O₆) → CH₂O (empirical formula)."
    },
    {
      "term": "Molecular Formula",
      "definition": "Shows the actual number of atoms of each element in a molecule.",
      "urdu": "کسی سالمے میں ہر عنصر کے ایٹموں کی اصل تعداد ظاہر کرتی ہے۔",
      "example": "Molecular formula of glucose is C₆H₁₂O₆."
    },
    {
      "term": "Stoichiometry",
      "definition": "The quantitative relationship between reactants and products in a chemical reaction.",
      "urdu": "کیمیائی ردعمل میں مادوں کے مقداری تعلقات کا مطالعہ۔",
      "example": "2H₂ + O₂ → 2H₂O shows 2 moles of H₂ produce 2 moles of water."
    },
    {
      "term": "Limiting Reactant",
      "definition": "The reactant that gets completely used up first in a chemical reaction.",
      "urdu": "وہ مادہ جو کیمیائی عمل میں سب سے پہلے ختم ہو جائے۔",
      "example": "In H₂ + Cl₂ → 2HCl, if H₂ is less, it’s the limiting reactant."
    },
    {
      "term": "Yield",
      "definition": "The amount of product obtained from a chemical reaction.",
      "urdu": "کسی کیمیائی عمل سے حاصل ہونے والے پیداوار کی مقدار۔",
      "example": "80% yield means only 80% of expected product was obtained."
    },

    {
      "term": "Atomic Theory",
      "definition": "A theory that all matter is made up of small indivisible particles called atoms.",
      "urdu": "یہ نظریہ کہ تمام مادہ چھوٹے ناقابلِ تقسیم ذرات یعنی ایٹموں سے مل کر بنا ہے۔",
      "example": "Dalton proposed the atomic theory in 1808."
    },
    {
      "term": "Molarity (M)",
      "definition": "The number of moles of solute dissolved in one liter of solution.",
      "urdu": "ایک لیٹر محلول میں موجود محلول شدہ مادے کے مولز کی تعداد۔",
      "example": "1 M NaCl solution contains 1 mole of NaCl in 1 liter of water."
    },
    {
      "term": "Molality (m)",
      "definition": "The number of moles of solute per kilogram of solvent.",
      "urdu": "ایک کلوگرام سالوینٹ میں موجود محلول شدہ مادے کے مولز کی تعداد۔",
      "example": "If 1 mole of sugar is dissolved in 1 kg of water, it’s 1 molal."
    },
    {
      "term": "Normality (N)",
      "definition": "The number of gram equivalents of solute per liter of solution.",
      "urdu": "ایک لیٹر محلول میں موجود گرام مساوی محلول شدہ مادے کی تعداد۔",
      "example": "1N H₂SO₄ contains 1 equivalent of H₂SO₄ per liter."
    },
    {
      "term": "Solubility",
      "definition": "The maximum amount of solute that can dissolve in a given amount of solvent at a specific temperature.",
      "urdu": "کسی خاص درجہ حرارت پر سالوینٹ میں گھلنے والے محلول شدہ مادے کی زیادہ سے زیادہ مقدار۔",
      "example": "Solubility of salt increases with temperature."
    },
    {
      "term": "Diffusion",
      "definition": "The movement of particles from higher concentration to lower concentration.",
      "urdu": "ذرات کی حرکت زیادہ ارتکاز والے حصے سے کم ارتکاز والے حصے کی طرف۔",
      "example": "Smell of perfume spreads through the room by diffusion."
    },
    {
      "term": "Effusion",
      "definition": "The process by which gas particles pass through a tiny hole without collisions.",
      "urdu": "گیس کے ذرات کا ایک چھوٹے سوراخ سے بغیر ٹکرائے گزرنا۔",
      "example": "Helium escaping slowly from a balloon."
    },
    {
      "term": "Osmosis",
      "definition": "The movement of solvent molecules through a semipermeable membrane from dilute to concentrated solution.",
      "urdu": "نیم جھلی کے ذریعے محلل کے کم ارتکاز سے زیادہ ارتکاز والے حصے کی طرف حرکت۔",
      "example": "Water entering plant roots by osmosis."
    },
    {
      "term": "Osmotic Pressure",
      "definition": "The pressure required to stop osmosis.",
      "urdu": "وہ دباؤ جو آسموسس کو روکنے کے لیے درکار ہوتا ہے۔",
      "example": "Used to determine molar mass of solutes."
    },
    {
      "term": "Allotropy",
      "definition": "The existence of an element in two or more different forms in the same physical state.",
      "urdu": "کسی عنصر کا ایک ہی حالت میں دو یا زیادہ مختلف شکلوں میں موجود ہونا۔",
      "example": "Carbon exists as diamond and graphite."
    },
    {
      "term": "Alloy",
      "definition": "A homogeneous mixture of two or more metals or a metal and a non-metal.",
      "urdu": "دو یا زیادہ دھاتوں یا دھات و غیر دھات کا یکساں آمیزہ۔",
      "example": "Brass is an alloy of copper and zinc."
    },
    {
      "term": "Corrosion",
      "definition": "The gradual destruction of metals due to reaction with air, moisture, or chemicals.",
      "urdu": "دھاتوں کا ہوا، نمی یا کیمیکلز کے اثر سے بتدریج خراب ہونا۔",
      "example": "Rusting of iron."
    },
    {
      "term": "Rancidity",
      "definition": "The spoilage of fats and oils due to oxidation.",
      "urdu": "چکنائیوں یا تیل کا آکسیڈیشن کی وجہ سے خراب ہونا۔",
      "example": "Old butter develops an unpleasant smell due to rancidity."
    },
    {
      "term": "Radioactivity",
      "definition": "The spontaneous emission of radiation from unstable atomic nuclei.",
      "urdu": "غیر مستحکم ایٹمی مرکزوں سے خود بخود شعاعوں کا اخراج۔",
      "example": "Uranium and radium are radioactive elements."
    },
    {
      "term": "Alpha Particle (α)",
      "definition": "A positively charged particle consisting of two protons and two neutrons.",
      "urdu": "مثبت چارج والا ذرہ جو دو پروٹان اور دو نیوٹران پر مشتمل ہو۔",
      "example": "Emitted in the decay of uranium-238."
    },
    {
      "term": "Beta Particle (β)",
      "definition": "A high-speed electron emitted from a radioactive nucleus.",
      "urdu": "ریڈیو ایکٹیو مرکزے سے خارج ہونے والا تیز رفتار الیکٹران۔",
      "example": "Carbon-14 emits a beta particle when it decays."
    },
    {
      "term": "Gamma Rays (γ)",
      "definition": "High-energy electromagnetic waves emitted during radioactive decay.",
      "urdu": "ریڈیو ایکٹیویٹی کے دوران خارج ہونے والی اعلیٰ توانائی کی برقی مقناطیسی شعاعیں۔",
      "example": "Cobalt-60 emits gamma rays."
    },
    {
      "term": "Half-Life",
      "definition": "The time required for half of a radioactive substance to decay.",
      "urdu": "وہ وقت جس میں ریڈیو ایکٹیو مادے کا آدھا حصہ تحلیل ہو جائے۔",
      "example": "Half-life of carbon-14 is 5730 years."
    },
    {
      "term": "Isomerism",
      "definition": "The phenomenon in which compounds have the same molecular formula but different structures.",
      "urdu": "ایسا عمل جس میں مرکبات کا سالماتی فارمولا ایک جیسا لیکن ساخت مختلف ہو۔",
      "example": "Ethanol (C₂H₆O) and dimethyl ether (C₂H₆O) are isomers."
    },
    {
      "term": "Hydrocarbon",
      "definition": "A compound made up of only hydrogen and carbon atoms.",
      "urdu": "وہ مرکب جو صرف ہائیڈروجن اور کاربن پر مشتمل ہو۔",
      "example": "Methane (CH₄), Ethane (C₂H₆)."
    },
    {
      "term": "Saturated Hydrocarbon",
      "definition": "Hydrocarbons containing only single covalent bonds.",
      "urdu": "وہ ہائیڈروکاربن جن میں صرف سنگل بندشیں ہوں۔",
      "example": "Methane (CH₄) is a saturated hydrocarbon."
    },
    {
      "term": "Unsaturated Hydrocarbon",
      "definition": "Hydrocarbons containing one or more double or triple bonds.",
      "urdu": "وہ ہائیڈروکاربن جن میں ایک یا زیادہ ڈبل یا ٹرپل بندشیں ہوں۔",
      "example": "Ethene (C₂H₄), Ethyne (C₂H₂)."
    },
    {
      "term": "Functional Group",
      "definition": "An atom or group of atoms responsible for the characteristic properties of a compound.",
      "urdu": "وہ ایٹم یا ایٹموں کا گروہ جو مرکب کی خاص خصوصیات کا سبب بنتا ہے۔",
      "example": "–OH in alcohols, –COOH in acids."
    },
    {
      "term": "Polymer",
      "definition": "A large molecule formed by the joining of many small units (monomers).",
      "urdu": "چھوٹے سالمات (مونومرز) کے جڑنے سے بننے والا بڑا سالمہ۔",
      "example": "Polythene is a polymer of ethene."
    },
    {
      "term": "Photochemical Reaction",
      "definition": "A chemical reaction that occurs in the presence of light.",
      "urdu": "وہ کیمیائی عمل جو روشنی کی موجودگی میں ہوتا ہے۔",
      "example": "Photosynthesis in plants."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chemistry Definitions"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFB2FEFA), Color(0xFF0ED2F7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: definitions.length,
          itemBuilder: (context, index) {
            final item = definitions[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 8,
              margin: const EdgeInsets.symmetric(vertical: 10),
              shadowColor: Colors.tealAccent,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.white, Color(0xFFE0F7FA)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${index + 1}. ${item['term']}",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['definition']!,
                      style: const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item['urdu']!,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'NotoNastaliqUrdu',
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item['example']!,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
