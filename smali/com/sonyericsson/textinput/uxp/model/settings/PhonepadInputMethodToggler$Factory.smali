.class public Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "PhonepadInputMethodToggler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;
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

    .line 134
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 135
    const-string v0, "current-input-method"

    const-string v1, "singletap"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 137
    const-string v0, "input-mode"

    const-string v1, "input-mode-text"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "prediction-text-field"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 139
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;

    const-string v1, "current-input-method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "input-mode"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "prediction-text-field"

    .line 144
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
