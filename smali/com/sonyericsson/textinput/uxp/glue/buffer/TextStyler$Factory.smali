.class public Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "TextStyler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 120
    const-string v0, "current-input-method"

    const-string v1, "full"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;

    const-string v1, "current-input-method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
