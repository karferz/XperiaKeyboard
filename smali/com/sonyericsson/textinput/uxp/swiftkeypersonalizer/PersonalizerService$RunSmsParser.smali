.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;
.super Ljava/lang/Object;
.source "PersonalizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunSmsParser"
.end annotation


# instance fields
.field private final mIsResultBroadcastNeeded:Z

.field private mRunning:Z

.field private final mServiceId:I

.field private mTotal:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V
    .locals 0
    .param p2, "serviceId"    # I
    .param p3, "isResultBroadcastNeeded"    # Z

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mIsResultBroadcastNeeded:Z

    .line 408
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mServiceId:I

    .line 409
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    .prologue
    .line 399
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mTotal:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;
    .param p1, "x1"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mTotal:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;
    .param p1, "x1"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    .prologue
    .line 399
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mServiceId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mIsResultBroadcastNeeded:Z

    return v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->mRunning:Z

    .line 428
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;Landroid/content/Context;)V

    .line 478
    return-void
.end method
