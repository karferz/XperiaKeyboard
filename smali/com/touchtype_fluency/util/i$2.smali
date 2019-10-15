.class final Lcom/touchtype_fluency/util/i$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v0, "2"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v4

    const-string v2, "b"

    aput-object v2, v1, v5

    const-string v2, "c"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "3"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "d"

    aput-object v2, v1, v4

    const-string v2, "e"

    aput-object v2, v1, v5

    const-string v2, "f"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "4"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "g"

    aput-object v2, v1, v4

    const-string v2, "h"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "5"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "j"

    aput-object v2, v1, v4

    const-string v2, "k"

    aput-object v2, v1, v5

    const-string v2, "l"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "6"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "m"

    aput-object v2, v1, v4

    const-string v2, "n"

    aput-object v2, v1, v5

    const-string v2, "o"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "7"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v1, v4

    const-string v2, "q"

    aput-object v2, v1, v5

    const-string v2, "r"

    aput-object v2, v1, v6

    const-string v2, "s"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "8"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "t"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "9"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "w"

    aput-object v2, v1, v4

    const-string v2, "x"

    aput-object v2, v1, v5

    const-string v2, "y"

    aput-object v2, v1, v6

    const-string v2, "z"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "22"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ba"

    aput-object v2, v1, v4

    const-string v2, "ca"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "23"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ce"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "24"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "ai"

    aput-object v2, v1, v4

    const-string v2, "bi"

    aput-object v2, v1, v5

    const-string v2, "ci"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "26"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "an"

    aput-object v2, v1, v4

    const-string v2, "ao"

    aput-object v2, v1, v5

    const-string v2, "bo"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "28"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "bu"

    aput-object v2, v1, v4

    const-string v2, "cu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "32"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "da"

    aput-object v2, v1, v4

    const-string v2, "fa"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "33"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "de"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "34"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "di"

    aput-object v2, v1, v4

    const-string v2, "ei"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "36"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "en"

    aput-object v2, v1, v4

    const-string v2, "fo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "37"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "er"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "38"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "du"

    aput-object v2, v1, v4

    const-string v2, "fu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "42"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ga"

    aput-object v2, v1, v4

    const-string v2, "ha"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "43"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ge"

    aput-object v2, v1, v4

    const-string v2, "he"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "48"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gu"

    aput-object v2, v1, v4

    const-string v2, "hu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "52"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ka"

    aput-object v2, v1, v4

    const-string v2, "la"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "53"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ke"

    aput-object v2, v1, v4

    const-string v2, "le"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "54"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ji"

    aput-object v2, v1, v4

    const-string v2, "li"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "56"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "lo"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "58"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "ju"

    aput-object v2, v1, v4

    const-string v2, "ku"

    aput-object v2, v1, v5

    const-string v2, "lu"

    aput-object v2, v1, v6

    const-string v2, "lv"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "62"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ma"

    aput-object v2, v1, v4

    const-string v2, "na"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "63"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "me"

    aput-object v2, v1, v4

    const-string v2, "ne"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "64"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mi"

    aput-object v2, v1, v4

    const-string v2, "ni"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "66"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "mo"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "68"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "mu"

    aput-object v2, v1, v4

    const-string v2, "nu"

    aput-object v2, v1, v5

    const-string v2, "nv"

    aput-object v2, v1, v6

    const-string v2, "ou"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "72"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "pa"

    aput-object v2, v1, v4

    const-string v2, "sa"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "73"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "re"

    aput-object v2, v1, v4

    const-string v2, "se"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "74"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "pi"

    aput-object v2, v1, v4

    const-string v2, "qi"

    aput-object v2, v1, v5

    const-string v2, "ri"

    aput-object v2, v1, v6

    const-string v2, "si"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "76"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "po"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "78"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "pu"

    aput-object v2, v1, v4

    const-string v2, "qu"

    aput-object v2, v1, v5

    const-string v2, "ru"

    aput-object v2, v1, v6

    const-string v2, "su"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "82"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ta"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "83"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "te"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "84"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ti"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "88"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tu"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "92"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "wa"

    aput-object v2, v1, v4

    const-string v2, "ya"

    aput-object v2, v1, v5

    const-string v2, "za"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "93"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ye"

    aput-object v2, v1, v4

    const-string v2, "ze"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "94"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "xi"

    aput-object v2, v1, v4

    const-string v2, "yi"

    aput-object v2, v1, v5

    const-string v2, "zi"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "96"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "wo"

    aput-object v2, v1, v4

    const-string v2, "yo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "98"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "wu"

    aput-object v2, v1, v4

    const-string v2, "xu"

    aput-object v2, v1, v5

    const-string v2, "yu"

    aput-object v2, v1, v6

    const-string v2, "zu"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "224"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "bai"

    aput-object v2, v1, v4

    const-string v2, "cai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "226"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "ban"

    aput-object v2, v1, v4

    const-string v2, "bao"

    aput-object v2, v1, v5

    const-string v2, "can"

    aput-object v2, v1, v6

    const-string v2, "cao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "234"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "bei"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "236"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ben"

    aput-object v2, v1, v4

    const-string v2, "cen"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "242"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cha"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "243"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "bie"

    aput-object v2, v1, v4

    const-string v2, "che"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "244"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chi"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "246"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "bin"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "248"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chu"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "268"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cou"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "284"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "286"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cun"

    aput-object v2, v1, v4

    const-string v2, "cuo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "324"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "326"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "dan"

    aput-object v2, v1, v4

    const-string v2, "dao"

    aput-object v2, v1, v5

    const-string v2, "fan"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "334"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dei"

    aput-object v2, v1, v4

    const-string v2, "fei"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "336"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "den"

    aput-object v2, v1, v4

    const-string v2, "fen"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "342"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dia"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "343"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "die"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "348"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "diu"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "364"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "eng"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "368"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dou"

    aput-object v2, v1, v4

    const-string v2, "fou"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "384"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "386"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dun"

    aput-object v2, v1, v4

    const-string v2, "duo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "424"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gai"

    aput-object v2, v1, v4

    const-string v2, "hai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "426"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "gan"

    aput-object v2, v1, v4

    const-string v2, "gao"

    aput-object v2, v1, v5

    const-string v2, "han"

    aput-object v2, v1, v6

    const-string v2, "hao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "434"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gei"

    aput-object v2, v1, v4

    const-string v2, "hei"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "436"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gen"

    aput-object v2, v1, v4

    const-string v2, "hen"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "468"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gou"

    aput-object v2, v1, v4

    const-string v2, "hou"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "482"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gua"

    aput-object v2, v1, v4

    const-string v2, "hua"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "484"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gui"

    aput-object v2, v1, v4

    const-string v2, "hui"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "486"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "gun"

    aput-object v2, v1, v4

    const-string v2, "guo"

    aput-object v2, v1, v5

    const-string v2, "hun"

    aput-object v2, v1, v6

    const-string v2, "huo"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "524"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "kai"

    aput-object v2, v1, v4

    const-string v2, "lai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "526"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "kan"

    aput-object v2, v1, v4

    const-string v2, "kao"

    aput-object v2, v1, v5

    const-string v2, "lan"

    aput-object v2, v1, v6

    const-string v2, "lao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "534"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "lei"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "536"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ken"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "542"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jia"

    aput-object v2, v1, v4

    const-string v2, "lia"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "543"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jie"

    aput-object v2, v1, v4

    const-string v2, "lie"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "546"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jin"

    aput-object v2, v1, v4

    const-string v2, "lin"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "548"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jiu"

    aput-object v2, v1, v4

    const-string v2, "liu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "568"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "kou"

    aput-object v2, v1, v4

    const-string v2, "lou"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "582"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "kua"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "583"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jue"

    aput-object v2, v1, v4

    const-string v2, "lue"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "584"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "kui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "586"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "jun"

    aput-object v2, v1, v4

    const-string v2, "kun"

    aput-object v2, v1, v5

    const-string v2, "kuo"

    aput-object v2, v1, v6

    const-string v2, "lun"

    aput-object v2, v1, v7

    const-string v2, "luo"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "624"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mai"

    aput-object v2, v1, v4

    const-string v2, "nai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "626"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "man"

    aput-object v2, v1, v4

    const-string v2, "mao"

    aput-object v2, v1, v5

    const-string v2, "nan"

    aput-object v2, v1, v6

    const-string v2, "nao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "634"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mei"

    aput-object v2, v1, v4

    const-string v2, "nei"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "636"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "men"

    aput-object v2, v1, v4

    const-string v2, "nen"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "643"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mie"

    aput-object v2, v1, v4

    const-string v2, "nie"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "646"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "min"

    aput-object v2, v1, v4

    const-string v2, "nin"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "648"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "miu"

    aput-object v2, v1, v4

    const-string v2, "niu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "668"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mou"

    aput-object v2, v1, v4

    const-string v2, "nou"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "683"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "nue"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "686"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "nun"

    aput-object v2, v1, v4

    const-string v2, "nuo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "724"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "pai"

    aput-object v2, v1, v4

    const-string v2, "sai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "726"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pan"

    aput-object v2, v1, v4

    const-string v2, "pao"

    aput-object v2, v1, v5

    const-string v2, "ran"

    aput-object v2, v1, v6

    const-string v2, "rao"

    aput-object v2, v1, v7

    const-string v2, "san"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "sao"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "734"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pei"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "736"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pen"

    aput-object v2, v1, v4

    const-string v2, "ren"

    aput-object v2, v1, v5

    const-string v2, "sen"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "742"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "qia"

    aput-object v2, v1, v4

    const-string v2, "sha"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "743"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pie"

    aput-object v2, v1, v4

    const-string v2, "qie"

    aput-object v2, v1, v5

    const-string v2, "she"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "744"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shi"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "746"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "pin"

    aput-object v2, v1, v4

    const-string v2, "qin"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "748"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "qiu"

    aput-object v2, v1, v4

    const-string v2, "shu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "768"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pou"

    aput-object v2, v1, v4

    const-string v2, "rou"

    aput-object v2, v1, v5

    const-string v2, "sou"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "782"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "rua"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "783"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "que"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "784"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "rui"

    aput-object v2, v1, v4

    const-string v2, "sui"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "786"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "qun"

    aput-object v2, v1, v4

    const-string v2, "run"

    aput-object v2, v1, v5

    const-string v2, "ruo"

    aput-object v2, v1, v6

    const-string v2, "sun"

    aput-object v2, v1, v7

    const-string v2, "suo"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "824"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "826"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "tan"

    aput-object v2, v1, v4

    const-string v2, "tao"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "843"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tie"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "868"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tou"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "884"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "886"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "tun"

    aput-object v2, v1, v4

    const-string v2, "tuo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "924"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "wai"

    aput-object v2, v1, v4

    const-string v2, "zai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "926"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "wan"

    aput-object v2, v1, v4

    const-string v2, "yan"

    aput-object v2, v1, v5

    const-string v2, "yao"

    aput-object v2, v1, v6

    const-string v2, "zan"

    aput-object v2, v1, v7

    const-string v2, "zao"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "934"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "wei"

    aput-object v2, v1, v4

    const-string v2, "zei"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "936"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "wen"

    aput-object v2, v1, v4

    const-string v2, "zen"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "942"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xia"

    aput-object v2, v1, v4

    const-string v2, "zha"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "943"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xie"

    aput-object v2, v1, v4

    const-string v2, "zhe"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "944"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhi"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "946"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xin"

    aput-object v2, v1, v4

    const-string v2, "yin"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "948"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xiu"

    aput-object v2, v1, v4

    const-string v2, "zhu"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "968"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "you"

    aput-object v2, v1, v4

    const-string v2, "zou"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "983"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xue"

    aput-object v2, v1, v4

    const-string v2, "yue"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "984"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "986"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "xun"

    aput-object v2, v1, v4

    const-string v2, "yun"

    aput-object v2, v1, v5

    const-string v2, "zun"

    aput-object v2, v1, v6

    const-string v2, "zuo"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "2264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "bang"

    aput-object v2, v1, v4

    const-string v2, "cang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "2364"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "beng"

    aput-object v2, v1, v4

    const-string v2, "ceng"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "2424"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "2426"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "bian"

    aput-object v2, v1, v4

    const-string v2, "biao"

    aput-object v2, v1, v5

    const-string v2, "chan"

    aput-object v2, v1, v6

    const-string v2, "chao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "2436"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chen"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "2464"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "bing"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "2468"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chou"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "2482"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chua"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "2484"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "2486"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "chun"

    aput-object v2, v1, v4

    const-string v2, "chuo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "2664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "2826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cuan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "3264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dang"

    aput-object v2, v1, v4

    const-string v2, "fang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "3364"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "deng"

    aput-object v2, v1, v4

    const-string v2, "feng"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "3426"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dian"

    aput-object v2, v1, v4

    const-string v2, "diao"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "3464"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ding"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "3664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "3826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "duan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "4264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gang"

    aput-object v2, v1, v4

    const-string v2, "hang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "4364"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "geng"

    aput-object v2, v1, v4

    const-string v2, "heng"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "4664"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gong"

    aput-object v2, v1, v4

    const-string v2, "hong"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "4824"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "guai"

    aput-object v2, v1, v4

    const-string v2, "huai"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "4826"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "guan"

    aput-object v2, v1, v4

    const-string v2, "huan"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "5264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "kang"

    aput-object v2, v1, v4

    const-string v2, "lang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "5364"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "keng"

    aput-object v2, v1, v4

    const-string v2, "leng"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "5426"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "jian"

    aput-object v2, v1, v4

    const-string v2, "jiao"

    aput-object v2, v1, v5

    const-string v2, "lian"

    aput-object v2, v1, v6

    const-string v2, "liao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "5464"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jing"

    aput-object v2, v1, v4

    const-string v2, "ling"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "5664"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "kong"

    aput-object v2, v1, v4

    const-string v2, "long"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "5824"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "kuai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "5826"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "juan"

    aput-object v2, v1, v4

    const-string v2, "kuan"

    aput-object v2, v1, v5

    const-string v2, "luan"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "6264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mang"

    aput-object v2, v1, v4

    const-string v2, "nang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "6364"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "meng"

    aput-object v2, v1, v4

    const-string v2, "neng"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "6426"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "mian"

    aput-object v2, v1, v4

    const-string v2, "miao"

    aput-object v2, v1, v5

    const-string v2, "nian"

    aput-object v2, v1, v6

    const-string v2, "niao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "6464"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ming"

    aput-object v2, v1, v4

    const-string v2, "ning"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "6664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "nong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "6826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "nuan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "7264"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pang"

    aput-object v2, v1, v4

    const-string v2, "rang"

    aput-object v2, v1, v5

    const-string v2, "sang"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "7364"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "peng"

    aput-object v2, v1, v4

    const-string v2, "reng"

    aput-object v2, v1, v5

    const-string v2, "seng"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "7424"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "7426"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pian"

    aput-object v2, v1, v4

    const-string v2, "piao"

    aput-object v2, v1, v5

    const-string v2, "qian"

    aput-object v2, v1, v6

    const-string v2, "qiao"

    aput-object v2, v1, v7

    const-string v2, "shan"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "shao"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "7434"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shei"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "7436"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shen"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "7464"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ping"

    aput-object v2, v1, v4

    const-string v2, "qing"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "7468"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shou"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "7482"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shua"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "7484"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "7486"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "shun"

    aput-object v2, v1, v4

    const-string v2, "shuo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "7664"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "rong"

    aput-object v2, v1, v4

    const-string v2, "song"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "7826"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "quan"

    aput-object v2, v1, v4

    const-string v2, "ruan"

    aput-object v2, v1, v5

    const-string v2, "suan"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "8264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "8364"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "teng"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "8426"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "tian"

    aput-object v2, v1, v4

    const-string v2, "tiao"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "8464"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ting"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "8664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "8826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tuan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "9264"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "wang"

    aput-object v2, v1, v4

    const-string v2, "yang"

    aput-object v2, v1, v5

    const-string v2, "zang"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "9364"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "weng"

    aput-object v2, v1, v4

    const-string v2, "zeng"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "9424"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "9426"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "xian"

    aput-object v2, v1, v4

    const-string v2, "xiao"

    aput-object v2, v1, v5

    const-string v2, "zhan"

    aput-object v2, v1, v6

    const-string v2, "zhao"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "9436"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhen"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "9464"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xing"

    aput-object v2, v1, v4

    const-string v2, "ying"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "9468"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhou"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "9482"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhua"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "9484"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhui"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "9486"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "zhun"

    aput-object v2, v1, v4

    const-string v2, "zhuo"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "9664"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "yong"

    aput-object v2, v1, v4

    const-string v2, "zong"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "9826"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "xuan"

    aput-object v2, v1, v4

    const-string v2, "yuan"

    aput-object v2, v1, v5

    const-string v2, "zuan"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "24264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "24364"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cheng"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "24664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "24824"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chuai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "24826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chuan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "48264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "guang"

    aput-object v2, v1, v4

    const-string v2, "huang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "54264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "jiang"

    aput-object v2, v1, v4

    const-string v2, "liang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "54664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "jiong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "58264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "kuang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "64264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "niang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "74264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "qiang"

    aput-object v2, v1, v4

    const-string v2, "shang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "74364"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "sheng"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "74664"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "qiong"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "74824"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shuai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "74826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shuan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "94264"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xiang"

    aput-object v2, v1, v4

    const-string v2, "zhang"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "94364"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zheng"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "94664"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "xiong"

    aput-object v2, v1, v4

    const-string v2, "zhong"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "94824"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhuai"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "94826"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhuan"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "248264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chuang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "748264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "shuang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "948264"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "zhuang"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/util/i$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method
