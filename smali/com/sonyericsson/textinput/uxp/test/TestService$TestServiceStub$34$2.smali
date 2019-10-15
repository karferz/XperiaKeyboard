.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;
.super Landroid/content/BroadcastReceiver;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 1613
    const-string v2, "personalizer_service_result"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1617
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->setJobResult(Z)V

    .line 1619
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->access$1400(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->unbindFromService(Landroid/content/Context;)V

    .line 1620
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->jobComplete()V

    .line 1621
    return-void

    .line 1617
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
