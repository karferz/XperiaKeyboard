.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getKeyboardConstraints()Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$keyboardConstraints:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;->val$keyboardConstraints:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1319
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v1

    .line 1320
    .local v1, "tester":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getKeyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v0

    .line 1321
    .local v0, "keyboardView":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;->val$keyboardConstraints:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    .line 1322
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$KeyboardViewUtil;->getKeyboardContraints(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    .line 1323
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$28;->jobComplete()V

    .line 1324
    return-void
.end method
