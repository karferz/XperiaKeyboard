.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->waitForPendingPredictions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1053
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v1

    .line 1054
    .local v1, "tester":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->hasPredictiveEngine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getInstance()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    .line 1056
    .local v0, "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    if-eqz v0, :cond_0

    .line 1057
    new-instance v2, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->val$mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17$1;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;-><init>(Landroid/os/Handler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;)V

    .line 1070
    .end local v0    # "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    :goto_0
    return-void

    .line 1065
    .restart local v0    # "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->jobComplete()V

    goto :goto_0

    .line 1068
    .end local v0    # "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->jobComplete()V

    goto :goto_0
.end method
