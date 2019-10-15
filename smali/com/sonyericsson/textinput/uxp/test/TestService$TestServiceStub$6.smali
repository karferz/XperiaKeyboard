.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getKeyboardLayout()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$keys:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;->val$keys:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 727
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v2

    .line 728
    .local v2, "testHook":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getKeyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v1

    .line 729
    .local v1, "keyboardView":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$KeyboardViewUtil;->getKeyboardLayout(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/List;

    move-result-object v0

    .line 730
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;->val$keys:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 731
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$6;->setResultDependingOnDictionaries(Lcom/sonyericsson/textinput/uxp/test/TestHook;)V

    .line 732
    return-void
.end method
