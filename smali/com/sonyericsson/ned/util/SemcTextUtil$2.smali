.class final Lcom/sonyericsson/ned/util/SemcTextUtil$2;
.super Ljava/util/HashSet;
.source "SemcTextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/util/SemcTextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1f57a

    const v6, 0x1f574

    const v5, 0x1f54e

    const v4, 0x1f549

    const/4 v3, 0x0

    .line 375
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 380
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0xa9

    const/16 v2, 0xae

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f000

    const v2, 0x1f02f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f0a0

    const v2, 0x1f0ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f100

    const v2, 0x1f1ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f200

    const v2, 0x1f2ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f300

    const v2, 0x1f5ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v4, v4, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v5, v5, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f5a4

    const v2, 0x1f5a4

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v6, v6, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v7, v7, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f600

    const v2, 0x1f64f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f680

    const v2, 0x1f6ec

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f6f0

    const v2, 0x1f6f0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f6f3

    const v2, 0x1f6f8

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f910

    const v2, 0x1f945

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f947

    const v2, 0x1f94c

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f950

    const v2, 0x1f96b

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f980

    const v2, 0x1f998

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f9c0

    const v2, 0x1f9c0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f9d0

    const v2, 0x1f9df

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f9e0

    const v2, 0x1f9e6

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x203c

    const/16 v2, 0x21aa

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2300

    const/16 v2, 0x23ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2460

    const/16 v2, 0x24ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x25a0

    const/16 v2, 0x27bf

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2900

    const/16 v2, 0x297f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2b00

    const/16 v2, 0x2bff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x3200

    const/16 v2, 0x32ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x3000

    const/16 v2, 0x303f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, -0xf60784b

    const v2, -0xf607859

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method
