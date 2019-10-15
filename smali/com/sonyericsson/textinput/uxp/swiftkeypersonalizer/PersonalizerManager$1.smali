.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serviceId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Landroid/content/Context;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->val$serviceId:I

    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getServiceId()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x2

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "Gmail"

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->isParsingGmail()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    const/4 v1, 0x2

    .line 145
    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresInternet()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;->val$serviceId:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Landroid/content/Context;I)V

    .line 157
    :cond_0
    return-void
.end method
