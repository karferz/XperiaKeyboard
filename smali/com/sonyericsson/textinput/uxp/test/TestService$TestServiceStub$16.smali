.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getCandidateLayout()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->val$mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;Lcom/sonyericsson/textinput/uxp/test/TestHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->fetchResult(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    return-void
.end method

.method private fetchResult(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V
    .locals 5
    .param p1, "tester"    # Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .prologue
    .line 1028
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getCandidateView()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    move-result-object v1

    .line 1029
    .local v1, "candidateView":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getCandidateBarController()Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    move-result-object v0

    .line 1031
    .local v0, "barController":Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getCandidateViewContainer()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getMoreCandidatesView()Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    move-result-object v3

    .line 1032
    .local v3, "candidatesPopup":Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
    invoke-static {v1, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$CandidateBarUtil;->getVisualCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Ljava/util/List;

    move-result-object v2

    .line 1034
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->val$keys:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1035
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->jobComplete()V

    .line 1036
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1008
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v1

    .line 1009
    .local v1, "tester":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->hasPredictiveEngine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1010
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getInstance()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    .line 1011
    .local v0, "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    if-eqz v0, :cond_0

    .line 1012
    new-instance v2, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->val$mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16$1;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;-><init>(Landroid/os/Handler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;)V

    .line 1025
    .end local v0    # "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    :goto_0
    return-void

    .line 1020
    .restart local v0    # "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->fetchResult(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    goto :goto_0

    .line 1023
    .end local v0    # "swiftKeyEngine":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$16;->fetchResult(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    goto :goto_0
.end method
