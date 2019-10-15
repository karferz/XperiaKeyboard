.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;
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
    name = "NoPendingPredictionsNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0

    .prologue
    .line 3053
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;

    .prologue
    .line 3053
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3056
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1200()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isTaskPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    .line 3059
    :cond_0
    return-void
.end method
