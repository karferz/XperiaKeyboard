.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
.super Landroid/os/AsyncTask;
.source "PredictionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sonyericsson/ned/model/CodePointString;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHARACTERS_AFTER_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEBUG_VERBOSE:Z = false

.field private static final PHONE_PAD_PREFIX_PROBABILITY:F = 0.001f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

.field private mIsAddExactMatch:Z

.field private mIsNextWordPrediction:Z

.field private mIsTracePrediction:Z

.field private final mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

.field private mPredictionTaskListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;

.field private final mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "^(\\d+\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->CHARACTERS_AFTER_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "swiftKeyEngine"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "emojiUsageTracker"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 73
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 74
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .line 75
    return-void
.end method

.method private fireOnPostPostExecuteOrCancel()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionTaskListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;->onPostPostExecuteOrCancel(Landroid/os/AsyncTask;)V

    .line 234
    return-void
.end method

.method private firePredictionTaskDone()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionTaskListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;->onPredictionTaskFinished(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V

    .line 230
    return-void
.end method

.method private getAppropriateTouchHistory()Lcom/touchtype_fluency/TouchHistory;
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 201
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 198
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    goto :goto_0
.end method

.method private getNextWords()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTextFragment()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v3}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getResultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v4

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->predict(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 190
    .local v0, "processedPredictions":[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setProcessedPredictions([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 191
    return-object v0
.end method

.method private getNonApostropheLength(Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 2
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 560
    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 562
    .local v0, "apostropheOffset":I
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    sub-int/2addr v1, v0

    return v1

    .line 560
    .end local v0    # "apostropheOffset":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 28

    .prologue
    .line 243
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v19, "processedPredictions":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    const/4 v4, 0x0

    .line 245
    .local v4, "addedPictogram":Lcom/touchtype_fluency/Prediction;
    const/4 v8, 0x0

    .line 247
    .local v8, "firstNonPictogramPrediction":Lcom/touchtype_fluency/Prediction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceExactMatch()Ljava/lang/StringBuffer;

    move-result-object v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    .line 248
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceExactMatch()Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 250
    .local v7, "exactMatch":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setUseOnceExactMatch(Ljava/lang/StringBuffer;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchAvailableInDictionary(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchOffset(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/touchtype_fluency/Predictions;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/touchtype_fluency/Prediction;

    .line 255
    .local v16, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v18

    .line 256
    .local v18, "predictionString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsTracePrediction:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v23, v24, v26

    if-eqz v23, :cond_0

    .line 257
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 263
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v12

    .line 270
    .local v12, "isPictogram":Z
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsTracePrediction:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v23, v0

    .line 271
    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isIncludeEmojisInPrediction()Z

    move-result v23

    if-eqz v23, :cond_d

    if-nez v4, :cond_d

    const/16 v23, 0x0

    .line 272
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isBlacklistedPictogram(I)Z

    move-result v23

    if-nez v23, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    if-eqz v8, :cond_2

    .line 275
    invoke-virtual {v8}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v23

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isEmojiKeywordMatch(Lcom/touchtype_fluency/Prediction;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    :cond_2
    const/4 v9, 0x1

    .line 280
    .local v9, "isAllowedPictogram":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTextFragment()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_e

    const/4 v5, 0x1

    .line 281
    .local v5, "allowWhitelist":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isAllowedPrediction(Ljava/lang/String;Z)Z

    move-result v10

    .line 285
    .local v10, "isAllowedPrediction":Z
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v17

    .line 286
    .local v17, "predictionCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Prediction;->getSource()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchAvailableInDictionary(Z)V

    .line 295
    :cond_3
    if-nez v8, :cond_f

    if-nez v12, :cond_f

    if-eqz v10, :cond_f

    .line 296
    move-object/from16 v8, v16

    .line 301
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    move/from16 v23, v0

    if-nez v23, :cond_4

    if-eqz v4, :cond_4

    .line 304
    invoke-virtual {v8}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isEmojiKeywordMatch(Lcom/touchtype_fluency/Prediction;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 310
    invoke-virtual {v4}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v23

    .line 309
    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    :cond_4
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getMaxCandidates()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 331
    .end local v5    # "allowWhitelist":Z
    .end local v9    # "isAllowedPictogram":Z
    .end local v10    # "isAllowedPrediction":Z
    .end local v12    # "isPictogram":Z
    .end local v16    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v17    # "predictionCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v18    # "predictionString":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsTracePrediction:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    if-nez v8, :cond_6

    .line 335
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 338
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsAddExactMatch:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v22

    if-lez v22, :cond_8

    .line 339
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsTracePrediction:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 346
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v23, v0

    .line 347
    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getMaxCandidates()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 348
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 359
    sget-object v22, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->CHARACTERS_AFTER_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 360
    .local v15, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    .line 363
    .local v11, "isCharacterAfterNumberPrediction":Z
    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v22

    .line 362
    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordIncludingExcludedWordDelimiters(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v13

    .line 364
    .local v13, "isPredictionIncludingExcludedWordDelimiters":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    if-eqz v8, :cond_12

    if-nez v11, :cond_12

    if-nez v13, :cond_12

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchOffset(I)V

    .line 377
    .end local v11    # "isCharacterAfterNumberPrediction":Z
    .end local v13    # "isPredictionIncludingExcludedWordDelimiters":Z
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isReopenWord()Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v22

    sget-object v23, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    .line 380
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 379
    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v20

    .line 381
    .local v20, "theReopenedWord":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v22

    if-eqz v22, :cond_9

    .line 382
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 385
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchOffset(I)V

    .line 388
    .end local v20    # "theReopenedWord":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v22

    sget-object v23, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    .line 390
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastPhonePadKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v22

    if-eqz v22, :cond_13

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastPhonePadKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v22

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isShifted()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v14

    .line 397
    .local v14, "keyCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v0, v14

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    aget-object v6, v14, v22

    .line 398
    .local v6, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 399
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 248
    .end local v6    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v7    # "exactMatch":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v14    # "keyCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    .line 249
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    goto/16 :goto_0

    .line 274
    .restart local v7    # "exactMatch":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v12    # "isPictogram":Z
    .restart local v16    # "prediction":Lcom/touchtype_fluency/Prediction;
    .restart local v18    # "predictionString":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 280
    .restart local v9    # "isAllowedPictogram":Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 313
    .restart local v5    # "allowWhitelist":Z
    .restart local v10    # "isAllowedPrediction":Z
    .restart local v17    # "predictionCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_f
    if-eqz v10, :cond_4

    if-nez v9, :cond_10

    if-nez v12, :cond_4

    .line 314
    :cond_10
    if-nez v12, :cond_11

    .line 315
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 317
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    move-object/from16 v23, v0

    .line 318
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->getMostUsedSkinToneVariant(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v23

    .line 317
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    move-object/from16 v4, v16

    goto/16 :goto_3

    .line 369
    .end local v5    # "allowWhitelist":Z
    .end local v9    # "isAllowedPictogram":Z
    .end local v10    # "isAllowedPrediction":Z
    .end local v12    # "isPictogram":Z
    .end local v16    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v17    # "predictionCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v18    # "predictionString":Ljava/lang/String;
    .restart local v11    # "isCharacterAfterNumberPrediction":Z
    .restart local v13    # "isPredictionIncludingExcludedWordDelimiters":Z
    .restart local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchOffset(I)V

    goto/16 :goto_4

    .line 403
    .end local v11    # "isCharacterAfterNumberPrediction":Z
    .end local v13    # "isPredictionIncludingExcludedWordDelimiters":Z
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_13
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_14

    const/16 v22, 0x0

    .line 404
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonyericsson/ned/model/CodePointString;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getNonApostropheLength(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    .line 408
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonyericsson/ned/model/CodePointString;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-object/from16 v24, v0

    .line 409
    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v21

    .line 410
    .local v21, "trimmedFirstWord":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 411
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 415
    .end local v21    # "trimmedFirstWord":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_14
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lcom/sonyericsson/ned/model/CodePointString;

    move-object/from16 v22, v0

    .line 414
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/sonyericsson/ned/model/CodePointString;

    return-object v22
.end method

.method private getResultFilter()Lcom/touchtype_fluency/ResultsFilter;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getCaseMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    :goto_0
    return-object v0

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    goto :goto_0

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTypedWords()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    .line 119
    .local v2, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v0

    .line 121
    .local v0, "parameterSet":Lcom/touchtype_fluency/ParameterSet;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->setTemporaryParameters(Lcom/touchtype_fluency/ParameterSet;)V

    .line 122
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTextFragment()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->predict(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;)Lcom/touchtype_fluency/Predictions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->resetTemporaryParameters(Lcom/touchtype_fluency/ParameterSet;)V

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 127
    .local v1, "processedPredictions":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulStringPrediction([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 129
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 130
    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    .line 129
    invoke-virtual {v2, v4}, Lcom/touchtype_fluency/TouchHistory;->takeFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 136
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsTracePrediction:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isAvertSpaceAfterTrace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 152
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setUseOnceTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 153
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setProcessedPredictions([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 154
    return-object v1

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 147
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastPhonePadKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 148
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->processPhonePadPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    goto :goto_0
.end method

.method private isAllowedPrediction(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "prediction"    # Ljava/lang/String;
    .param p2, "allowWhitelist"    # Z

    .prologue
    const/4 v3, 0x1

    .line 513
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isSmartLanguageDetection()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v3

    .line 517
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 518
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v4

    .line 517
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "lowerCasePrediction":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    .line 520
    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v2

    .line 522
    .local v2, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isPredictionInPrimaryModel(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z

    move-result v0

    .line 523
    .local v0, "isInPrimaryModel":Z
    if-nez v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 524
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isPredictionInPrimaryModel(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z

    move-result v0

    .line 527
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isPredictionInDisabledModels(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_3

    .line 528
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isPredictionInWhiteListDatabase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isEmojiKeywordMatch(Lcom/touchtype_fluency/Prediction;Ljava/lang/String;)Z
    .locals 6
    .param p1, "emoji"    # Lcom/touchtype_fluency/Prediction;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-virtual {p1}, Lcom/touchtype_fluency/Prediction;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Term;

    .line 547
    .local v2, "term":Lcom/touchtype_fluency/Term;
    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v0

    .line 549
    .local v0, "emojiEncodingSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 550
    .local v1, "encoding":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 552
    const/4 v3, 0x1

    .line 556
    .end local v0    # "emojiEncodingSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "term":Lcom/touchtype_fluency/Term;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPredictionInDisabledModels(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z
    .locals 1
    .param p1, "prediction"    # Ljava/lang/String;
    .param p2, "predictor"    # Lcom/touchtype_fluency/Predictor;

    .prologue
    .line 542
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->disabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    return v0
.end method

.method private isPredictionInPrimaryModel(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z
    .locals 2
    .param p1, "prediction"    # Ljava/lang/String;
    .param p2, "predictor"    # Lcom/touchtype_fluency/Predictor;

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 534
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    .line 532
    invoke-interface {p2, p1, v0}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    return v0
.end method

.method private isPredictionInWhiteListDatabase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prediction"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isWordInWhiteListDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isShifted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 498
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getCaseMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 499
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getCaseMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printWhiteListedWords()V
    .locals 5

    .prologue
    .line 581
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createWhiteListDatabase()Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    move-result-object v1

    .line 582
    .local v1, "whiteListDatabase":Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mContext:Landroid/content/Context;

    invoke-interface {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;->getAllWords(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "whiteListedWords":[Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindwhiteListDatabase(Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;)V

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .local v3, "whitelistOutput":Ljava/lang/StringBuilder;
    const-string v4, "[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    if-eqz v2, :cond_1

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 588
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_0

    .line 590
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "i":I
    :cond_1
    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    return-void
.end method

.method private processPhonePadPredictions()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 160
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastPhonePadKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v4

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isShifted()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 163
    .local v1, "keyCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 164
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 165
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    aget-object v3, v4, v6

    .line 172
    .local v3, "stem":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    array-length v4, v1

    new-array v2, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 174
    .local v2, "processedPredictions":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 175
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    aput-object v4, v2, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "i":I
    .end local v2    # "processedPredictions":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "stem":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 168
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    aget-object v4, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    aget-object v5, v5, v6

    .line 169
    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 167
    invoke-static {v4, v6, v5}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .restart local v3    # "stem":Lcom/sonyericsson/ned/model/CodePointString;
    goto :goto_0

    .line 178
    .restart local v0    # "i":I
    .restart local v2    # "processedPredictions":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulStringPrediction([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 179
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 180
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/touchtype_fluency/TouchHistory;->takeFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 181
    return-object v2
.end method

.method private resetTemporaryParameters(Lcom/touchtype_fluency/ParameterSet;)V
    .locals 4
    .param p1, "parameterSet"    # Lcom/touchtype_fluency/ParameterSet;

    .prologue
    .line 468
    const-string v2, "input-model"

    const-string v3, "prefix-probability"

    invoke-interface {p1, v2, v3}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    .line 470
    .local v1, "parameter":Lcom/touchtype_fluency/Parameter;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v2, v3, :cond_0

    .line 472
    const v2, 0x3a83126f    # 0.001f

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v1}, Lcom/touchtype_fluency/Parameter;->reset()V

    goto :goto_0

    .line 473
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private setTemporaryParameters(Lcom/touchtype_fluency/ParameterSet;)V
    .locals 5
    .param p1, "parameterSet"    # Lcom/touchtype_fluency/ParameterSet;

    .prologue
    .line 482
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v3, v4, :cond_1

    .line 483
    const v2, 0x3a83126f    # 0.001f

    .line 484
    .local v2, "prefixProbability":F
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 485
    const/4 v2, 0x0

    .line 487
    :cond_0
    const-string v3, "input-model"

    const-string v4, "prefix-probability"

    invoke-interface {p1, v3, v4}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    .line 490
    .local v1, "parameter":Lcom/touchtype_fluency/Parameter;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 495
    .end local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    .end local v2    # "prefixProbability":F
    :cond_1
    :goto_0
    return-void

    .line 491
    .restart local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    .restart local v2    # "prefixProbability":F
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->doInBackground([Ljava/lang/Void;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictionType()Lcom/sonyericsson/ned/controller/PredictionType;

    move-result-object v0

    .line 92
    .local v0, "predictionType":Lcom/sonyericsson/ned/controller/PredictionType;
    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    .line 93
    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsTracePrediction:Z

    .line 96
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    if-nez v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsAddExactMatch:Z

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 113
    :goto_3
    return-object v1

    :cond_0
    move v1, v3

    .line 92
    goto :goto_0

    :cond_1
    move v1, v3

    .line 93
    goto :goto_1

    :cond_2
    move v2, v3

    .line 96
    goto :goto_2

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getAppropriateTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getTypedWords()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    goto :goto_3

    .line 110
    :cond_4
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mIsNextWordPrediction:Z

    if-eqz v1, :cond_5

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getNextWords()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    goto :goto_3

    .line 113
    :cond_5
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_3
.end method

.method public getPredictionData()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->onCancelled([Lcom/sonyericsson/ned/model/CodePointString;)V

    return-void
.end method

.method protected onCancelled([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "predictions"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->fireOnPostPostExecuteOrCancel()V

    .line 209
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->onPostExecute([Lcom/sonyericsson/ned/model/CodePointString;)V

    return-void
.end method

.method protected onPostExecute([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "predictions"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isShiftToLowerCase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 219
    aget-object v2, p1, v0

    .line 220
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "lowerCaseCandidate":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, p1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    .end local v1    # "lowerCaseCandidate":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->firePredictionTaskDone()V

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->fireOnPostPostExecuteOrCancel()V

    .line 226
    return-void
.end method

.method protected predict(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;)Lcom/touchtype_fluency/Predictions;
    .locals 2
    .param p1, "contextString"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "currentInput"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isUsingCaseResultFilters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->getResultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setResultFilter(Lcom/touchtype_fluency/ResultsFilter;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getResultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->predict(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    return-object v0
.end method

.method protected predict(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
    .locals 4
    .param p1, "contextString"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "currentInput"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "resultFilter"    # Lcom/touchtype_fluency/ResultsFilter;

    .prologue
    .line 427
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    .line 428
    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v1

    .line 429
    .local v1, "tokenizer":Lcom/touchtype_fluency/Tokenizer;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/touchtype_fluency/Tokenizer$Mode;->DONT_INCLUDE_WHITESPACE:Lcom/touchtype_fluency/Tokenizer$Mode;

    invoke-interface {v1, v2, v3}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;Lcom/touchtype_fluency/Tokenizer$Mode;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 437
    .local v0, "context":Lcom/touchtype_fluency/Sequence;
    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 443
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getContactId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getContactId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getContactId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v2

    .line 463
    invoke-interface {v2, v0, p2, p3}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    return-object v2

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getFieldHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPredictionTaskListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;)V
    .locals 0
    .param p1, "predictionTaskListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->mPredictionTaskListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;

    .line 602
    return-void
.end method
