.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->setPrimaryLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$languageIso3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;->val$languageIso3:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 787
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v1

    .line 788
    .local v1, "testHook":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getLanguageController()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    move-result-object v0

    .line 789
    .local v0, "languageController":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;->val$languageIso3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->reInitialize(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$9;->jobComplete()V

    .line 791
    return-void
.end method
