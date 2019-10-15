.class public Lcom/sonyericsson/ned/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final NBR_CHARS_SIDE_OF_CURSOR:I = 0x2ee

.field public static final NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final NEW_LINE_STRING:Ljava/lang/String; = "\n"

.field public static final PERIOD:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final QUOTATION:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final QUOTATION_STRING:Ljava/lang/String; = "\""

.field public static final SPACE:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final SPACE_STRING:Ljava/lang/String; = " "


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 22
    const-string v0, ""

    .line 23
    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 27
    new-array v0, v1, [Lcom/sonyericsson/ned/model/CodePointString;

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 28
    const-string v0, " "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 30
    const-string v0, "-"

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    .line 32
    const-string v0, "\n"

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 34
    const-string v0, "."

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->PERIOD:Lcom/sonyericsson/ned/model/CodePointString;

    .line 36
    const-string v0, "\""

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/StringUtil;->QUOTATION:Lcom/sonyericsson/ned/model/CodePointString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalizeInitialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string p0, ""

    .line 137
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "first":C
    :cond_0
    :goto_0
    return-object p0

    .line 133
    .end local v0    # "first":C
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 134
    .restart local v0    # "first":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static charCount(Ljava/lang/String;C)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "character"    # C

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "occurences":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v0, v3, v2

    .line 46
    .local v0, "c":C
    if-ne v0, p1, :cond_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "c":C
    :cond_1
    return v1
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    const/4 v1, 0x1

    .line 70
    .local v1, "isEmpty":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "formatString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 76
    .end local v0    # "formatString":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_1
    return v1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static replaceIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "replacementIfEmpty"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "replacementIfEmpty":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "replacementIfEmpty":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static safeSubString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 166
    .local v1, "length":I
    const/4 v3, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 167
    .local v2, "s":I
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 168
    .local v0, "e":I
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 171
    .end local v0    # "e":I
    .end local v1    # "length":I
    .end local v2    # "s":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static splitSentenceOnWordsWithDigits(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 95
    .local v5, "textToBeSplit":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    .line 96
    .local v4, "textLength":I
    const/4 v1, 0x0

    .local v1, "characterIndex":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 97
    invoke-virtual {v5, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    new-array v8, v9, [C

    .line 100
    invoke-static {v5, v1, v4, v8}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordStart(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v7

    .line 101
    .local v7, "wordStart":I
    new-array v8, v9, [C

    invoke-static {v5, v7, v4, v8}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordEnd(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v6

    .line 103
    .local v6, "wordEnd":I
    invoke-virtual {v5, v9, v7}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "part":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    invoke-virtual {v5, v6}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    .line 96
    .end local v2    # "part":Ljava/lang/String;
    .end local v6    # "wordEnd":I
    .end local v7    # "wordStart":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "anyRemainingText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 117
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    return-object v3
.end method
