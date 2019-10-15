.class public Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "ApplicationCompletion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 152
    return-void
.end method
