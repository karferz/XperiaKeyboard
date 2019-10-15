.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$2;
.super Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
.source "PersonalizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->createPersonalizer(Landroid/content/Context;I)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getServiceId()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x5

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "SMS"

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->isParsingSms()Z

    move-result v0

    return v0
.end method

.method public requiresInternet()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->parseSMS()V

    .line 187
    return-void
.end method
