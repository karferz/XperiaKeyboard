.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
.super Ljava/lang/Object;
.source "PredictionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$EmptyPredictions;
    }
.end annotation


# instance fields
.field private mCaseMode:I

.field private mContactId:Ljava/lang/String;

.field private mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

.field private mDictionariesLoaded:Z

.field private mExactMatch:Ljava/lang/StringBuffer;

.field private mExactMatchAvailableInDictionary:Z

.field private mExactMatchOffset:I

.field private mFieldHint:Ljava/lang/String;

.field private mIncludeEmojisInPrediction:Z

.field private mIsAvertSpaceAfterTrace:Z

.field private mIsShiftToLowerCase:Z

.field private mIsUsingCaseResultFilter:Z

.field private mKeyboardMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

.field private mLastPhonepadKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private mLastSuccessfulStringPrediction:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mLastSuccessfulTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field private mMaxCandidates:I

.field private mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

.field private mPredictions:Lcom/touchtype_fluency/Predictions;

.field private mPrimaryLanguage:Ljava/lang/String;

.field private mPrimaryLanguageLocale:Ljava/util/Locale;

.field private mProcessedPredictions:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mResultFilter:Lcom/touchtype_fluency/ResultsFilter;

.field private mSession:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

.field private mSmartLanguageDetection:Z

.field private mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

.field private mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field private mUseOnceExactMatch:Ljava/lang/StringBuffer;

.field private mUseOnceTouchHistory:Lcom/touchtype_fluency/TouchHistory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 31
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsUsingCaseResultFilter:Z

    .line 43
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->NONE:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mKeyboardMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    .line 47
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguageLocale:Ljava/util/Locale;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguage:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mContactId:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulStringPrediction:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    .line 63
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 66
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$EmptyPredictions;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$EmptyPredictions;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 67
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mProcessedPredictions:[Lcom/sonyericsson/ned/model/CodePointString;

    return-void
.end method

.method public static clone(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .locals 2
    .param p0, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 78
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;-><init>()V

    .line 80
    .local v0, "predictionDataClone":Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 82
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsShiftToLowerCase:Z

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsShiftToLowerCase:Z

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 84
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mMaxCandidates:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mMaxCandidates:I

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mResultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mResultFilter:Lcom/touchtype_fluency/ResultsFilter;

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSession:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSession:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    .line 87
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsAvertSpaceAfterTrace:Z

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsAvertSpaceAfterTrace:Z

    .line 88
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mCaseMode:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mCaseMode:I

    .line 89
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsUsingCaseResultFilter:Z

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsUsingCaseResultFilter:Z

    .line 90
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIncludeEmojisInPrediction:Z

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIncludeEmojisInPrediction:Z

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mKeyboardMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mKeyboardMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastPhonepadKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastPhonepadKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 94
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSmartLanguageDetection:Z

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSmartLanguageDetection:Z

    .line 95
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDictionariesLoaded:Z

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDictionariesLoaded:Z

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguageLocale:Ljava/util/Locale;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguageLocale:Ljava/util/Locale;

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguage:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguage:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mContactId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mContactId:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mFieldHint:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mFieldHint:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceExactMatch:Ljava/lang/StringBuffer;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceExactMatch:Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulStringPrediction:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulStringPrediction:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 111
    return-object v0
.end method


# virtual methods
.method public appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "exactMatch"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 237
    return-void
.end method

.method public clearExactMatch()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 137
    return-void
.end method

.method public getCaseMode()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mCaseMode:I

    return v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    return-object v0
.end method

.method public getExactMatch()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getExactMatchOffset()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatchOffset:I

    return v0
.end method

.method public getFieldHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mFieldHint:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mKeyboardMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    return-object v0
.end method

.method public getLastPhonePadKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastPhonepadKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    return-object v0
.end method

.method public getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulStringPrediction:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getLastSuccessfulTouchHistory()Lcom/touchtype_fluency/TouchHistory;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    return-object v0
.end method

.method public getMaxCandidates()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mMaxCandidates:I

    return v0
.end method

.method public getPredictionType()Lcom/sonyericsson/ned/controller/PredictionType;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

    return-object v0
.end method

.method public getPredictions()Lcom/touchtype_fluency/Predictions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method public getPrimaryLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryLanguageLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguageLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mProcessedPredictions:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getResultFilter()Lcom/touchtype_fluency/ResultsFilter;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mResultFilter:Lcom/touchtype_fluency/ResultsFilter;

    return-object v0
.end method

.method public getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSession:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    return-object v0
.end method

.method public getTextFragment()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getTouchHistory()Lcom/touchtype_fluency/TouchHistory;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    return-object v0
.end method

.method public getUseOnceExactMatch()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceExactMatch:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getUseOnceTouchHistory()Lcom/touchtype_fluency/TouchHistory;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    return-object v0
.end method

.method public isAvertSpaceAfterTrace()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsAvertSpaceAfterTrace:Z

    return v0
.end method

.method public isDictionariesLoaded()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDictionariesLoaded:Z

    return v0
.end method

.method public isExactMatchAvailableInDictionary()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatchAvailableInDictionary:Z

    return v0
.end method

.method public isIncludeEmojisInPrediction()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIncludeEmojisInPrediction:Z

    return v0
.end method

.method public isReopenWord()Z
    .locals 2

    .prologue
    .line 669
    sget-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/controller/PredictionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 670
    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/controller/PredictionType;->equals(Ljava/lang/Object;)Z

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

.method public isShiftToLowerCase()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsShiftToLowerCase:Z

    return v0
.end method

.method public isSmartLanguageDetection()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSmartLanguageDetection:Z

    return v0
.end method

.method public isUsingCaseResultFilters()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsUsingCaseResultFilter:Z

    return v0
.end method

.method public setCaseMode(I)V
    .locals 0
    .param p1, "caseMode"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mCaseMode:I

    .line 459
    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mContactId:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setDefaultFilter(Lcom/touchtype_fluency/ResultsFilter;)V
    .locals 0
    .param p1, "defaultFilter"    # Lcom/touchtype_fluency/ResultsFilter;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    .line 659
    return-void
.end method

.method public setDictionariesLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mDictionariesLoaded:Z

    .line 569
    return-void
.end method

.method public setExactMatch(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "exactMatch"    # Ljava/lang/StringBuffer;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatch:Ljava/lang/StringBuffer;

    .line 130
    return-void
.end method

.method public setExactMatchAvailableInDictionary(Z)V
    .locals 0
    .param p1, "exactMatchAvailableInDictionary"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatchAvailableInDictionary:Z

    .line 351
    return-void
.end method

.method public setExactMatchOffset(I)V
    .locals 0
    .param p1, "exactMatchOffset"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mExactMatchOffset:I

    .line 369
    return-void
.end method

.method public setFieldHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldHint"    # Ljava/lang/String;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mFieldHint:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public setIncludeEmojisInPrediction(Z)V
    .locals 0
    .param p1, "includeEmojisInPrediction"    # Z

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIncludeEmojisInPrediction:Z

    .line 497
    return-void
.end method

.method public setIsAvertSpaceAfterTrace(Z)V
    .locals 0
    .param p1, "isAvertSpaceAfterTrace"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsAvertSpaceAfterTrace:Z

    .line 441
    return-void
.end method

.method public setIsUsingCaseResultFilters(Z)V
    .locals 0
    .param p1, "isUsingCaseResultFilter"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsUsingCaseResultFilter:Z

    .line 479
    return-void
.end method

.method public setKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;)V
    .locals 0
    .param p1, "keyboardMode"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mKeyboardMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    .line 515
    return-void
.end method

.method public setLastPhonePadKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p1, "lastPhonePadKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastPhonepadKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 533
    return-void
.end method

.method public setLastSuccessfulStringPrediction([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "lastSuccessfulStringPrediction"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulStringPrediction:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 274
    return-void
.end method

.method public setLastSuccessfulTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V
    .locals 0
    .param p1, "lastSuccessfulTouchHistory"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mLastSuccessfulTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 313
    return-void
.end method

.method public setMaxCandidates(I)V
    .locals 0
    .param p1, "maxCandidates"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mMaxCandidates:I

    .line 387
    return-void
.end method

.method public setPredictionType(Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 0
    .param p1, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictionType:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 209
    return-void
.end method

.method public setPredictions(Lcom/touchtype_fluency/Predictions;)V
    .locals 0
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 228
    return-void
.end method

.method public setPrimaryLanguageLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "primaryLanguageLocale"    # Ljava/util/Locale;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguageLocale:Ljava/util/Locale;

    .line 587
    return-void
.end method

.method public setPrimaryLanguages(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryLanguages"    # Ljava/lang/String;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mPrimaryLanguage:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setProcessedPredictions([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "processedPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mProcessedPredictions:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 255
    return-void
.end method

.method public setResultFilter(Lcom/touchtype_fluency/ResultsFilter;)V
    .locals 0
    .param p1, "resultFilter"    # Lcom/touchtype_fluency/ResultsFilter;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mResultFilter:Lcom/touchtype_fluency/ResultsFilter;

    .line 405
    return-void
.end method

.method public setShiftToLowerCase(Z)V
    .locals 0
    .param p1, "shiftToLower"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mIsShiftToLowerCase:Z

    .line 173
    return-void
.end method

.method public setSmartLanguageDetection(Z)V
    .locals 0
    .param p1, "smartLanguageDetection"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSmartLanguageDetection:Z

    .line 551
    return-void
.end method

.method public setSwiftKeySession(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;)V
    .locals 0
    .param p1, "swiftKeySession"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mSession:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    .line 423
    return-void
.end method

.method public setTextFragment(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "textFragment"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTextFragment:Lcom/sonyericsson/ned/model/CodePointString;

    .line 155
    return-void
.end method

.method public setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V
    .locals 0
    .param p1, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 191
    return-void
.end method

.method public setUseOnceExactMatch(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "useOnceExactMatch"    # Ljava/lang/StringBuffer;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceExactMatch:Ljava/lang/StringBuffer;

    .line 333
    return-void
.end method

.method public setUseOnceTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V
    .locals 0
    .param p1, "useOnceTouchHistory"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->mUseOnceTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 295
    return-void
.end method
