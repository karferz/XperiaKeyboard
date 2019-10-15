.class public Lcom/sonyericsson/textinput/uxp/model/settings/ResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetReceiver.java"


# static fields
.field private static final ACTION_MASTER_RESET:Ljava/lang/String; = "com.sonyericsson.settings.MASTERRESET"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/ResetReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ResetReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.sonyericsson.settings.MASTERRESET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 38
    .local v1, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getDirectBootConfig()Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->clearSharedPreferences()V

    .line 39
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->reset()V

    .line 41
    .end local v1    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_0
    return-void
.end method
