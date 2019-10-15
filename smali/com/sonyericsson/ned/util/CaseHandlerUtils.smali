.class public abstract Lcom/sonyericsson/ned/util/CaseHandlerUtils;
.super Ljava/lang/Object;
.source "CaseHandlerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectWordCase(Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/Locale;)I
    .locals 7
    .param p0, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "upper":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "lower":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v3, v5

    .line 42
    :cond_1
    :goto_0
    return v3

    .line 34
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 39
    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    move v3, v5

    .line 42
    goto :goto_0
.end method

.method public static getWordCaseAtPosition(Lcom/sonyericsson/ned/model/CodePointString;ILjava/util/Locale;I)I
    .locals 7
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "position"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "initialCaseMode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 17
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    new-array v4, v6, [C

    invoke-static {p0, p1, v3, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordStart(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v2

    .line 18
    .local v2, "wordStart":I
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    new-array v4, v6, [C

    invoke-static {p0, v2, v3, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordEnd(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v1

    .line 19
    .local v1, "wordEnd":I
    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sonyericsson/ned/util/CaseHandlerUtils;->detectWordCase(Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/Locale;)I

    move-result v0

    .line 20
    .local v0, "wordCase":I
    if-ne v0, v5, :cond_0

    sub-int v3, v1, v2

    if-ne v3, v5, :cond_0

    if-eq p3, v5, :cond_0

    .line 22
    const/4 v0, 0x3

    .line 24
    :cond_0
    return v0
.end method
