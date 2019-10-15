.class public Lcom/sonyericsson/ned/controller/multitap/CDigitSelector$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CDigitSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/multitap/CDigitSelector;
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

    .line 57
    const-class v0, Lcom/sonyericsson/ned/controller/multitap/CDigitSelector;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 58
    const-string v0, "multitap-behavior"

    const-string v1, "fast-digits"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/multitap/CDigitSelector$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    return-void
.end method
