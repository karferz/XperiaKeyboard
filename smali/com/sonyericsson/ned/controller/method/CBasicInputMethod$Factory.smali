.class public Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CBasicInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;
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

    .line 102
    const-class v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;

    invoke-static {}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 103
    const-string v0, "prediction-activated"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 104
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 105
    const-string v0, "current-input-method"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "full"

    aput-object v3, v1, v2

    const-string v2, "numpad"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;->defineParameter(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 108
    const-string v0, "insert-on-key-down"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    return-void
.end method
