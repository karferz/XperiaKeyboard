.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getLanguages()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$languages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;->val$languages:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 938
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v2

    .line 940
    .local v2, "testHook":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getLanguageLayoutProvider()Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    move-result-object v1

    .line 942
    .local v1, "languageLayoutProvider":Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getLanguageIso3s()[Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 943
    .local v0, "langList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;->val$languages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 944
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$13;->jobComplete()V

    .line 945
    return-void
.end method
