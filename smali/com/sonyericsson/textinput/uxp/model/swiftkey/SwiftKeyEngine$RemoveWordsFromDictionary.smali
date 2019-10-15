.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveWordsFromDictionary"
.end annotation


# instance fields
.field private mFinished:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2956
    .local p2, "words":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2957
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mWords:Ljava/util/HashSet;

    .line 2958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mFinished:Z

    .line 2959
    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    .prologue
    .line 2950
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->isFinished()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized fireOnWordsRemoved()V
    .locals 3

    .prologue
    .line 2984
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2985
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;

    .line 2986
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;
    if-eqz v0, :cond_0

    .line 2987
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;->onWordsRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2984
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2990
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2992
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private isFinished()Z
    .locals 1

    .prologue
    .line 2995
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mFinished:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized addOnWordsRemovedListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;

    .prologue
    .line 2962
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mListeners:Ljava/util/List;

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2966
    monitor-exit p0

    return-void

    .line 2962
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 2970
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2971
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mWords:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 2972
    .local v0, "word":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v2

    .line 2973
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    .line 2974
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3800()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2979
    .end local v0    # "word":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->mFinished:Z

    .line 2980
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->fireOnWordsRemoved()V

    .line 2981
    return-void
.end method
