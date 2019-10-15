.class public Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;
.super Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;
.source "CSingletapInputMethod.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;
.implements Lcom/sonyericsson/ned/controller/IRemoveWordsListener;
.implements Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.implements Lcom/sonyericsson/ned/controller/IPredictionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z = false

.field private static final INPUT_MODE_SYMBOLS:Ljava/lang/String; = "input-mode-symbols"

.field private static final NO_COMPOSING_CANDIDATE_INDEX:I = -0x1

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

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private final mCandidateAutoSpace:Z

.field private mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

.field private mCurrentCandidateIndex:I

.field private mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mCurrentOpenWord:Lcom/sonyericsson/ned/model/CodePointString;

.field private mCursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private final mEnableWordReopening:Z

.field private mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

.field private mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

.field private mIsDeleteRepeat:Z

.field private mIsLastKeyDelete:Z

.field private mIsLongpress:Z

.field private mIsNumericMode:Z

.field private mKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field private mLastInsertionWasACandidate:Z

.field private mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field private final mMaxCandidates:I

.field private mPredictionSuccessful:Z

.field private mPrevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

.field private mPreviousWord:Lcom/sonyericsson/ned/model/CodePointString;

.field private mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->TAG:Ljava/lang/String;

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x3

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "toggle-keyboard-mode"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "select-candidate"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "delete-previous-grapheme"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "repeat-delete-previous-grapheme"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "perform-enter-key-action"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "close-word"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/EventObject;

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 87
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_REQUIRED:[Ljava/lang/Class;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v2, v1, v4

    const-class v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    aput-object v2, v1, v5

    const-class v2, Lcom/sonyericsson/ned/model/IPredictive;

    aput-object v2, v1, v6

    const-class v2, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-class v3, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZI)V
    .locals 1
    .param p1, "candidateAutoSpace"    # Z
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "enableWordReopening"    # Z
    .param p4, "maxCandidates"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;-><init>()V

    .line 96
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 108
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 123
    iput-boolean p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateAutoSpace:Z

    .line 124
    iput-boolean p3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mEnableWordReopening:Z

    .line 125
    iput p4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mMaxCandidates:I

    .line 126
    const-string v0, "input-mode-symbols"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsNumericMode:Z

    .line 127
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private appendToComposingTextAndFinish(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "string"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 689
    return-void
.end method

.method private deleteIntoWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "previousWord"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textBeforeWord"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPreviousWord:Lcom/sonyericsson/ned/model/CodePointString;

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/ned/model/IPredictive;->getReopenWordPrediction(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V

    .line 521
    return-void
.end method

.method private fireCandidateSelectedEvent(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-eqz v1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 153
    .local v0, "wordSuggesterListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    sget-object v4, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->UNKNOWN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-interface {v0, p0, p1, v4}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "wordSuggesterListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private fireCandidatesCancelEvent()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-eqz v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 163
    .local v0, "wordSuggesterListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidatesCanceled(Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "wordSuggesterListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private fireCandidatesStartingEvent(I[Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 12
    .param p1, "stemCharsLength"    # I
    .param p2, "candidateList"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "cursorPos"    # I
    .param p4, "nbrSpellingCandidates"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-eqz v1, :cond_0

    .line 141
    iget-object v10, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v0, v10, v9

    .line 142
    .local v0, "wordSuggesterListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    const/4 v3, -0x1

    iget v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    sget-object v8, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->SINGLETAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v0 .. v8}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;->onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 141
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 147
    .end local v0    # "wordSuggesterListener":Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
    :cond_0
    return-void
.end method

.method private fireOnWordNotInDictionary()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    if-eqz v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 132
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;
    invoke-interface {v0}, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;->onWordNotInDictionary()V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;
    :cond_0
    return-void
.end method

.method private getKeyCandidate(Lcom/sonyericsson/ned/controller/VirtualKey;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v2, p1, v3}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 285
    .local v0, "charactersOnKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    .line 286
    aget-object v1, v0, v3

    .line 290
    .local v1, "keyCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v1

    .line 288
    .end local v1    # "keyCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .restart local v1    # "keyCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    goto :goto_0
.end method

.method private handleAutoAccept()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->getNumberOfKeys()I

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 564
    :cond_0
    return-void
.end method

.method private handleCommandEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 5
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v4, 0x0

    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "consumed":Z
    const-string v2, "toggle-keyboard-mode"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 396
    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_0
    :goto_0
    return v0

    .line 363
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    const-string v2, "delete-previous-grapheme"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "repeat-delete-previous-grapheme"

    .line 364
    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 365
    :cond_2
    const-string v2, "repeat-delete-previous-grapheme"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsDeleteRepeat:Z

    .line 368
    :cond_3
    const-string v2, "delete-previous-grapheme"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsDeleteRepeat:Z

    .line 371
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleDeletePreviousGrapheme()Z

    move-result v0

    goto :goto_0

    .line 372
    :cond_5
    const-string v2, "close-word"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 374
    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLastInsertionWasACandidate:Z

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :cond_6
    const-string v2, "perform-enter-key-action"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleEnterAction()V

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :cond_7
    const-string v2, "select-candidate"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, "data":Ljava/lang/Object;
    instance-of v2, v1, Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v2, :cond_9

    .line 385
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    .line 386
    iget v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 387
    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->manualSelectCandidate(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_0

    .line 389
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_8
    iput v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    goto :goto_0

    .line 392
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->manualSelectCandidate(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_0
.end method

.method private handleDeleteIntoWord()Z
    .locals 9

    .prologue
    .line 488
    const/4 v6, 0x0

    .line 490
    .local v6, "consumed":Z
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mEnableWordReopening:Z

    if-eqz v0, :cond_1

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLastInsertionWasACandidate:Z

    .line 492
    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->supportsAdvancedVietnameseWordReopening()Z

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 491
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->getReopenData(Lcom/sonyericsson/ned/model/CodePointString;ZZZZ)Lcom/sonyericsson/ned/controller/method/ReopenData;

    move-result-object v8

    .line 493
    .local v8, "reopenData":Lcom/sonyericsson/ned/controller/method/ReopenData;
    if-eqz v8, :cond_1

    .line 494
    iget-object v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wordInText:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v7

    .line 499
    .local v7, "length":I
    if-lez v7, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0, v7}, Lcom/sonyericsson/ned/model/ITextBuffer;->suitableToReSetComposingText(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 500
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wasPreviousWordPredicted:Z

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    iget-object v0, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->wordInText:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v1, v8, Lcom/sonyericsson/ned/controller/method/ReopenData;->textBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->deleteIntoWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 510
    const/4 v6, 0x1

    .line 514
    .end local v7    # "length":I
    .end local v8    # "reopenData":Lcom/sonyericsson/ned/controller/method/ReopenData;
    :cond_1
    return v6
.end method

.method private handleDeletePreviousGrapheme()Z
    .locals 5

    .prologue
    .line 424
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLastKeyDelete:Z

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/IPredictive;->getNumberOfKeys()I

    move-result v1

    if-lez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/IPredictive;->removeLastIndex()I

    .line 436
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-interface {v1, v2, v3, v4}, Lcom/sonyericsson/ned/model/IPredictive;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 437
    const/4 v0, 0x1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->isInMiddleOfWord()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->isAtEndOfWord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->noComposingTextAndCursorIsAtTheEndOfWord()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsDeleteRepeat:Z

    if-nez v1, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleDeleteIntoWord()Z

    move-result v0

    goto :goto_0
.end method

.method private handleEnterAction()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 421
    return-void
.end method

.method private handleVirtualKeyLongPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 8
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 331
    const/4 v1, 0x0

    .line 334
    .local v1, "consumed":Z
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v3

    .line 335
    .local v3, "keyObject":Ljava/lang/Object;
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPrevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    if-nez v6, :cond_0

    const/4 v4, 0x0

    .line 336
    .local v4, "prevKeyObject":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    :goto_1
    return v5

    .line 335
    .end local v4    # "prevKeyObject":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPrevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-virtual {v6}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 341
    .restart local v4    # "prevKeyObject":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v6, p1, v5}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 342
    .local v0, "choices":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    aget-object v6, v0, v5

    if-eqz v6, :cond_3

    .line 343
    invoke-static {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->findDigitInArray([Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v2

    .line 344
    .local v2, "digitIndex":I
    iput-boolean v7, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLongpress:Z

    .line 347
    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    .line 348
    aget-object v5, v0, v2

    invoke-direct {p0, v5}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->appendToComposingTextAndFinish(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 352
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .end local v2    # "digitIndex":I
    :cond_3
    move v5, v1

    .line 354
    goto :goto_1

    .line 349
    .restart local v2    # "digitIndex":I
    :cond_4
    array-length v6, v0

    if-ne v6, v7, :cond_2

    .line 350
    aget-object v5, v0, v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->appendToComposingTextAndFinish(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_2
.end method

.method private handleVirtualKeyPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLongpress:Z

    .line 323
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPrevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method private handleVirtualKeyRelease(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 184
    const/4 v1, 0x0

    .line 190
    .local v1, "consumed":Z
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLastKeyDelete:Z

    .line 191
    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLongpress:Z

    if-eqz v3, :cond_0

    .line 192
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLongpress:Z

    .line 225
    :goto_0
    return v2

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->ongoingPrediction()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleAutoAccept()V

    .line 200
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->getKeyCandidate(Lcom/sonyericsson/ned/controller/VirtualKey;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 201
    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsNumericMode:Z

    if-nez v3, :cond_3

    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->isKeyValidForPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v2, p1}, Lcom/sonyericsson/ned/model/IPredictive;->processPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPredictionSuccessful:Z

    .line 203
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-interface {v2, v3, v5, v4}, Lcom/sonyericsson/ned/model/IPredictive;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 204
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 225
    goto :goto_0

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 213
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v3, p1, v5}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 214
    .local v0, "characters":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v3, v0

    if-ne v3, v2, :cond_4

    .line 215
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 223
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 217
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->setCandidatesAndComposingText([Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_2
.end method

.method private hasWordDelimiter(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v3, p1, v2}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 178
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    invoke-virtual {v3, v2}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    new-array v4, v2, [C

    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isAtEndOfWord()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 469
    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->excludedReopenDelimiters()[C

    move-result-object v1

    .line 468
    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEndOfWord(Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v0

    return v0
.end method

.method private isInMiddleOfWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 464
    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->excludedReopenDelimiters()[C

    move-result-object v2

    .line 463
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInTheMiddleOfAWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v0

    return v0
.end method

.method private isKeyValidForPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->hasWordDelimiter(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/IPredictive;->hasPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOneCharacterCandidate(Lcom/sonyericsson/ned/model/CodePointString;I)Z
    .locals 2
    .param p1, "keyCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "numberOfKeys"    # I

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextEqualToCurrentSelectedCandidate(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 4
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x0

    .line 607
    iget v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 617
    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The candidate index is out of bounds with the current candidates. Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", candidates length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->ongoingPrediction()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private manualSelectCandidate(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLastInsertionWasACandidate:Z

    .line 403
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 404
    .local v0, "textInView":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 406
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v2, v0, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 410
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateAutoSpace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/IPredictive;->useSpaceAsWordSeparator()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 413
    :cond_1
    return-void
.end method

.method private noComposingTextAndCursorIsAtTheEndOfWord()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 473
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 474
    .local v1, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v4

    new-array v5, v3, [C

    invoke-static {v4, v5}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 476
    .local v0, "lastCharacterIsDelimiter":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v0    # "lastCharacterIsDelimiter":Z
    :cond_0
    move v0, v3

    .line 475
    goto :goto_0

    .restart local v0    # "lastCharacterIsDelimiter":Z
    :cond_1
    move v2, v3

    .line 476
    goto :goto_1
.end method

.method private ongoingPrediction()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareForTextEditingEvents()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->beginBatchEdit()Z

    .line 554
    return-void
.end method

.method private reOpenComposingText(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/ITextBuffer;->reSetComposingText(I)Z

    move-result v0

    return v0
.end method

.method private removeCandidates()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->fireCandidatesCancelEvent()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    .line 171
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPrevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->removeAllIndices()V

    .line 174
    return-void
.end method

.method private setCandidatesAndComposingText([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 3
    .param p1, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 302
    array-length v0, p1

    if-lez v0, :cond_0

    .line 303
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->getDefaultCandidateIndex()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLatestPredictedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->removeCandidates()V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    goto :goto_0
.end method

.method private submitTextEditingEvents()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->endBatchEdit()Z

    .line 558
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
    .line 582
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    if-ne p2, v0, :cond_0

    .line 583
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCandidateSelectionVisualization:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener;

    .line 590
    :goto_0
    return-object v0

    .line 585
    :cond_0
    const-class v0, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    if-ne p2, v0, :cond_1

    .line 586
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mWordNotInDictionaryListeners:[Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    goto :goto_0

    .line 590
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
    .line 568
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 569
    const-class v0, Lcom/sonyericsson/ned/model/IPredictive;

    if-ne p2, v0, :cond_1

    .line 570
    check-cast p1, Lcom/sonyericsson/ned/model/IPredictive;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 571
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_2

    .line 572
    check-cast p1, Lcom/sonyericsson/ned/controller/ICursor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 573
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    if-ne p2, v0, :cond_3

    .line 574
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    goto :goto_0

    .line 575
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_0

    .line 576
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->setEventBlockHandler(Lcom/sonyericsson/ned/controller/IEventBlockHandler;)V

    .line 709
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->dispose()V

    .line 710
    return-void
.end method

.method public excludedReopenDelimiters()[C
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    new-array v0, v0, [C

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
    .line 595
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 698
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->init()V

    .line 699
    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;-><init>(Lcom/sonyericsson/ned/controller/IBurstHandler;Lcom/sonyericsson/ned/model/IPredictive;)V

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->setEventBlockHandler(Lcom/sonyericsson/ned/controller/IEventBlockHandler;)V

    .line 701
    const-string v0, "input-mode-symbols"

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsNumericMode:Z

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/model/IPredictive;->registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 703
    return-void
.end method

.method public onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 747
    return-void
.end method

.method public onCandidatesCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 752
    return-void
.end method

.method public onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "stemCharsLength"    # I
    .param p3, "composingCandidateIndex"    # I
    .param p4, "defaultCandidateIndex"    # I
    .param p5, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "cursorPos"    # I
    .param p7, "nbrCorrectionCandidates"    # I
    .param p8, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 729
    iput-object p5, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 739
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 740
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    .line 742
    :cond_0
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
    .line 665
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 3
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "consumed":Z
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->prepareForTextEditingEvents()V

    .line 535
    instance-of v2, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v2, :cond_4

    move-object v1, p1

    .line 536
    check-cast v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 537
    .local v1, "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleVirtualKeyRelease(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .line 548
    .end local v1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->submitTextEditingEvents()V

    .line 549
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 539
    .restart local v1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleVirtualKeyPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    goto :goto_0

    .line 541
    :cond_3
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleVirtualKeyLongPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    goto :goto_0

    .line 546
    .end local v1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->handleCommandEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v0

    goto :goto_0

    .line 549
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 638
    invoke-direct {p0, p4}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->isTextEqualToCurrentSelectedCandidate(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->fireCandidateSelectedEvent(I)V

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->removeCandidates()V

    .line 642
    return-void
.end method

.method public onInputModeAdvice(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 693
    const-string v0, "input-mode-symbols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsNumericMode:Z

    .line 694
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

    .line 629
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->removeCandidates()V

    .line 630
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLastInsertionWasACandidate:Z

    invoke-virtual {p4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 631
    invoke-virtual {p4, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    new-array v4, v1, [C

    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mLastInsertionWasACandidate:Z

    .line 632
    return-void

    :cond_0
    move v0, v1

    .line 631
    goto :goto_0
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 656
    iput-object p4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentOpenWord:Lcom/sonyericsson/ned/model/CodePointString;

    .line 657
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentOpenWord:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->removeCandidates()V

    .line 660
    :cond_0
    return-void
.end method

.method public onNoPendingPredictions()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->onNoPendingPredictions()V

    .line 280
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 676
    invoke-static {p2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v2}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v2

    .line 678
    invoke-virtual {v2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v2

    const/4 v3, 0x0

    .line 677
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->fireCandidatesStartingEvent(I[Lcom/sonyericsson/ned/model/CodePointString;II)V

    .line 680
    :cond_0
    return-void
.end method

.method public onPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 5
    .param p1, "newPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p2, v1, :cond_4

    .line 237
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mIsLastKeyDelete:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->setCandidatesAndComposingText([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPredictionSuccessful:Z

    if-eqz v1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 241
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->setCandidatesAndComposingText([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 255
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->submitTextEditingEvents()V

    goto :goto_0

    .line 242
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPredictionSuccessful:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->ongoingPrediction()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 243
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/IPredictive;->getNumberOfKeys()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->isOneCharacterCandidate(Lcom/sonyericsson/ned/model/CodePointString;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    new-array v1, v3, [Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->setCandidatesAndComposingText([Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_1

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/IPredictive;->removeLastIndex()I

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->predictive:Lcom/sonyericsson/ned/model/IPredictive;

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v3, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-interface {v1, v2, v4, v3}, Lcom/sonyericsson/ned/model/IPredictive;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->fireOnWordNotInDictionary()V

    goto :goto_1

    .line 257
    :cond_4
    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p2, v1, :cond_0

    .line 258
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 259
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->ongoingPrediction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPreviousWord:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->findWordInArray(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    .line 262
    .local v0, "wordIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 264
    iput v4, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    .line 265
    new-array v1, v3, [Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPreviousWord:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 272
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPreviousWord:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->reOpenComposingText(I)Z

    goto :goto_0

    .line 269
    :cond_5
    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidateIndex:I

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mCurrentCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->mPreviousWord:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v2, v1, v0

    goto :goto_2
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 603
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->removeCandidates()V

    .line 604
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
    .line 672
    return-void
.end method

.method public onWordRemoved(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 717
    :cond_0
    return-void
.end method
