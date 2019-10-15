.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->removeLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 686
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 687
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;->jobComplete()V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;->val$language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->removeActiveLanguageLayout(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$4;->jobComplete()V

    goto :goto_0
.end method
