let titles_type = ["Survey", "Review", "Overview"];
let titles_model = ["Transformer"];
let titles_method = [];
let titles_keyword = ["Data", "Lake", "Multi-modal", "Multimodal", "Graph"];
let titles =  titles_model + titles_method + titles_type + titles_keyword;

let authors_array = ["Raul Castro Fernandez", "Erkang Zhu", "Ye Yuan", "Yunjun Gao", "Chuan Shi", "Alex Teodor Bogatu"];

let conferences = [
    // AI
    "AI", "TPAMI", "IJCV", "JMLR", 
    "AAAI", "IJCAI",
    // "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    
    // CV
    "ICCV", "CVPR",
    // "3DV", "ACCV", "ACM MM", "BMVC", "ECCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    
    // ML
    "NeurIPS", "ICML", 
    // "ACML", "AISTATS", "ECML", "ICLR", "ML4H", "NIPS", "UAI",
    
    // NLP
    "ACL", 
    // "AACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    
    // IR
    // "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC",

    // DM
    // "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDM", "ICDT", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "WSDM", "WWW", "EDBT", "CIDR",
    // DB conference
    "SIGMOD", "SIGKDD", "KDD", "ICDE", "VLDB", "SIGIR",
    // DB journal
    "TODS", "TOIS", "TKDE", "VLDBJ"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
