.class public Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;
.super Ljava/lang/Object;
.source "SemcTextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/util/SemcTextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictogramRange"
.end annotation


# instance fields
.field private final mEndPosition:I

.field private final mStartPosition:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    iput p1, p0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->mStartPosition:I

    .line 1155
    iput p2, p0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->mEndPosition:I

    .line 1156
    return-void
.end method

.method synthetic constructor <init>(IILcom/sonyericsson/ned/util/SemcTextUtil$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sonyericsson/ned/util/SemcTextUtil$1;

    .prologue
    .line 1148
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getEndPosition()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->mEndPosition:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->mStartPosition:I

    return v0
.end method
