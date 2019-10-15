.class public Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$1000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 515
    const-string v0, "session-type"

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "enable-one-handed-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 517
    const-string v0, "orientation"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "current-input-method"

    const-string v1, "full"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "smart-language-detection"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 524
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    const-string v1, "session-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable-one-handed-keyboard"

    .line 525
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "orientation"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "current-input-method"

    .line 526
    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "smart-language-detection"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
