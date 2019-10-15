.class public Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;
.super Ljava/lang/Object;
.source "ReopenWordsController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/ICursorListener;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/controller/IPredictionListener;
.implements Lcom/sonyericsson/ned/model/IPredictionEngineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;,
        Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;
    }
.end annotation


# static fields
.field private static final CLOSE_WORD_EVENT:[Lcom/sonyericsson/ned/controller/EventObject;

.field private static final DO_DEBUG:Z = false

.field private static final EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

.field private static final REOPEN_WORD_DELAY:J = 0x1eL

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

.field private mCursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private final mHandler:Landroid/os/Handler;

.field private mInputMethod:Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

.field private mInputViewJustStarted:Z

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

.field private mReopenEnabled:Z

.field private mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private final mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

.field private mTheReopenedWord:Lcom/sonyericsson/ned/model/CodePointString;

.field private mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-array v0, v5, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "close-word"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->CLOSE_WORD_EVENT:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "select-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "perform-enter-key-action"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/IPredictive;

    aput-object v1, v0, v4

    const-class v1, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v1, v0, v5

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    aput-object v1, v0, v6

    const-class v1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v1, v0, v7

    const-class v1, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->REQUIRED:[Ljava/lang/Class;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenEnabled:Z

    .line 78
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    .line 88
    return-void
.end method

.method static synthetic access$300()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->cancelReopenWord()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/model/ITextBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mInputMethod:Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;
    .param p1, "x1"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTheReopenedWord:Lcom/sonyericsson/ned/model/CodePointString;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/model/IPredictive;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    return-object v0
.end method

.method private cancelReopenIfOpen()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 199
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->onCandidatesCanceled(Ljava/lang/Object;)V

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->cancelReopenWord()V

    .line 202
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->fireOnCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;II)V

    .line 205
    :cond_0
    return-void
.end method

.method private cancelReopenWord()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->CLOSE_WORD_EVENT:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 296
    return-void
.end method

.method private fireOnCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "stemCharsLength"    # I
    .param p3, "composingCandidateIndex"    # I
    .param p4, "defaultCandidateIndex"    # I
    .param p5, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "cursorPos"    # I
    .param p7, "nbrCorrectionCandidates"    # I

    .prologue
    .line 253
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v0, v10, v9

    .line 254
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    sget-object v8, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 253
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 258
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private hasPunctuationAfterWord()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 240
    .local v1, "text":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    .line 241
    invoke-interface {v3}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    new-array v5, v2, [C

    .line 240
    invoke-static {v1, v3, v4, v5}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordEnd(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v0

    .line 242
    .local v0, "endOfCurrentComposingTextIndex":I
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 244
    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageSwapPunctuations(Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v0, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 242
    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {v1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSpaceOrNewLine(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private hasSpaceAfterWord()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 232
    .local v1, "text":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    .line 233
    invoke-interface {v3}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    new-array v5, v2, [C

    .line 232
    invoke-static {v1, v3, v4, v5}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordEnd(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v0

    .line 234
    .local v0, "endOfCurrentComposingTextIndex":I
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 235
    invoke-virtual {v1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    .line 234
    invoke-static {v3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private insertCandidate(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 7
    .param p1, "candidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 208
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 209
    .local v4, "textInView":Lcom/sonyericsson/ned/model/CodePointString;
    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    .line 210
    .local v2, "endsWithSpace":Z
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->hasPunctuationAfterWord()Z

    move-result v1

    .line 211
    .local v1, "endsWithDelimiter":Z
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v5}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 213
    .local v0, "addSpace":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->hasSpaceAfterWord()Z

    move-result v3

    .line 215
    .local v3, "spaceAfterWord":Z
    if-eqz v3, :cond_1

    .line 216
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v5, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 217
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    invoke-interface {v5, v6, v4, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 218
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v6}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6}, Lcom/sonyericsson/ned/controller/ICursor;->setPosition(I)V

    .line 228
    .end local v3    # "spaceAfterWord":Z
    :goto_1
    return-void

    .line 211
    .end local v0    # "addSpace":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    .restart local v0    # "addSpace":Z
    .restart local v3    # "spaceAfterWord":Z
    :cond_1
    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 221
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v5, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 222
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    invoke-interface {v5, v6, v4, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_1

    .line 225
    .end local v3    # "spaceAfterWord":Z
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v5, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 226
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    invoke-interface {v5, v6, v4, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_1
.end method

.method private isAllowed()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 113
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-ne p2, v0, :cond_0

    .line 114
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 92
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/IPredictive;

    if-ne p2, v0, :cond_1

    .line 93
    check-cast p1, Lcom/sonyericsson/ned/model/IPredictive;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    if-ne p2, v0, :cond_2

    .line 95
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    goto :goto_0

    .line 96
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_3

    .line 97
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    goto :goto_0

    .line 98
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_4

    .line 99
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 100
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_5

    .line 101
    check-cast p1, Lcom/sonyericsson/ned/controller/ICursor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 102
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_6

    .line 103
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0

    .line 104
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    if-ne p2, v0, :cond_7

    .line 105
    check-cast p1, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mInputMethod:Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    goto :goto_0

    .line 106
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_0

    .line 107
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 151
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 310
    const/16 v0, 0xa

    return v0
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
    .line 122
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->isAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenEnabled:Z

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mInputViewJustStarted:Z

    .line 133
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 6
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v5, 0x2

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "consumed":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getCandidateListSource()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 161
    instance-of v3, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-nez v3, :cond_0

    const-string v3, "delete-previous-grapheme"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "perform-enter-key-action"

    .line 162
    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 170
    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mInputMethod:Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    .line 171
    invoke-virtual {v5}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v5

    .line 169
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInTheMiddleOfAWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->cancelReopenIfOpen()V

    .line 194
    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    :goto_0
    return v2

    .line 174
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_2
    const-string v3, "select-candidate"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 179
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_4

    .line 180
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v3, v0}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 182
    .local v1, "candidateIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->insertCandidate(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 185
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    sget-object v4, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->MANUAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-virtual {v3, p0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->cancelReopenIfOpen()V

    .line 188
    const/4 v2, 0x1

    .line 189
    goto :goto_0

    .line 190
    .end local v1    # "candidateIndex":I
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->cancelReopenIfOpen()V

    goto :goto_0
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenEnabled:Z

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->access$102(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;I)I

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getEnd()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->access$202(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;I)I

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 2
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method public onNoPendingPredictions()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 8
    .param p1, "newPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 316
    sget-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p2, v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTheReopenedWord:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {p1, v0}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 321
    .local v3, "index":I
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 322
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    move-object v0, p0

    move-object v1, p0

    move v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->fireOnCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;II)V

    .line 325
    .end local v3    # "index":I
    :cond_0
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->cancelReopenWord()V

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->isAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenEnabled:Z

    .line 292
    return-void
.end method

.method public onReadyToPredict()V
    .locals 6

    .prologue
    .line 339
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenEnabled:Z

    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mInputViewJustStarted:Z

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mInputViewJustStarted:Z

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getCursorPosition()I

    move-result v0

    .line 353
    .local v0, "cursorPosition":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->access$102(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;I)I

    .line 355
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->access$202(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;I)I

    .line 356
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->mReopenWordRunnable:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 283
    return-void
.end method
