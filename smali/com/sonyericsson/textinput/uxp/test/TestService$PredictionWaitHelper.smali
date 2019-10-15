.class Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/sonyericsson/ned/controller/IPredictionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PredictionWaitHelper"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;)V
    .locals 1
    .param p1, "mainHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "swiftKeyEngine"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mMainHandler:Landroid/os/Handler;

    .line 573
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 574
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mCallback:Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method


# virtual methods
.method public onNoPendingPredictions()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    return-void
.end method

.method public onPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 0
    .param p1, "newPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 582
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isPredictionsPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;->mCallback:Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;->notifyPendingPredictionsDone()V

    .line 600
    :cond_0
    return-void
.end method
