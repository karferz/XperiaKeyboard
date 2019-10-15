.class public Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CBasicDeletionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 235
    const-class v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;

    invoke-static {}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 236
    const-string v0, "glyph-deletion"

    const-string v1, "true"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 237
    return-void
.end method
