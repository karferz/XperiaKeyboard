.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->isCandidateBarHidden()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;[Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;->val$result:[Z

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    .line 645
    .local v0, "testHook":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getCandidateBarController()Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    move-result-object v2

    .line 646
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getCandidateViewContainer()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getVisibility()I

    move-result v1

    .line 647
    .local v1, "visibility":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;->val$result:[Z

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    aput-boolean v2, v4, v3

    .line 648
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$2;->jobComplete()V

    .line 649
    return-void

    :cond_1
    move v2, v3

    .line 647
    goto :goto_0
.end method
