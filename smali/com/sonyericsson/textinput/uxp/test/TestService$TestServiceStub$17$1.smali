.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17$1;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPendingPredictionsDone()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$17;->jobComplete()V

    .line 1062
    return-void
.end method
