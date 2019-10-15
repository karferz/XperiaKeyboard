.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SoftFullKeyboardKeyRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 232
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 233
    const-string v0, "current-input-method"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "full"

    aput-object v3, v1, v2

    const-string v2, "numpad"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$Factory;->defineParameter(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 236
    const-string v0, "insert-on-key-down"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 237
    return-void
.end method
