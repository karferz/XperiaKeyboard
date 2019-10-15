.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "HapticFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 115
    const-string v0, "sound-feedback"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "sound-feedback-volume"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "tactile-feedback"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "vibrator-duration"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 123
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    const-string v1, "sound-feedback"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "sound-feedback-volume"

    .line 124
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "tactile-feedback"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "vibrator-duration"

    .line 125
    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;->getInteger(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;-><init>(ZIZILcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$1;)V

    return-object v0
.end method
