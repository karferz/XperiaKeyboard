.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;
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
    name = "RunGmailParser"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mIsResultBroadcastNeeded:Z

.field private mRunning:Z

.field private final mServiceId:I

.field private final mToken:Ljava/lang/String;

.field private mTotal:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;ILjava/lang/String;Landroid/accounts/Account;Z)V
    .locals 0
    .param p2, "serviceId"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "isResultBroadcastNeeded"    # Z

    .prologue
    .line 495
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mServiceId:I

    .line 497
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mToken:Ljava/lang/String;

    .line 498
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mAccount:Landroid/accounts/Account;

    .line 499
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mIsResultBroadcastNeeded:Z

    .line 500
    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    .prologue
    .line 485
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mTotal:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;
    .param p1, "x1"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mTotal:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    .prologue
    .line 485
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mServiceId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mIsResultBroadcastNeeded:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;
    .param p1, "x1"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mRunning:Z

    return p1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mRunning:Z

    .line 518
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 566
    return-void
.end method
