.class public abstract Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;
.super Ljava/lang/Object;
.source "CAbstractInputMethod.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;


# static fields
.field protected static final BASE_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

.field protected static final BASE_REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_CHAR_VECTOR:[C


# instance fields
.field protected currentCase:I

.field protected keyMap:Lcom/sonyericsson/ned/model/KeyMap;

.field protected languageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field protected final languages:[Ljava/lang/String;

.field protected mapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

.field protected predictive:Lcom/sonyericsson/ned/model/IPredictive;

.field protected shiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

.field protected textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_REQUIRED:[Ljava/lang/Class;

    .line 35
    new-array v0, v3, [C

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->EMPTY_CHAR_VECTOR:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    return-void
.end method

.method private static endsWithWordDelimiter(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v1

    new-array v2, v0, [C

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVietnamese()Z
    .locals 3

    .prologue
    .line 125
    const-string v0, "vie"

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static stripLeadingHyphen(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/model/CodePointString;->startsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    .line 90
    .local v0, "hyphenCodePoint":I
    const/4 v1, 0x0

    .line 91
    .local v1, "leadingHyphenCount":I
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object p0

    .line 100
    .end local v0    # "hyphenCodePoint":I
    .end local v1    # "leadingHyphenCount":I
    .end local v2    # "offset":I
    .end local p0    # "text":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return-object p0
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
    .line 136
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
    .line 141
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_1

    .line 142
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    if-ne p2, v0, :cond_2

    .line 144
    check-cast p1, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->mapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    goto :goto_0

    .line 145
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_3

    .line 146
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 147
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    if-ne p2, v0, :cond_4

    .line 148
    check-cast p1, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->shiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    goto :goto_0

    .line 149
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/ned/model/IPredictive;

    if-ne p2, v0, :cond_0

    .line 150
    check-cast p1, Lcom/sonyericsson/ned/model/IPredictive;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public endsWithIsolatedHyphen(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 71
    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 73
    .local v0, "remainingString":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->endsWithWordDelimiter(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    .line 74
    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 76
    .end local v0    # "remainingString":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return v1
.end method

.method public abstract excludedReopenDelimiters()[C
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x9

    return v0
.end method

.method protected getReopenData(Lcom/sonyericsson/ned/model/CodePointString;ZZZZ)Lcom/sonyericsson/ned/controller/method/ReopenData;
    .locals 8
    .param p1, "latestPredictedCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "reopenPreviousTracedWord"    # Z
    .param p3, "lastInsertionWasACandidate"    # Z
    .param p4, "supportsAdvancedVietnameseWordReopening"    # Z
    .param p5, "delimiterWasDeleted"    # Z

    .prologue
    const/4 v5, 0x0

    .line 219
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v7, 0x2ee

    .line 220
    invoke-interface {v6, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 222
    .local v2, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 228
    .local v1, "textAfterCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->endsWithIsolatedHyphen(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v5

    .line 232
    :cond_1
    sget-object v6, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->EMPTY_CHAR_VECTOR:[C

    invoke-static {v1, v6}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEndOfWord(Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v0

    .line 234
    .local v0, "isAtTheEndOfWord":Z
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->wasPreviousWordPredicted(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZZ)Z

    move-result v3

    .line 237
    .local v3, "wasPreviousWordPredicted":Z
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz p5, :cond_0

    .line 240
    :cond_2
    if-eqz v3, :cond_3

    .line 243
    move-object v4, p1

    .line 254
    .local v4, "wordInText":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    invoke-static {v4}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->stripLeadingHyphen(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 256
    new-instance v5, Lcom/sonyericsson/ned/controller/method/ReopenData;

    invoke-direct {v5, v2, v4, v3}, Lcom/sonyericsson/ned/controller/method/ReopenData;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V

    goto :goto_0

    .line 244
    .end local v4    # "wordInText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_3
    if-eqz p4, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->isVietnamese()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    iget-object v5, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    sget-object v6, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v5, v6}, Lcom/sonyericsson/ned/model/IPredictive;->getCurrentVietnameseWord(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .restart local v4    # "wordInText":Lcom/sonyericsson/ned/model/CodePointString;
    goto :goto_1

    .line 249
    .end local v4    # "wordInText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    .line 250
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v7

    .line 249
    invoke-static {v2, v5, v6, v7}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordStart(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v5

    .line 251
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    .line 248
    invoke-static {v2, v5, v6}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .restart local v4    # "wordInText":Lcom/sonyericsson/ned/model/CodePointString;
    goto :goto_1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public initOptional()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->shiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getCurrentCase()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->mapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    .line 172
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->setCaseChanged(IZ)V

    .line 173
    return-void
.end method

.method public onCaseChanged(IZ)V
    .locals 3
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 195
    iput p1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->mapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    .line 197
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->setCaseChanged(IZ)V

    .line 198
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 182
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->mapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->mapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->languages:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->currentCase:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    .line 191
    :cond_0
    return-void
.end method

.method protected setCaseChanged(IZ)V
    .locals 0
    .param p1, "newCase"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public supportsAdvancedVietnameseWordReopening()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public wasPreviousWordPredicted(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZZ)Z
    .locals 2
    .param p1, "latestPredictedCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "reopenPreviousTracedWord"    # Z
    .param p4, "lastInsertionWasACandidate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 118
    invoke-virtual {p2, p1}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method
