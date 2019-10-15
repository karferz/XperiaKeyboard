.class public Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "EmojiToggleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;
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

    .line 256
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 257
    const-string v0, "symbols-type"

    const-string v1, "emoji"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 258
    const-string v0, "enable-one-handed-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 259
    const-string v0, "floating-keyboard-type"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 261
    const-string v0, "session-type"

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 262
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 266
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;

    const-string v1, "enable-one-handed-keyboard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "floating-keyboard-type"

    .line 267
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
