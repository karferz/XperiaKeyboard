.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "InputModeAdvisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 184
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 185
    const-string v0, "toggle-to-alphabetic-layout-tokens"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 186
    const-string v0, "current-input-method"

    const-string v1, "full"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    const-string v0, "input-mode"

    const-string v1, "input-mode-text"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private getAlphabeticLayoutTriggers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "stringWithTokens"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 193
    const-string v3, "toggle-to-alphabetic-layout-tokens"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->getAlphabeticLayoutTriggers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "alphabeticLayoutTriggers":[Ljava/lang/String;
    const-string v3, "input-mode"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "inputMode":Ljava/lang/String;
    const-string v3, "current-input-method"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "inputMethod":Ljava/lang/String;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    invoke-direct {v3, v2, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method
