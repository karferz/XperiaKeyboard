.class public Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "TextBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;
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

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1052
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1053
    const-string v0, "session-type"

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1054
    const-string v0, "delay-insert-text"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1055
    const-string v0, "use-compatibility-delete-mode"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1056
    const-string v0, "startIndex"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v0, "endIndex"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1062
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    const-string v1, "delay-insert-text"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "use-compatibility-delete-mode"

    .line 1063
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "startIndex"

    .line 1064
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "endIndex"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;-><init>(ZZII)V

    return-object v0
.end method
