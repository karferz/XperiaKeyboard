.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "HandwritingInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;
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

    .line 78
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 79
    const-string v0, "handwriting-input-start-from-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    const-string v0, "handwriting-input-id"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;

    const-string v1, "handwriting-input-id"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
