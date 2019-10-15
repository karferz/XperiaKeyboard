.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$1;
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
    .line 1595
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x3e7

    .line 1599
    const-string v2, "personalizer_login_service_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1601
    .local v1, "serviceId":I
    const-string v2, "personalizer_login_result"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1604
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->access$1400(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-virtual {v2, v3, v1, v0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->onPersonalizerLogin(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 1606
    return-void
.end method
