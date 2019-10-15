.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getLayouts(Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$layouts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->val$language:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->val$layouts:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 962
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v2

    .line 964
    .local v2, "testHook":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getLanguageLayoutProvider()Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    move-result-object v0

    .line 965
    .local v0, "languageLayoutProvider":Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->val$language:Ljava/lang/String;

    .line 966
    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 967
    .local v1, "layoutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->val$layouts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 968
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$14;->jobComplete()V

    .line 969
    return-void
.end method
