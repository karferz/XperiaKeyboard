.class public Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;
.super Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;
.source "CSoftFullKeyboardInputMethod.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/ned/controller/IRemoveWordsListener;
.implements Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.implements Lcom/sonyericsson/ned/controller/IPredictionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;,
        Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;,
        Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z = false

.field public static final EXCLUDED_REOPEN_DELIMITERS:[C

.field private static final MINIMUM_AUTO_SELECTION_WORD_LENGTH:I = 0x2

.field private static final NO_CANDIDATE_INDEX:I = -0x1

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
.field private mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private final mCandidateAutoSpace:Z

.field private mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

.field private mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mCursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private mDelimiterDeleted:Z

.field private mEnablePartOfWordReopening:Z

.field private final mEnableWordReopening:Z

.field private mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

.field private final mEvents:[Lcom/sonyericsson/ned/controller/EventObject;

.field private final mInputMode:Ljava/lang/String;

.field private mIsDeleteRepeat:Z

.field private mIsWordReopening:Z

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLastCandidatesChangedDefaultCandidateIndex:I

.field private mLastChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field private mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field private final mNoPredictionOnDigits:Z

.field private mOngoingTrace:Z

.field private mPredictionMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

.field private mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

.field private mReopenPreviousTracedWord:Z

.field private mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 38
    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->EXCLUDED_REOPEN_DELIMITERS:[C

    .line 43
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_REQUIRED:[Ljava/lang/Class;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/sonyericsson/ned/model/IPredictive;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    aput-object v3, v1, v2

    const-class v2, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-class v3, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->REQUIRED:[Ljava/lang/Class;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->TAG:Ljava/lang/String;

    return-void

    .line 38
    :array_0
    .array-data 2
        0x40s
        0x2es
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 7
    .param p1, "predictionMode"    # Ljava/lang/String;
    .param p2, "autoAcceptRequirement"    # Ljava/lang/String;
    .param p3, "candidateAutoSpace"    # Z
    .param p4, "enableWordReopening"    # Z
    .param p5, "synchronousTrace"    # Z
    .param p6, "inputMode"    # Ljava/lang/String;
    .param p7, "noPredictionOnDigits"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;-><init>()V

    .line 56
    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mReopenPreviousTracedWord:Z

    .line 71
    sget-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->UNDEFINED:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->setPredictionMode(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->setAutoAcceptMode(Ljava/lang/String;)V

    .line 87
    iput-boolean p3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateAutoSpace:Z

    .line 88
    iput-boolean p4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnableWordReopening:Z

    .line 89
    iput-object p6, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mInputMode:Ljava/lang/String;

    .line 90
    iput-boolean p7, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mNoPredictionOnDigits:Z

    .line 92
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 93
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 95
    if-eqz p5, :cond_0

    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x7

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x6

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "select-candidate"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "auto-select-candidate"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "reset-field"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "perform-enter-key-action"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "delete-previous-grapheme"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "repeat-delete-previous-grapheme"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "close-word"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/EventObject;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "select-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "perform-enter-key-action"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "repeat-delete-previous-grapheme"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "close-word"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/EventObject;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    goto :goto_0
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private autoSelectCandidate(Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)Z
    .locals 2
    .param p1, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    .param p2, "addSpace"    # Z

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    iget v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    if-le v0, v1, :cond_0

    .line 812
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->selectCandidate(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)V

    .line 813
    const/4 v0, 0x1

    .line 819
    :goto_0
    return v0

    .line 814
    :cond_0
    if-eqz p2, :cond_2

    .line 815
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 816
    :cond_1
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->insertText(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 819
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCandidateSelection()V
    .locals 1

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->removeCandidates()V

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->removeAllIndices()V

    .line 842
    return-void
.end method

.method private candidatesChanged([Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 2
    .param p1, "newCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "composingIndex"    # I
    .param p3, "defaultIndex"    # I
    .param p4, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 834
    iput-object p4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 835
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsWordReopening:Z

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    invoke-virtual {p4, v1}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsWordReopening:Z

    .line 836
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->fireCandidatesChangedEvent([Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 837
    return-void
.end method

.method private fireCandidatesCancelEvent()V
    .locals 4

    .prologue
    .line 865
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-eqz v1, :cond_0

    .line 866
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 867
    .local v0, "candidateSelectionListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidatesCanceled(Ljava/lang/Object;)V

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "candidateSelectionListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private fireCandidatesChangedEvent([Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 12
    .param p1, "candidateList"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "composingCandidateIndex"    # I
    .param p3, "defaultCandidateIndex"    # I
    .param p4, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 848
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-eqz v1, :cond_0

    .line 849
    iget-object v10, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v0, v10, v9

    .line 850
    .local v0, "candidateSelectionListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    move-object/from16 v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 849
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 854
    .end local v0    # "candidateSelectionListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private fireCandidatesSelectedEvent(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 857
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-eqz v1, :cond_0

    .line 858
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 859
    .local v0, "candidateSelectionListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    .end local v0    # "candidateSelectionListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private fireOnWordNotInDictionary()V
    .locals 4

    .prologue
    .line 259
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    if-eqz v1, :cond_0

    .line 260
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 261
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;
    invoke-interface {v0}, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;->onWordNotInDictionary()V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;
    :cond_0
    return-void
.end method

.method private getDefaultCandidateIndexDependingOnMode(Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 5
    .param p1, "composingText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v2, 0x0

    .line 597
    iget v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->currentCase:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getPredictionMode(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    move-result-object v1

    .line 602
    .local v1, "mode":Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;
    sget-object v3, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    if-ne v1, v3, :cond_2

    .line 603
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/IPredictive;->getDefaultCandidateIndex()I

    move-result v0

    goto :goto_0

    .line 604
    :cond_2
    sget-object v3, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_DISAMBIGUATION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    if-ne v1, v3, :cond_3

    .line 605
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/IPredictive;->getDefaultCandidateIndex()I

    move-result v0

    .line 607
    .local v0, "defaultIndex":I
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v3, v2, v0}, Lcom/sonyericsson/ned/model/IPredictive;->isDisambiguationCandidate(II)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 610
    goto :goto_0

    .end local v0    # "defaultIndex":I
    :cond_3
    move v0, v2

    .line 615
    goto :goto_0
.end method

.method private getPredictionMode(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;
    .locals 2
    .param p1, "composingText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsWordReopening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictionMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    .line 620
    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 621
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 623
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_DISAMBIGUATION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    .line 625
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictionMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    goto :goto_0
.end method

.method private getPredictions(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "textFragment"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "wordInText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "shiftToLowerCase"    # Z
    .param p4, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 344
    sget-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p4, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p2, p1, p4}, Lcom/sonyericsson/ned/model/IPredictive;->getReopenWordPrediction(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V

    .line 347
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 349
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p1, p3, p4}, Lcom/sonyericsson/ned/model/IPredictive;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAutoAccept(Lcom/sonyericsson/ned/controller/VirtualKey;)V
    .locals 11
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 223
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v9, v8}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 224
    .local v2, "inFrontOfCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/sonyericsson/ned/util/StringUtil;->NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 225
    invoke-virtual {v2, v9}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    move v3, v8

    .line 226
    .local v3, "isBeginningOfLine":Z
    :goto_0
    sget-object v9, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2, v9}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v4

    .line 227
    .local v4, "isExistingSpace":Z
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v10, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-ne v9, v10, :cond_6

    .line 228
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 229
    invoke-virtual {v2, v7}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v8

    .line 231
    .local v5, "isUriException":Z
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v10, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->NONE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-eq v9, v10, :cond_4

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    iget-boolean v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-eqz v9, :cond_4

    .line 238
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v9, p1}, Lcom/sonyericsson/ned/model/IPredictive;->shallAcceptWordBeforeTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 239
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v9, v9

    iget v10, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    if-le v9, v10, :cond_7

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v10, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    aget-object v9, v9, v10

    sget-object v10, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 241
    invoke-virtual {v9, v10}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v1, v8

    .line 243
    .local v1, "candidateEndsWithSpace":Z
    :goto_2
    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v10, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-ne v9, v10, :cond_8

    iget-boolean v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-eqz v9, :cond_8

    move v6, v8

    .line 246
    .local v6, "isUriOngoingTraceException":Z
    :goto_3
    if-nez v1, :cond_9

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    sget-object v10, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 247
    invoke-virtual {v9, v10}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    if-nez v6, :cond_9

    iget-object v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 249
    invoke-interface {v9, p1}, Lcom/sonyericsson/ned/model/IPredictive;->shallAddSpaceBeforeTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 250
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isAddSpaceMode()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-nez v9, :cond_3

    .line 252
    invoke-virtual {v2, v7}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v9

    .line 251
    invoke-static {v9}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isConnectingCharacter(I)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_3
    move v0, v8

    .line 253
    .local v0, "addSpace":Z
    :goto_4
    sget-object v7, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-direct {p0, v7, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->autoSelectCandidate(Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)Z

    .line 256
    .end local v0    # "addSpace":Z
    .end local v1    # "candidateEndsWithSpace":Z
    .end local v6    # "isUriOngoingTraceException":Z
    :cond_4
    return-void

    .end local v3    # "isBeginningOfLine":Z
    .end local v4    # "isExistingSpace":Z
    .end local v5    # "isUriException":Z
    :cond_5
    move v3, v7

    .line 225
    goto/16 :goto_0

    .restart local v3    # "isBeginningOfLine":Z
    .restart local v4    # "isExistingSpace":Z
    :cond_6
    move v5, v7

    .line 229
    goto :goto_1

    .restart local v5    # "isUriException":Z
    :cond_7
    move v1, v7

    .line 241
    goto :goto_2

    .restart local v1    # "candidateEndsWithSpace":Z
    :cond_8
    move v6, v7

    .line 243
    goto :goto_3

    .restart local v6    # "isUriOngoingTraceException":Z
    :cond_9
    move v0, v7

    .line 251
    goto :goto_4
.end method

.method private handleCommandEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 5
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v4, 0x0

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "consumed":Z
    const-string v3, "delete-previous-grapheme"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "repeat-delete-previous-grapheme"

    .line 438
    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 439
    :cond_0
    const-string v3, "repeat-delete-previous-grapheme"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 447
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsDeleteRepeat:Z

    .line 449
    :cond_2
    const-string v3, "delete-previous-grapheme"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 450
    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsDeleteRepeat:Z

    .line 452
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleDeletePreviousGrapheme()Z

    move-result v2

    .line 473
    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_4
    :goto_0
    return v2

    .line 454
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_5
    const-string v3, "close-word"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 455
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 456
    const/4 v2, 0x1

    goto :goto_0

    .line 457
    :cond_6
    const-string v3, "perform-enter-key-action"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 458
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleEnterAction()V

    goto :goto_0

    .line 459
    :cond_7
    const-string v3, "select-candidate"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 460
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 461
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_4

    .line 462
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v3, v0}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 463
    .local v1, "candidateIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    .line 464
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->manualSelectCandidate(I)V

    .line 466
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "candidateIndex":I
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_9
    const-string v3, "auto-select-candidate"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 469
    sget-object v3, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->autoSelectCandidate(Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)Z

    move-result v2

    goto :goto_0

    .line 470
    :cond_a
    const-string v3, "reset-field"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    goto :goto_0
.end method

.method private handleDeleteIntoWord()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 747
    const/4 v6, 0x0

    .line 753
    .local v6, "consumed":Z
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnableWordReopening:Z

    if-eqz v0, :cond_1

    .line 754
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mReopenPreviousTracedWord:Z

    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    .line 756
    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->supportsAdvancedVietnameseWordReopening()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mDelimiterDeleted:Z

    move-object v0, p0

    .line 754
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getReopenData(Lcom/sonyericsson/ned/model/CodePointString;ZZZZ)Lcom/sonyericsson/ned/controller/method/ReopenData;

    move-result-object v8

    .line 757
    .local v8, "reopenData":Lcom/sonyericsson/ned/controller/method/ReopenData;
    if-eqz v8, :cond_1

    .line 758
    iget-object v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wordInText:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    .line 765
    .local v7, "length":I
    if-lez v7, :cond_1

    iget-object v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wordInText:Lcom/sonyericsson/ned/model/CodePointString;

    add-int/lit8 v1, v7, -0x1

    .line 766
    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    new-array v1, v9, [C

    .line 765
    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 766
    invoke-interface {v0, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->suitableToReSetComposingText(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 767
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wasPreviousWordPredicted:Z

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    iget-object v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wordInText:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v1, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->textBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->reopenWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    .line 779
    .end local v7    # "length":I
    .end local v8    # "reopenData":Lcom/sonyericsson/ned/controller/method/ReopenData;
    :cond_1
    iput-boolean v9, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mDelimiterDeleted:Z

    .line 780
    return v6
.end method

.method private handleDeletePreviousGrapheme()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, "removedCharacter":I
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 687
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/IPredictive;->removeLastIndex()I

    move-result v2

    .line 688
    new-array v4, v6, [C

    invoke-static {v2, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mDelimiterDeleted:Z

    .line 693
    const/4 v4, 0x1

    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleNewPrediction(ZZ)Z

    move-result v1

    .line 694
    .local v1, "hasNewPrediction":Z
    if-nez v1, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->cancelCandidateSelection()V

    .line 696
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isVietnamese()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v5}, Lcom/sonyericsson/ned/model/IPredictive;->getVietnameseComposingLength()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->reSetComposingText(I)Z

    .line 704
    :cond_0
    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 705
    iput-boolean v6, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    .line 707
    :cond_1
    const/4 v0, 0x1

    .line 730
    .end local v1    # "hasNewPrediction":Z
    .local v0, "consume":Z
    :goto_0
    return v0

    .line 708
    .end local v0    # "consume":Z
    :cond_2
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsDeleteRepeat:Z

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->wasPrevWordPredicted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 714
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleDeleteIntoWord()Z

    move-result v0

    .restart local v0    # "consume":Z
    goto :goto_0

    .line 721
    .end local v0    # "consume":Z
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 722
    .local v3, "textBeforeTheCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 724
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v2

    .line 726
    :cond_4
    new-array v4, v6, [C

    invoke-static {v2, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mDelimiterDeleted:Z

    .line 727
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->removePredictionContext()V

    .line 728
    const/4 v0, 0x0

    .restart local v0    # "consume":Z
    goto :goto_0
.end method

.method private handleEnterAction()V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->autoSelectCandidate(Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)Z

    .line 480
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->insertText(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 481
    return-void
.end method

.method private handleKeyWithoutActingOnPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 9
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 484
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v7, p1, v6}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 485
    .local v2, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v7, v2

    if-lez v7, :cond_6

    aget-object v7, v2, v6

    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 486
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v7, v7

    iget v8, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    if-le v7, v8, :cond_3

    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v8, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    aget-object v1, v7, v8

    .line 490
    .local v1, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 491
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 492
    .local v0, "alreadyInsertedSpace":Z
    :goto_1
    aget-object v7, v2, v6

    invoke-virtual {v7, v6}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    .line 494
    .local v3, "isSpaceChar":Z
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 495
    aget-object v7, v2, v6

    sget-object v8, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v4, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO_DUE_TO_SPACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .line 497
    .local v4, "reason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    :goto_2
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->autoSelectCandidate(Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)Z

    .line 500
    .end local v4    # "reason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    .line 501
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v6, v2, v6

    invoke-interface {v7, v6}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 505
    .end local v0    # "alreadyInsertedSpace":Z
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "isSpaceChar":Z
    :cond_2
    :goto_3
    return v5

    .line 486
    :cond_3
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .restart local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    move v0, v6

    .line 491
    goto :goto_1

    .line 495
    .restart local v0    # "alreadyInsertedSpace":Z
    .restart local v3    # "isSpaceChar":Z
    :cond_5
    sget-object v4, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    goto :goto_2

    .end local v0    # "alreadyInsertedSpace":Z
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "isSpaceChar":Z
    :cond_6
    move v5, v6

    .line 505
    goto :goto_3
.end method

.method private handleNewPrediction(ZZ)Z
    .locals 6
    .param p1, "setComposingText"    # Z
    .param p2, "shiftToLowerCase"    # Z

    .prologue
    const/4 v2, 0x1

    .line 547
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/IPredictive;->getExactMatch()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 548
    .local v1, "exactMatch":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 549
    move-object v0, v1

    .line 556
    .local v0, "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->excludedReopenDelimiters()[C

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v4

    int-to-char v4, v4

    .line 556
    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([CC)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 559
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 579
    .end local v0    # "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return v2

    .line 562
    .restart local v0    # "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    if-eqz p1, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isVietnamese()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/IPredictive;->getVietnameseComposingLength()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->reSetComposingText(I)Z

    .line 572
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 575
    :cond_2
    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v5, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-direct {p0, v3, v4, p2, v5}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 579
    .end local v0    # "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleOngoingTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/IPredictive;->processPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    .line 588
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method private handleVirtualKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 8
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v6, 0x2

    const/4 v7, -0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isNonPredictiveKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 269
    invoke-interface {v4, v6}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 270
    invoke-interface {v5, v6}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->excludedReopenDelimiters()[C

    move-result-object v6

    .line 269
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInTheMiddleOfAWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleKeyWithoutActingOnPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .line 275
    .local v0, "consumed":Z
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->removePredictionContext()V

    .line 338
    :goto_0
    invoke-virtual {p1, v7}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    .line 339
    return v0

    .line 276
    .end local v0    # "consumed":Z
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v4, p1}, Lcom/sonyericsson/ned/model/IPredictive;->hasPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 280
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleKeyWithoutActingOnPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .line 285
    .restart local v0    # "consumed":Z
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/IPredictive;->removeAllIndices()V

    goto :goto_0

    .line 286
    .end local v0    # "consumed":Z
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 290
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-nez v2, :cond_5

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v3, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-ne v2, v3, :cond_4

    .line 293
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleAutoAccept(Lcom/sonyericsson/ned/controller/VirtualKey;)V

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v3, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->NONE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-eq v2, v3, :cond_5

    .line 298
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/IPredictive;->removeAllIndices()V

    .line 301
    :cond_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleOngoingTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .restart local v0    # "consumed":Z
    goto :goto_0

    .line 307
    .end local v0    # "consumed":Z
    :cond_6
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    if-nez v4, :cond_7

    .line 308
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->fireOnWordNotInDictionary()V

    .line 311
    :cond_7
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-nez v4, :cond_c

    move v1, v2

    .line 312
    .local v1, "processPrediction":Z
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v5, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-ne v4, v5, :cond_d

    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-eqz v4, :cond_d

    .line 314
    iput-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    .line 315
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleNewPrediction(ZZ)Z

    .line 320
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v4

    if-nez v4, :cond_8

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->removePredictionContext()V

    .line 325
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBeforeCursorEndsWithSingleExcludedReopenDelimiter()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 326
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->updatePredictionContext()V

    .line 329
    :cond_9
    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v4, p1}, Lcom/sonyericsson/ned/model/IPredictive;->processPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 330
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleNewPrediction(ZZ)Z

    move-result v2

    if-nez v2, :cond_b

    .line 331
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/IPredictive;->removeLastIndex()I

    .line 333
    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v5, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 336
    :cond_b
    const/4 v0, 0x1

    .restart local v0    # "consumed":Z
    goto/16 :goto_0

    .end local v0    # "consumed":Z
    .end local v1    # "processPrediction":Z
    :cond_c
    move v1, v3

    .line 311
    goto :goto_1

    .line 317
    .restart local v1    # "processPrediction":Z
    :cond_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleAutoAccept(Lcom/sonyericsson/ned/controller/VirtualKey;)V

    goto :goto_2
.end method

.method private hasIsolatedHyphen(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 792
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v4, p1, v2}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 793
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v4, v0

    if-ne v4, v3, :cond_1

    aget-object v4, v0, v2

    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 795
    .local v1, "lastWrittenChar":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    .line 796
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v4

    new-array v5, v2, [C

    invoke-static {v4, v5}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 798
    .end local v1    # "lastWrittenChar":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return v2
.end method

.method private hasWordDelimiter(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 377
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v0

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 378
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    aget-object v3, v0, v1

    invoke-virtual {v3, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/sonyericsson/ned/model/IPredictive;->isWordDelimiter(I)Z

    move-result v1

    .line 380
    :cond_0
    return v1
.end method

.method private insertText(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 944
    return-void
.end method

.method private isAddSpaceMode()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_RELEASE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDigit(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 386
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 387
    aget-object v2, v0, v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    .line 389
    :cond_0
    return v1
.end method

.method private isInitialDigit(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isDigit(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonPredictiveKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->hasWordDelimiter(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->hasIsolatedHyphen(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mNoPredictionOnDigits:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isInitialDigit(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

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

.method private isOngoingCandidateSelection()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->getNumberOfKeys()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToProcessPredictions(Lcom/sonyericsson/ned/controller/PredictionType;)Z
    .locals 2
    .param p1, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    const/4 v0, 0x0

    .line 1040
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    if-eq p1, v1, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVietnamese()Z
    .locals 2

    .prologue
    .line 432
    const-string v0, "vie"

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private manualSelectCandidate(I)V
    .locals 4
    .param p1, "candidateIndex"    # I

    .prologue
    .line 823
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v2, v2

    if-le v2, p1, :cond_0

    .line 824
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v2, v2, p1

    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    .line 825
    .local v1, "endsWithSpace":Z
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateAutoSpace:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mInputMode:Ljava/lang/String;

    const-string v3, "input-mode-email"

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 827
    .local v0, "addSpace":Z
    :goto_0
    sget-object v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->MANUAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-direct {p0, p1, v2, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->selectCandidate(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)V

    .line 830
    .end local v0    # "addSpace":Z
    .end local v1    # "endsWithSpace":Z
    :cond_0
    return-void

    .line 826
    .restart local v1    # "endsWithSpace":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareForTextEditingEvents()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->beginBatchEdit()Z

    .line 206
    return-void
.end method

.method private removeCandidates()V
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsWordReopening:Z

    .line 803
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 804
    return-void
.end method

.method private removePredictionContext()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->getNumberOfKeys()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->removeAllIndices()V

    .line 400
    :cond_0
    return-void
.end method

.method private reopenWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 4
    .param p1, "wordInText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-virtual {p2, p1}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->reSetComposingText(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 671
    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 673
    .local v0, "textBeforeReOpenedWord":Lcom/sonyericsson/ned/model/CodePointString;
    sget-object v2, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 675
    const/4 v1, 0x1

    .line 680
    .end local v0    # "textBeforeReOpenedWord":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return v1

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->cancelCandidateSelection()V

    .line 679
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    goto :goto_0
.end method

.method private selectCandidate(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;Z)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    .param p3, "addSpace"    # Z

    .prologue
    const/4 v4, 0x1

    .line 638
    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    .line 639
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 640
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 641
    .local v2, "textInView":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v0, v3, p1

    .line 642
    .local v0, "composingText":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    .line 645
    .local v1, "spaceAfterCursor":Z
    if-eqz p3, :cond_0

    if-nez v1, :cond_0

    .line 646
    const-string v3, " "

    invoke-virtual {v0, v3}, Lcom/sonyericsson/ned/model/CodePointString;->append(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 649
    :cond_0
    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 654
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    invoke-interface {v3, v4, v2, v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 657
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->fireCandidatesSelectedEvent(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 659
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 661
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 662
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v4}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/controller/ICursor;->setPosition(I)V

    .line 665
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->removeCandidates()V

    .line 666
    return-void
.end method

.method private setAutoAcceptMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "autoAcceptRequirement"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 132
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->NONE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    .line 135
    :goto_1
    return-void

    .line 117
    :sswitch_0
    const-string v2, "accept-and-add-space-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "accept-and-add-space-on-release"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "accept-and-add-space-on-next-trace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "accept-only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    goto :goto_1

    .line 122
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_RELEASE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    goto :goto_1

    .line 125
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    .line 126
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mReopenPreviousTracedWord:Z

    goto :goto_1

    .line 129
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_ONLY:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mAutoAcceptMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    goto :goto_1

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3bd255 -> :sswitch_2
        -0x316b5902 -> :sswitch_0
        0x22b67151 -> :sswitch_3
        0x54df6047 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 940
    return-void
.end method

.method private setPredictionMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "predictionMode"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 146
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->MANUAL_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictionMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    .line 149
    :goto_1
    return-void

    .line 138
    :sswitch_0
    const-string v1, "auto-correction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "auto-disambiguation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictionMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    goto :goto_1

    .line 143
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_DISAMBIGUATION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictionMode:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    goto :goto_1

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x20fb9a3c -> :sswitch_0
        0x4f837084 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private submitTextEditingEvents()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->endBatchEdit()Z

    .line 210
    return-void
.end method

.method private textBeforeCursorEndsWithSingleExcludedReopenDelimiter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 355
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v4, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 357
    .local v0, "firstBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 362
    .local v1, "secondBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->excludedReopenDelimiters()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/ned/model/CodePointString;->contains([C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->excludedReopenDelimiters()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/ned/model/CodePointString;->contains([C)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private updatePredictionContext()V
    .locals 9

    .prologue
    .line 514
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v7, 0x2ee

    invoke-interface {v6, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 519
    .local v1, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v6

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->excludedReopenDelimiters()[C

    move-result-object v8

    .line 518
    invoke-static {v1, v6, v7, v8}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordStart(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v5

    .line 520
    .local v5, "wordStartCodePointIndex":I
    invoke-virtual {v1, v5}, Lcom/sonyericsson/ned/model/CodePointString;->toCharIndex(I)I

    move-result v4

    .line 521
    .local v4, "wordStartCharIndex":I
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "stringBeforeCursor":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 531
    .local v2, "wordBeforeCursorAsCharSequence":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingRegionSilent(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 534
    invoke-virtual {v1, v5}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 542
    .local v3, "wordBeforeCursorAsCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v6, v3}, Lcom/sonyericsson/ned/model/IPredictive;->setPredictionContext(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 544
    .end local v3    # "wordBeforeCursorAsCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return-void
.end method

.method private wasPrevWordPredicted()Z
    .locals 4

    .prologue
    .line 734
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v2, 0x2ee

    .line 735
    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 736
    .local v0, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mReopenPreviousTracedWord:Z

    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->wasPreviousWordPredicted(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZZ)Z

    move-result v1

    return v1
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
    .line 167
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-ne p2, v0, :cond_0

    .line 168
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidateSelectionListeners:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    .line 174
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const-class v0, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    if-ne p2, v0, :cond_1

    .line 171
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    goto :goto_0

    .line 174
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->bindMany(ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

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
    .line 153
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 154
    const-class v0, Lcom/sonyericsson/ned/model/IPredictive;

    if-ne p2, v0, :cond_1

    .line 155
    check-cast p1, Lcom/sonyericsson/ned/model/IPredictive;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_2

    .line 157
    check-cast p1, Lcom/sonyericsson/ned/controller/ICursor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 158
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_3

    .line 159
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 160
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_0

    .line 161
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->setEventBlockHandler(Lcom/sonyericsson/ned/controller/IEventBlockHandler;)V

    .line 428
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->dispose()V

    .line 429
    return-void
.end method

.method public excludedReopenDelimiters()[C
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 949
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->EXCLUDED_REOPEN_DELIMITERS:[C

    return-object v0
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
    .line 180
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 405
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->init()V

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 410
    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;-><init>(Lcom/sonyericsson/ned/controller/IBurstHandler;Lcom/sonyericsson/ned/model/IPredictive;)V

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->setEventBlockHandler(Lcom/sonyericsson/ned/controller/IEventBlockHandler;)V

    .line 413
    return-void
.end method

.method public initOptional()V
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->initOptional()V

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCurrentLanguage:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 972
    return-void
.end method

.method public onCandidatesCanceled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 976
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 977
    return-void
.end method

.method public onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "stemCharsLength"    # I
    .param p3, "composingCandidateIndex"    # I
    .param p4, "defaultCandidateIndex"    # I
    .param p5, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "cursorPos"    # I
    .param p7, "nbrCorrectionCandidates"    # I
    .param p8, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 963
    iput-object p5, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 964
    iput-object p8, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 965
    if-ltz p4, :cond_0

    .end local p4    # "defaultCandidateIndex":I
    :goto_0
    iput p4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLastCandidatesChangedDefaultCandidateIndex:I

    .line 967
    return-void

    .line 965
    .restart local p4    # "defaultCandidateIndex":I
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsDeleteRepeat:Z

    if-nez v0, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleDeleteIntoWord()Z

    .line 914
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "consumed":Z
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->prepareForTextEditingEvents()V

    .line 195
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v1, :cond_1

    .line 196
    check-cast p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleVirtualKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .line 200
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->submitTextEditingEvents()V

    .line 201
    return v0

    .line 197
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleCommandEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->cancelCandidateSelection()V

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mIsWordReopening:Z

    .line 906
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 890
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    invoke-virtual {p4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 891
    invoke-virtual {p4, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    new-array v4, v1, [C

    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEnablePartOfWordReopening:Z

    .line 892
    return-void

    :cond_0
    move v0, v1

    .line 891
    goto :goto_0
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 898
    return-void
.end method

.method public onNoPendingPredictions()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->onNoPendingPredictions()V

    .line 1056
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 924
    return-void
.end method

.method public onPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 8
    .param p1, "newPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    const/4 v7, 0x0

    .line 987
    invoke-direct {p0, p2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isReadyToProcessPredictions(Lcom/sonyericsson/ned/controller/PredictionType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 988
    array-length v4, p1

    if-lez v4, :cond_5

    .line 989
    aget-object v0, p1, v7

    .line 990
    .local v0, "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->getDefaultCandidateIndexDependingOnMode(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v3

    .line 994
    .local v3, "defaultCandidateIndex":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/IPredictive;->isExactMatchAvailableInDictionary()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1002
    const/4 v2, -0x1

    .line 1003
    .local v2, "composingTextIndex":I
    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 1024
    .local v1, "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    :goto_0
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->candidatesChanged([Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 1026
    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1035
    .end local v0    # "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .end local v2    # "composingTextIndex":I
    .end local v3    # "defaultCandidateIndex":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->updateComposingTextSpan()V

    .line 1037
    :cond_1
    return-void

    .line 1004
    .restart local v0    # "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v3    # "defaultCandidateIndex":I
    :cond_2
    sget-object v4, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p2, v4, :cond_3

    .line 1008
    const/4 v2, -0x1

    .line 1009
    .restart local v2    # "composingTextIndex":I
    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TRACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .restart local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    goto :goto_0

    .line 1010
    .end local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .end local v2    # "composingTextIndex":I
    :cond_3
    sget-object v4, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p2, v4, :cond_4

    .line 1014
    move v2, v3

    .line 1015
    .restart local v2    # "composingTextIndex":I
    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .restart local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    goto :goto_0

    .line 1020
    .end local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .end local v2    # "composingTextIndex":I
    :cond_4
    const/4 v2, 0x0

    .line 1021
    .restart local v2    # "composingTextIndex":I
    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .restart local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    goto :goto_0

    .line 1027
    .end local v0    # "candidateToShowInText":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "changeReason":Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .end local v2    # "composingTextIndex":I
    .end local v3    # "defaultCandidateIndex":I
    :cond_5
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mOngoingTrace:Z

    if-eqz v4, :cond_0

    .line 1029
    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v5, -0x1

    sget-object v6, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TRACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    invoke-direct {p0, v4, v5, v7, v6}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->candidatesChanged([Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    goto :goto_1
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->mCurrentLanguage:Ljava/lang/String;

    .line 884
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 920
    return-void
.end method

.method public onWordRemoved(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 928
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->removeCandidates()V

    .line 936
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 932
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->cancelCandidateSelection()V

    goto :goto_0

    .line 934
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleNewPrediction(ZZ)Z

    goto :goto_0
.end method

.method protected setCaseChanged(IZ)V
    .locals 2
    .param p1, "newCase"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 874
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->isOngoingCandidateSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->handleNewPrediction(ZZ)Z

    .line 877
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 875
    goto :goto_0
.end method

.method public supportsAdvancedVietnameseWordReopening()Z
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    return v0
.end method
