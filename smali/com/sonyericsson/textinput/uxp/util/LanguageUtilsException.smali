.class public Lcom/sonyericsson/textinput/uxp/util/LanguageUtilsException;
.super Ljava/lang/Exception;
.source "LanguageUtilsException.java"


# static fields
.field private static final serialVersionUID:J = 0x5a695ee5fd4a9d08L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
