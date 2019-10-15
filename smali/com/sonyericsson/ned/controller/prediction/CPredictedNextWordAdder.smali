.class public Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;
.super Ljava/lang/Object;
.source "CPredictedNextWordAdder.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedRebindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/model/IWaitForTextModifications;
.implements Lcom/sonyericsson/ned/controller/ICursorListener;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
.implements Lcom/sonyericsson/ned/controller/IRemoveWordsListener;
.implements Lcom/sonyericsson/ned/controller/IPredictionListener;
.implements Lcom/sonyericsson/ned/model/IPredictionEngineListener;
.implements Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;,
        Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z = false

.field private static final EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SPACE:Ljava/lang/String; = "space"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAcceptOnSpace:Z

.field private mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

.field private mContext:Landroid/content/Context;

.field private mCurrentCandidate:I

.field private mCursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

.field private mIsDeleteRepeat:Z

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

.field private mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

.field private mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

.field private mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->TAG:Ljava/lang/String;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v1, v0, v4

    const-class v1, Lcom/sonyericsson/ned/model/IPredictive;

    aput-object v1, v0, v5

    const-class v1, Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    aput-object v1, v0, v6

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->REQUIRED:[Ljava/lang/Class;

    .line 63
    new-array v0, v7, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "select-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "auto-select-next-word-prediction"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "repeat-delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "accept"    # Ljava/lang/String;
    .param p2, "uriEmailEndings"    # Z
    .param p3, "inputMode"    # Ljava/lang/String;
    .param p4, "emailDomains"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->OTHER:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 78
    iput-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 79
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 87
    const-string v0, "space"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const-string v0, "input-mode-url"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->URI:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "input-mode-email"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "input-mode-web-email"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :cond_2
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    .line 95
    invoke-virtual {p4}, [Lcom/sonyericsson/ned/model/CodePointString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private fireOnCandidateSelected(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 133
    .local v0, "listener":Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/ned/controller/INextWordPredictionListener;->onNextWordSelected(Ljava/lang/Object;I)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
    :cond_0
    return-void
.end method

.method private fireOnNewCandidates([Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 4
    .param p1, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "currentCandidate"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    if-eqz v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 117
    .local v0, "listener":Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/sonyericsson/ned/controller/INextWordPredictionListener;->onNextWordSelectionStarted(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
    :cond_0
    return-void
.end method

.method private fireOnRemoveCandidates()V
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    if-eqz v1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 125
    .local v0, "listener":Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/controller/INextWordPredictionListener;->onRemoveNextWords(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
    :cond_0
    return-void
.end method

.method private getPredictions()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/ned/controller/PredictionType;->NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/ned/model/IPredictive;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 148
    return-void
.end method

.method private handleIndexChanged(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertNextWords(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertEmailDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertTopDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->isEmailNameAndAddress(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->removeNextWords()V

    goto :goto_0
.end method

.method private insertEmailDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x40

    .line 302
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertNextWords(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mIsDeleteRepeat:Z

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    :cond_2
    :goto_0
    return v0

    .line 282
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    const/16 v1, 0xa

    .line 287
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 286
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 291
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertTopDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->URI:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x40

    .line 296
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    .line 297
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmailNameAndAddress(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2e

    .line 314
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x40

    .line 315
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Ljava/lang/String;)Z

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

.method private isPredictionsStillValid()Z
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertNextWords(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->isEmailNameAndAddress(Lcom/sonyericsson/ned/model/CodePointString;)Z

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

.method private pollNewCandidates()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->isPredictionsPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->getPredictions()V

    .line 143
    :cond_0
    return-void
.end method

.method private removeNextWords()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->fireOnRemoveCandidates()V

    .line 164
    return-void
.end method

.method private sendCandidates(I)V
    .locals 2
    .param p1, "probableCandidate"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 153
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v0, :cond_1

    .end local p1    # "probableCandidate":I
    :goto_0
    iput p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCurrentCandidate:I

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCurrentCandidate:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->fireOnNewCandidates([Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 159
    :cond_0
    :goto_1
    return-void

    .line 153
    .restart local p1    # "probableCandidate":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->removeNextWords()V

    goto :goto_1
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
    .line 187
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    if-ne p2, v0, :cond_0

    .line 188
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWordListeners:[Lcom/sonyericsson/ned/controller/INextWordPredictionListener;

    .line 191
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
    .line 168
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 169
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mContext:Landroid/content/Context;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_2

    .line 171
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    goto :goto_0

    .line 172
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/IPredictive;

    if-ne p2, v0, :cond_3

    .line 173
    check-cast p1, Lcom/sonyericsson/ned/model/IPredictive;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    goto :goto_0

    .line 174
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    if-ne p2, v0, :cond_4

    .line 175
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    goto :goto_0

    .line 176
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_5

    .line 177
    check-cast p1, Lcom/sonyericsson/ned/controller/ICursor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 178
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_6

    .line 179
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 180
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_0

    .line 181
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 112
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 268
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
    .line 263
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 103
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onCaseChanged(IZ)V
    .locals 1
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    .line 350
    :cond_0
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 378
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 379
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mIsDeleteRepeat:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->removeNextWords()V

    goto :goto_0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 11
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 201
    const-string v9, "repeat-delete-previous-grapheme"

    invoke-virtual {p1, v9}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 202
    iput-boolean v7, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mIsDeleteRepeat:Z

    .line 253
    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_0
    :goto_0
    return v8

    .line 205
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    const-string v9, "delete-previous-grapheme"

    invoke-virtual {p1, v9}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 206
    iput-boolean v8, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mIsDeleteRepeat:Z

    goto :goto_0

    .line 210
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getCandidateListSource()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, p0, :cond_0

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-nez v9, :cond_3

    const-string v9, "auto-select-next-word-prediction"

    .line 211
    invoke-virtual {p1, v9}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 215
    :cond_3
    iget v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCurrentCandidate:I

    .line 216
    .local v0, "currSelection":I
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    .line 218
    .local v1, "data":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v1, :cond_4

    .line 219
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v9, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 222
    :cond_4
    const/4 v9, -0x1

    if-eq v0, v9, :cond_0

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v9, v9

    if-ge v0, v9, :cond_0

    .line 224
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v4, v9, v0

    .line 225
    .local v4, "insertionText":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 226
    .local v6, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 227
    invoke-virtual {v6, v8}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v9

    if-eqz v9, :cond_7

    move v2, v7

    .line 233
    .local v2, "endsWithSpace":Z
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mFieldType:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    sget-object v10, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v10, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v10, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 235
    invoke-interface {v9}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v10, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 237
    invoke-interface {v10}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageSwapPunctuations(Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    .line 238
    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v10

    .line 237
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 236
    invoke-static {v9, v10}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v2, :cond_8

    :cond_5
    move v3, v7

    .line 239
    .local v3, "insertSpace":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->fireOnCandidateSelected(I)V

    .line 240
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 241
    iget-object v8, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v8, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 242
    if-eqz v3, :cond_6

    .line 243
    iget-object v8, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v8, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    .line 245
    .local v5, "spaceAfterCursor":Z
    if-eqz v5, :cond_9

    .line 246
    iget-object v8, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v9}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8, v9}, Lcom/sonyericsson/ned/controller/ICursor;->setPosition(I)V

    .end local v5    # "spaceAfterCursor":Z
    :cond_6
    :goto_3
    move v8, v7

    .line 251
    goto/16 :goto_0

    .end local v2    # "endsWithSpace":Z
    .end local v3    # "insertSpace":Z
    :cond_7
    move v2, v8

    .line 227
    goto :goto_1

    .restart local v2    # "endsWithSpace":Z
    :cond_8
    move v3, v8

    .line 236
    goto :goto_2

    .line 248
    .restart local v3    # "insertSpace":Z
    .restart local v5    # "spaceAfterCursor":Z
    :cond_9
    iget-object v8, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v9, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v8, v9}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    goto :goto_3
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 418
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 419
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertTopDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->getTopDomains(Landroid/content/Context;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 424
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    .line 434
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 424
    goto :goto_0

    .line 425
    :cond_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertEmailDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 427
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 428
    :cond_4
    invoke-virtual {p2, p4}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 429
    invoke-virtual {p2, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    goto :goto_1

    .line 432
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->removeNextWords()V

    goto :goto_1
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    .line 324
    iput-object p5, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 325
    invoke-direct {p0, p5}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->handleIndexChanged(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 326
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 394
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 395
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertTopDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->getTopDomains(Landroid/content/Context;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 400
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    .line 409
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 400
    goto :goto_0

    .line 401
    :cond_3
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertEmailDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 402
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 403
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v2, :cond_4

    :goto_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    .line 404
    :cond_5
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertNextWords(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    goto :goto_1

    .line 406
    :cond_6
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->isEmailNameAndAddress(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    goto :goto_1
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "events"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 259
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 463
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 464
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p4, v0}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertNextWords(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    .line 468
    :cond_0
    return-void
.end method

.method public onNoPendingPredictions()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 454
    return-void
.end method

.method public onPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 1
    .param p1, "newPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 476
    sget-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p2, v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->isPredictionsStillValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->getDefaultCandidateIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    .line 483
    :cond_0
    return-void
.end method

.method public onReadyToPredict()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 500
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 502
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertTopDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->getTopDomains(Landroid/content/Context;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTopDomainCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 507
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    .line 516
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0

    .line 508
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->insertEmailDomains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mEmailDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 510
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mAcceptOnSpace:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->isEmailNameAndAddress(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    goto :goto_1

    .line 514
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->handleIndexChanged(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_1
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 443
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 444
    invoke-virtual {p2, p4}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->removeNextWords()V

    goto :goto_0
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 343
    return-void
.end method

.method public onWordNotInDictionary()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->handleIndexChanged(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 525
    return-void
.end method

.method public onWordRemoved(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->pollNewCandidates()V

    .line 369
    :cond_0
    return-void
.end method

.method public reinit()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public reinitOptional()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->mNextWords:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->sendCandidates(I)V

    .line 362
    :cond_0
    return-void
.end method
