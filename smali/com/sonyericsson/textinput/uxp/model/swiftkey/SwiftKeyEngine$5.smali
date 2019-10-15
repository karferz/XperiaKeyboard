.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostPostExecuteOrCancel(Landroid/os/AsyncTask;)V
    .locals 4
    .param p1, "theTask"    # Landroid/os/AsyncTask;

    .prologue
    .line 1093
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1200()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isOtherTaskPending(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1096
    :cond_0
    return-void
.end method

.method public onPredictionTaskFinished(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V
    .locals 3
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V

    .line 1087
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 1088
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictionType()Lcom/sonyericsson/ned/controller/PredictionType;

    move-result-object v2

    .line 1087
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;[Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V

    .line 1089
    return-void
.end method
