.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/ServerBusyException;
.super Ljava/lang/Exception;
.source "ServerBusyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
