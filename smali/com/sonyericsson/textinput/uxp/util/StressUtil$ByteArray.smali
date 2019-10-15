.class final Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;
.super Ljava/lang/Object;
.source "StressUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/util/StressUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArray"
.end annotation


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/util/StressUtil$ByteArray;->bytes:[B

    .line 128
    return-void
.end method
