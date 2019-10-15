.class public Lcom/sonyericsson/ned/controller/misc/TextReplacer;
.super Ljava/lang/Object;
.source "TextReplacer.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/textinput/uxp/model/ITextReplacer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;
    }
.end annotation


# static fields
.field private static final ALL_CHARACTERS:Ljava/lang/String; = "${all-characters}"

.field private static final ALL_LANGUAGES:Ljava/lang/String; = "${all-languages}"

.field private static final BEGINNING:Ljava/lang/String; = "${beginning}"

.field public static final FACTORY:Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;

.field private static final LETTER_OR_DIGIT:Ljava/lang/String; = "${letter-or-digit}"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveReplacers:[Z

.field private mAutoChanged:Z

.field private mAutoChangedIndex:I

.field private mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mITextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLists:[[Ljava/lang/String;

.field private mSeparatorList:[[Ljava/lang/String;

.field private mTextReplaceProvider:Lcom/sonyericsson/ned/model/ITextReplaceProvider;

.field private mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;-><init>()V

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->FACTORY:Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/model/IWaitForTextModifications;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getReplaceIndex(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 11
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 117
    invoke-virtual {p1, p2}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v7, v7

    if-ge v1, v7, :cond_a

    .line 122
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mActiveReplacers:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_7

    .line 123
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    .line 126
    .local v0, "fromLength":I
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    .line 125
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 127
    .local v4, "textToCheck":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v2, 0x0

    .line 129
    .local v2, "matchBeginning":Z
    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mSeparatorList:[[Ljava/lang/String;

    aget-object v8, v7, v1

    array-length v9, v8

    move v7, v6

    :goto_2
    if-ge v7, v9, :cond_6

    aget-object v3, v8, v7

    .line 136
    .local v3, "separator":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/sonyericsson/ned/model/CodePointString;->startsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "${beginning}"

    if-ne v3, v10, :cond_3

    .line 137
    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v10

    if-eq v10, v0, :cond_5

    :cond_3
    const-string v10, "${letter-or-digit}"

    if-ne v3, v10, :cond_4

    .line 139
    invoke-virtual {v4, v6}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 140
    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v10

    if-gt v10, v0, :cond_5

    :cond_4
    const-string v10, "${all-characters}"

    if-ne v3, v10, :cond_8

    :cond_5
    const/4 v2, 0x1

    .line 141
    :goto_3
    if-eqz v2, :cond_9

    .line 146
    .end local v3    # "separator":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v7, v7, v1

    .line 147
    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 148
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 121
    .end local v0    # "fromLength":I
    .end local v2    # "matchBeginning":Z
    .end local v4    # "textToCheck":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .restart local v0    # "fromLength":I
    .restart local v2    # "matchBeginning":Z
    .restart local v3    # "separator":Ljava/lang/String;
    .restart local v4    # "textToCheck":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_8
    move v2, v6

    .line 140
    goto :goto_3

    .line 133
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v0    # "fromLength":I
    .end local v2    # "matchBeginning":Z
    .end local v3    # "separator":Ljava/lang/String;
    .end local v4    # "textToCheck":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_a
    move v1, v5

    .line 156
    goto/16 :goto_0
.end method

.method private handleNewText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChanged:Z

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->getReplaceIndex(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    .line 109
    .local v0, "replaceIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mITextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->replace(ILcom/sonyericsson/ned/model/CodePointString;)Z

    .line 111
    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChangedIndex:I

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChanged:Z

    .line 114
    :cond_0
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageLists:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mActiveReplacers:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 75
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageLists:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageLists:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const-string v3, "${all-languages}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageLists:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mActiveReplacers:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "j":I
    :cond_3
    return-void
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_1

    .line 59
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mITextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_2

    .line 61
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 62
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    if-ne p2, v0, :cond_0

    .line 63
    check-cast p1, Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mTextReplaceProvider:Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xa

    return v0
.end method

.method public getDoubleSpaceReplacer(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 265
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->getReplaceIndex(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    .line 267
    .local v0, "replaceIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 4

    .prologue
    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "restore-auto-correction"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 210
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mTextReplaceProvider:Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextReplaceProvider;->getLanguages()[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "languageList":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mTextReplaceProvider:Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextReplaceProvider;->getOriginalStrings()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 212
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mTextReplaceProvider:Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextReplaceProvider;->getNewStrings()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 213
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mTextReplaceProvider:Lcom/sonyericsson/ned/model/ITextReplaceProvider;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextReplaceProvider;->getSeparators()[Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "separatorList":[Ljava/lang/String;
    array-length v4, v2

    filled-new-array {v4, v7}, [I

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageLists:[[Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageLists:[[Ljava/lang/String;

    aget-object v5, v2, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    array-length v4, v3

    filled-new-array {v4, v7}, [I

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mSeparatorList:[[Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 224
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mSeparatorList:[[Ljava/lang/String;

    aget-object v5, v3, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 226
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mSeparatorList:[[Ljava/lang/String;

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mSeparatorList:[[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mSeparatorList:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v1    # "j":I
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v5, v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    array-length v5, v2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    array-length v5, v3

    if-eq v4, v5, :cond_4

    .line 233
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Not the same number of attributes in the specified replacement strings"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mActiveReplacers:[Z

    .line 239
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->setLanguage(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 5
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChanged:Z

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChangedIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    .line 183
    .local v1, "toStringLength":I
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mITextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 184
    .local v0, "text":Lcom/sonyericsson/ned/model/CodePointString;
    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChanged:Z

    .line 186
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChangedIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mITextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mFromStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v4, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mAutoChangedIndex:I

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->replace(ILcom/sonyericsson/ned/model/CodePointString;)Z

    .line 188
    const/4 v2, 0x1

    .line 191
    .end local v0    # "text":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "toStringLength":I
    :cond_0
    return v2
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 102
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->handleNewText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 103
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 95
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->handleNewText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 96
    return-void
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 197
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 254
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->setLanguage(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "replaced"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 163
    return-void
.end method

.method public willReplace(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "expectedReplacement"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->getReplaceIndex(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    .line 260
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/TextReplacer;->mToStrings:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
