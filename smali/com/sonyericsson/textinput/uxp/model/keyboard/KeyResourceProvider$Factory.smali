.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "KeyResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 115
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 116
    const-string v0, "enter-key-action"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->ENTER:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "left-function-key-content"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;

    const-string v1, "enter-key-action"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    move-result-object v1

    const-string v2, "left-function-key-content"

    .line 123
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;-><init>(Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;)V

    return-object v0
.end method
