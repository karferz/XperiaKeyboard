.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;

.field final synthetic val$tester:Lcom/sonyericsson/textinput/uxp/test/TestHook;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;Lcom/sonyericsson/textinput/uxp/test/TestHook;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;->val$tester:Lcom/sonyericsson/textinput/uxp/test/TestHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPendingPredictionsDone()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;->val$tester:Lcom/sonyericsson/textinput/uxp/test/TestHook;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->access$700(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    .line 1017
    return-void
.end method
