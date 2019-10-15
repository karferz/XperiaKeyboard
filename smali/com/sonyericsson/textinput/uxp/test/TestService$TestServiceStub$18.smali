.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$18;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->reInitializeTextInput()V
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
    .line 1082
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$18;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1085
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 1086
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-eqz v0, :cond_0

    .line 1087
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "reinitialize"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$18;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$18;->setResultDependingOnDictionaries(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    .line 1090
    return-void
.end method
