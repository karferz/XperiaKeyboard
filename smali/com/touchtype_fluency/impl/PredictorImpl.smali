.class public Lcom/touchtype_fluency/impl/PredictorImpl;
.super Ljava/lang/Object;
.source "PredictorImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/Predictor;
.implements Lcom/touchtype_fluency/Session;
.implements Lcom/touchtype_fluency/Trainer;


# instance fields
.field private dynamicParameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

.field private inputMapperImpl:Lcom/touchtype_fluency/impl/InputMapperImpl;

.field private keyPressModelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/impl/KeyPressModelImpl;",
            ">;"
        }
    .end annotation
.end field

.field private layoutFilterImpl:Lcom/touchtype_fluency/impl/LayoutFilterImpl;

.field private parameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

.field private peer:J

.field private punctuatorImpl:Lcom/touchtype_fluency/impl/PunctuatorImpl;

.field private sentenceSegmenterImpl:Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;

.field private tokenizerImpl:Lcom/touchtype_fluency/impl/TokenizerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 216
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    .line 214
    return-void
.end method

.method private native getDynamicParameterSetImpl()Lcom/touchtype_fluency/impl/ParameterSetImpl;
.end method

.method private native getInputMapperImpl()Lcom/touchtype_fluency/impl/InputMapperImpl;
.end method

.method private native getKeyPressModelImpl(Ljava/lang/String;)Lcom/touchtype_fluency/impl/KeyPressModelImpl;
.end method

.method private native getLayoutFilterImpl()Lcom/touchtype_fluency/impl/LayoutFilterImpl;
.end method

.method private native getParameterSetImpl()Lcom/touchtype_fluency/impl/ParameterSetImpl;
.end method

.method private native getPunctuatorImpl()Lcom/touchtype_fluency/impl/PunctuatorImpl;
.end method

.method private native getSearchTypeInt()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native getSentenceSegmenterImpl()Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;
.end method

.method private native getTokenizerImpl()Lcom/touchtype_fluency/impl/TokenizerImpl;
.end method

.method private native removeKeyPressModelInternal(Ljava/lang/String;)V
.end method


# virtual methods
.method public addSequence(Lcom/touchtype_fluency/Sequence;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public addTermMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->addTermMapping(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native addTermMapping(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public native addToBlacklist(Ljava/lang/String;)V
.end method

.method public native batchLoad([Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native batchUnload([Lcom/touchtype_fluency/ModelSetDescription;)V
.end method

.method public native clearBlacklist()V
.end method

.method public native clearLayoutKeys()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native createStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation
.end method

.method public native createVocabFilter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/impl/InputMapperImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/impl/InputMapperImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/InputMapperImpl;->dispose()V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/impl/LayoutFilterImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/impl/LayoutFilterImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/LayoutFilterImpl;->dispose()V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/ParameterSetImpl;->dispose()V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->dynamicParameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->dynamicParameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/ParameterSetImpl;->dispose()V

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/impl/TokenizerImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/impl/TokenizerImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/TokenizerImpl;->dispose()V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;->dispose()V

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/impl/PunctuatorImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/impl/PunctuatorImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/PunctuatorImpl;->dispose()V

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/impl/KeyPressModelImpl;

    .line 26
    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/KeyPressModelImpl;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 28
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    invoke-virtual {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->disposeInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void
.end method

.method public native disposeInternal()V
.end method

.method public native enableModels(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public native get(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public native getBlacklist()Ljava/lang/String;
.end method

.method public native getBlacklistedTerms()[Ljava/lang/String;
.end method

.method public native getCorrections(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public declared-synchronized getInputMapper()Lcom/touchtype_fluency/InputMapper;
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/impl/InputMapperImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getInputMapperImpl()Lcom/touchtype_fluency/impl/InputMapperImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/impl/InputMapperImpl;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/impl/InputMapperImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    const-string v0, "__default__"

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getKeyPressModel(Ljava/lang/String;)Lcom/touchtype_fluency/KeyPressModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyPressModel(Ljava/lang/String;)Lcom/touchtype_fluency/KeyPressModel;
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/impl/PredictorImpl;->getKeyPressModelImpl(Ljava/lang/String;)Lcom/touchtype_fluency/impl/KeyPressModelImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/KeyPressModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/impl/LayoutFilterImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getLayoutFilterImpl()Lcom/touchtype_fluency/impl/LayoutFilterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/impl/LayoutFilterImpl;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/impl/LayoutFilterImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLearnedParameters()Lcom/touchtype_fluency/ParameterSet;
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->dynamicParameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getDynamicParameterSetImpl()Lcom/touchtype_fluency/impl/ParameterSetImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->dynamicParameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->dynamicParameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 193
    const/4 v4, 0x0

    const-string v5, "__default__"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/touchtype_fluency/impl/PredictorImpl;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 199
    const-string v5, "__default__"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/touchtype_fluency/impl/PredictorImpl;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 196
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/touchtype_fluency/impl/PredictorImpl;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getMostLikelyLanguage(Lcom/touchtype_fluency/Sequence;)Ljava/lang/String;
.end method

.method public getNgramCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getNgramCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native getNgramCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getNovelTerms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized getParameterSet()Lcom/touchtype_fluency/ParameterSet;
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getParameterSetImpl()Lcom/touchtype_fluency/impl/ParameterSetImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/impl/ParameterSetImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public getPredictor()Lcom/touchtype_fluency/Predictor;
    .locals 0

    .prologue
    .line 187
    return-object p0
.end method

.method public declared-synchronized getPunctuator()Lcom/touchtype_fluency/Punctuator;
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/impl/PunctuatorImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getPunctuatorImpl()Lcom/touchtype_fluency/impl/PunctuatorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/impl/PunctuatorImpl;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/impl/PunctuatorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchType()Lcom/touchtype_fluency/Predictor$SearchType;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/touchtype_fluency/Predictor$SearchType;->values()[Lcom/touchtype_fluency/Predictor$SearchType;

    move-result-object v0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getSearchTypeInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public declared-synchronized getSentenceSegmenter()Lcom/touchtype_fluency/SentenceSegmenter;
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getSentenceSegmenterImpl()Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/impl/SentenceSegmenterImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;
.end method

.method public getTermCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getTermCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native getTermCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getTermsFromThreshold(J)[Lcom/touchtype_fluency/Term;
    .locals 7

    .prologue
    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getTermCounts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-ltz v1, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/touchtype_fluency/Term;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/Term;

    return-object v0
.end method

.method public declared-synchronized getTokenizer()Lcom/touchtype_fluency/Tokenizer;
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/impl/TokenizerImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PredictorImpl;->getTokenizerImpl()Lcom/touchtype_fluency/impl/TokenizerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/impl/TokenizerImpl;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/impl/TokenizerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrainer()Lcom/touchtype_fluency/Trainer;
    .locals 0

    .prologue
    .line 186
    return-object p0
.end method

.method public native learnFrom(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public native learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public native learnFrom(Lcom/touchtype_fluency/TouchHistory;[Ljava/lang/String;)V
.end method

.method public learnMappings()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->learnMappings(Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native learnMappings(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public learnMappingsFrom(Lcom/touchtype_fluency/Prediction;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/touchtype_fluency/impl/PredictorImpl;->learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-void
.end method

.method public learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    .line 72
    return-void
.end method

.method public native learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
.end method

.method public native listKeyPressModels()[Ljava/lang/String;
.end method

.method public native load(Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public queryTerm(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/impl/PredictorImpl;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z
    .locals 1

    .prologue
    .line 107
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public native queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z
.end method

.method public native removeFromBlacklist(Ljava/lang/String;)V
.end method

.method public declared-synchronized removeKeyPressModel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/impl/KeyPressModelImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/impl/KeyPressModelImpl;->dispose()V

    .line 143
    iget-object v0, p0, Lcom/touchtype_fluency/impl/PredictorImpl;->keyPressModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/impl/PredictorImpl;->removeKeyPressModelInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTerm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public removeTerm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->removeTerm(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native removeTerm(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public native resetLearnedParameters()V
.end method

.method public native setBlacklist(Ljava/lang/String;)V
.end method

.method public native setLayoutKeys(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setParameterLearning(Z)V
.end method

.method public native setSearchType(Lcom/touchtype_fluency/Predictor$SearchType;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native trimMemory()V
.end method

.method public native unload(Lcom/touchtype_fluency/ModelSetDescription;)V
.end method

.method public native verify(Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/Trainer$ModelFileVersion;->Latest_Version:Lcom/touchtype_fluency/Trainer$ModelFileVersion;

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/impl/PredictorImpl;->write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V

    return-void
.end method

.method public write(Lcom/touchtype_fluency/TagSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/touchtype_fluency/Trainer$ModelFileVersion;->Latest_Version:Lcom/touchtype_fluency/Trainer$ModelFileVersion;

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/impl/PredictorImpl;->write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V

    return-void
.end method

.method public native write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/touchtype_fluency/impl/PredictorImpl;->write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V

    return-void
.end method
