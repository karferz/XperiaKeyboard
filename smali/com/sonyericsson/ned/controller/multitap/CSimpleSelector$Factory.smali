.class public Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CSimpleSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 32
    const-string v0, "multitap-behavior"

    const-string v1, "default"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 33
    return-void
.end method
