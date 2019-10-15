.class final Lcom/sonyericsson/ned/util/SemcTextUtil$4;
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


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x2641

    const/16 v6, 0x261f

    const/16 v5, 0x261d

    const/16 v4, 0x2610

    const/4 v3, 0x0

    .line 513
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 515
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f4f8

    const v2, 0x1f4f8

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const v1, 0x1f540

    const v2, 0x1f543

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2607

    const/16 v2, 0x260d

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v4, v4, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2612

    const/16 v2, 0x2613

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2616

    const/16 v2, 0x2617

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2619

    const/16 v2, 0x261b

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v5, v5, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v6, v6, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2620

    const/16 v2, 0x2625

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2627

    const/16 v2, 0x2629

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x262b

    const/16 v2, 0x262d

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x262f

    const/16 v2, 0x2637

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x263b

    const/16 v2, 0x263f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    invoke-direct {v0, v7, v7, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2643

    const/16 v2, 0x2647

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x266e

    const/16 v2, 0x266e

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2670

    const/16 v2, 0x267a

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x267c

    const/16 v2, 0x267e

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2686

    const/16 v2, 0x2691

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2695

    const/16 v2, 0x2695

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x2698

    const/16 v2, 0x2698

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x269a

    const/16 v2, 0x269b

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x269d

    const/16 v2, 0x269f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26a2

    const/16 v2, 0x26a9

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26ac

    const/16 v2, 0x26af

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26b2

    const/16 v2, 0x26bc

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26bf

    const/16 v2, 0x26c3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26c6

    const/16 v2, 0x26c7

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26c9

    const/16 v2, 0x26cd

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26d0

    const/16 v2, 0x26d2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26d5

    const/16 v2, 0x26e8

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26eb

    const/16 v2, 0x26ef

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26eb

    const/16 v2, 0x26f1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26f6

    const/16 v2, 0x26f6

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26fb

    const/16 v2, 0x26fc

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    const/16 v1, 0x26fe

    const/16 v2, 0x26ff

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method
