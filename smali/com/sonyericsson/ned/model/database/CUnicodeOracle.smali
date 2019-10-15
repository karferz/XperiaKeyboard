.class public Lcom/sonyericsson/ned/model/database/CUnicodeOracle;
.super Ljava/lang/Object;
.source "CUnicodeOracle.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/ICharset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/model/database/CUnicodeOracle$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isBengaliConsonant(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 41
    const/16 v0, 0x995

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9a8

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x9aa

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9b0

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x9b2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9b6

    if-lt p1, v0, :cond_2

    const/16 v0, 0x9b9

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x9dc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9dd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9df

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9ce

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDevanagariConsonant(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 47
    const/16 v0, 0x915

    if-lt p1, v0, :cond_0

    const/16 v0, 0x939

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x958

    if-lt p1, v0, :cond_2

    const/16 v0, 0x95f

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGujaratiConsonant(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 55
    const/16 v0, 0xa95

    if-lt p1, v0, :cond_0

    const/16 v0, 0xab9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatinConsonant(C)Z
    .locals 2
    .param p1, "letter"    # C

    .prologue
    const/4 v1, -0x1

    .line 63
    const v0, 0xff00

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const-string v0, "bcdfghjklmnpqrstvwxz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "BCDFGHJKLMNPQRSTVWXZ"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTamilConsonant(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 51
    const/16 v0, 0xb95

    if-lt p1, v0, :cond_0

    const/16 v0, 0xbb9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTeluguConsonant(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 59
    const/16 v0, 0xc15

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getJoiner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    const-string v2, ""

    .line 105
    :goto_0
    return-object v2

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 87
    .local v1, "last":C
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .local v0, "first":C
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isBengaliConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isBengaliConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string v2, "\u09cd"

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isDevanagariConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isDevanagariConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    const-string v2, "\u094d"

    goto :goto_0

    .line 98
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isTamilConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isTamilConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    const-string v2, "\u0bcd"

    goto :goto_0

    .line 100
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isTeluguConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isTeluguConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    const-string v2, "\u0c4d"

    goto :goto_0

    .line 102
    :cond_5
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isGujaratiConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isGujaratiConsonant(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    const-string v2, "\u0acd"

    goto :goto_0

    .line 105
    :cond_6
    const-string v2, ""

    goto :goto_0
.end method

.method public getScript(C)Ljava/lang/String;
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 111
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 112
    const-string v0, "latin-script"

    .line 124
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const/16 v0, 0x980

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9ff

    if-gt p1, v0, :cond_1

    .line 114
    const-string v0, "bengali-script"

    goto :goto_0

    .line 115
    :cond_1
    const/16 v0, 0x900

    if-lt p1, v0, :cond_2

    const/16 v0, 0x97f

    if-gt p1, v0, :cond_2

    .line 116
    const-string v0, "devanagari-script"

    goto :goto_0

    .line 117
    :cond_2
    const/16 v0, 0xb80

    if-lt p1, v0, :cond_3

    const/16 v0, 0xbff

    if-gt p1, v0, :cond_3

    .line 118
    const-string v0, "tamil-script"

    goto :goto_0

    .line 119
    :cond_3
    const/16 v0, 0xc00

    if-lt p1, v0, :cond_4

    const/16 v0, 0xc7f

    if-gt p1, v0, :cond_4

    .line 120
    const-string v0, "telugu-script"

    goto :goto_0

    .line 121
    :cond_4
    const/16 v0, 0xa80

    if-lt p1, v0, :cond_5

    const/16 v0, 0xaff

    if-gt p1, v0, :cond_5

    .line 122
    const-string v0, "gujarati-script"

    goto :goto_0

    .line 124
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsonant(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isBengaliConsonant(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isDevanagariConsonant(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isTamilConsonant(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isTeluguConsonant(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isGujaratiConsonant(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;->isLatinConsonant(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
