.class public Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "LanguageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 384
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 385
    const-string v0, "current-input-method"

    const-string v1, "full"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 386
    const-string v0, "smart-language-detection"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 391
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    const-string v1, "current-input-method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smart-language-detection"

    .line 392
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
