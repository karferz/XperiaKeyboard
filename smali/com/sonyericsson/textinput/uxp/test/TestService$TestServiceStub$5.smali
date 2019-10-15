.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->clearActiveLanguageLayouts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 706
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 707
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;->jobComplete()V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$400(Lcom/sonyericsson/textinput/uxp/test/TestService;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->clearActiveLanguageLayouts()V

    .line 712
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$5;->jobComplete()V

    goto :goto_0
.end method
