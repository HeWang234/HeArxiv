let titles_type = ["Survey", "Review", "Overview"];
let titles_model = ["Transformer"];
let titles_method = [];
let titles_keyword = ["Data", "Lake", "Multi-modal", "Multimodal", "Graph"];
let titles =  titles_model + titles_method + titles_type + titles_keyword;

let authors_array = ["Raul Castro Fernandez", "Erkang Zhu", "Ye Yuan", "Yunjun Gao", "Chuan Shi", "Alex Teodor Bogatu"];

let conferences = [
    // ------AI
    "AI", "TPAMI", "IJCV", "JMLR", 
    "AAAI", "IJCAI",
    // "AAMAS", "ACM MM", "ALT", "CEC", "FUZZ IEEE", "GECCO", "ICAPS", "ICCBR", "ICRA", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "TAAI",
    
    // CV
    "ICCV", "CVPR",
    // "ACM MM", "ECCV", "ICME", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    
    // ML
    "NeurIPS", "ICML", "ICLR",
    // "AISTATS", "ECML",  "ML4H", "NIPS",
    
    // NLP
    "ACL", 
    // "AACL", "CCL", "COLT", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    
    // IR
    // "ICMR", "ICTIR", "ISWC",

    // ------DB
    // DB conference
    "SIGMOD", "SIGKDD", "KDD", "ICDE", "VLDB", "SIGIR",
    // DB journal
    "TODS", "TOIS", "TKDE", "VLDBJ",
    // DM
    // "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDM", "ICDT", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "WSDM", "WWW", "EDBT", "CIDR",

    // Economic
    "WINE"
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
