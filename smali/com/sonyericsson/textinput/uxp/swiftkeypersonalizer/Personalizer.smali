.class public abstract Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
.super Ljava/lang/Object;
.source "Personalizer.java"


# static fields
.field public static final API_FAIL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstallationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/InstallationIdUtil;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->mInstallationId:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getServiceId()I
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract requiresInternet()Z
.end method

.method public abstract run()V
.end method
