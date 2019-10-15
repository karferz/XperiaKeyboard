.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;


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
    .line 1637
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonalizerManagerActivation()V
    .locals 4

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->access$1400(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    iget v3, v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->val$serviceIdToTest:I

    .line 1642
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->createPersonalizer(Landroid/content/Context;I)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;

    move-result-object v0

    .line 1643
    .local v0, "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->run()V

    .line 1645
    return-void
.end method
