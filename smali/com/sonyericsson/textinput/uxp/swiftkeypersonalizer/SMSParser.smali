.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;
.super Ljava/lang/Object;
.source "SMSParser.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NO_MESSAGES:I = -0x2

.field public static final PROGRESS_FAIL:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTask:Landroid/os/AsyncTask;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.READ_SMS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->mTask:Landroid/os/AsyncTask;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/SMSParser;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 124
    return-void
.end method

.method protected onComplete()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected onProgress(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 127
    return-void
.end method
