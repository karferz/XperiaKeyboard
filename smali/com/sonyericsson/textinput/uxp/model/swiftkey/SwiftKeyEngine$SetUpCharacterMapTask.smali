.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;
.super Landroid/os/AsyncTask;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUpCharacterMapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsInputModeSymbols:Z

.field private final mPredictor:Lcom/touchtype_fluency/Predictor;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Landroid/content/Context;Lcom/touchtype_fluency/Predictor;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "predictor"    # Lcom/touchtype_fluency/Predictor;
    .param p4, "isInputModeSymbols"    # Z

    .prologue
    .line 3006
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3007
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mContext:Landroid/content/Context;

    .line 3008
    iput-boolean p4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mIsInputModeSymbols:Z

    .line 3009
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mPredictor:Lcom/touchtype_fluency/Predictor;

    .line 3010
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2999
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3015
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3900()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3016
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v3, v5, :cond_0

    .line 3021
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v3}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/HashSet;

    move-result-object v7

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mIsInputModeSymbols:Z

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    invoke-static {v6, v7, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/touchtype_fluency/InputMapper;->setLayout(Ljava/util/Map;)V

    .line 3025
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/HashSet;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mIsInputModeSymbols:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-static {v3, v5, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object v0

    .line 3028
    .local v0, "characterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3029
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3030
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->access$4502(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;Ljava/util/Map;)Ljava/util/Map;

    .line 3031
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->access$4602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;Landroid/content/Context;)Landroid/content/Context;

    .line 3033
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3035
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mPredictor:Lcom/touchtype_fluency/Predictor;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/touchtype_fluency/Predictor;Ljava/util/Map;Landroid/content/Context;)V

    .line 3037
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    .line 3038
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/LayoutFilter;->set(Ljava/util/List;)V

    .line 3039
    const/4 v1, 0x0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .end local v0    # "characterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_2
    move v3, v2

    .line 3021
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3025
    goto :goto_1

    .line 3033
    .restart local v0    # "characterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 3040
    .end local v0    # "characterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2999
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 3045
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3049
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    .line 3050
    return-void
.end method
