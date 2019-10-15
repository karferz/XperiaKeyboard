.class final Lcom/touchtype_fluency/util/SwiftKeySession$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/touchtype_fluency/Predictions;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/Sequence;

.field private synthetic b:Lcom/touchtype_fluency/TouchHistory;

.field private synthetic c:Lcom/touchtype_fluency/ResultsFilter;

.field private synthetic d:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->d:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->a:Lcom/touchtype_fluency/Sequence;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->b:Lcom/touchtype_fluency/TouchHistory;

    iput-object p4, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->c:Lcom/touchtype_fluency/ResultsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 883
    .line 1886
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->d:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->g(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->a:Lcom/touchtype_fluency/Sequence;

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->b:Lcom/touchtype_fluency/TouchHistory;

    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->c:Lcom/touchtype_fluency/ResultsFilter;

    invoke-interface {v0, v1, v2, v3}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    .line 1892
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$8;->d:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->h(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/PredictionsListener;

    move-result-object v1

    .line 1893
    if-eqz v1, :cond_0

    .line 1894
    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/PredictionsListener;->onPredictionsReady(Lcom/touchtype_fluency/Predictions;)V

    .line 883
    :cond_0
    return-object v0
.end method
