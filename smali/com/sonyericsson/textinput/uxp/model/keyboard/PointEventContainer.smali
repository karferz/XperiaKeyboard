.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
.super Ljava/lang/Object;
.source "PointEventContainer.java"


# instance fields
.field private final mKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private final mPointTimes:[J

.field private final mPoints:[I

.field private final mPointsCount:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I[JI)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I[JI)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "points"    # [I
    .param p3, "pointTimes"    # [J
    .param p4, "pointsCount"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 34
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->clonePoints([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPoints:[I

    .line 35
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPointsCount:I

    .line 36
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->clonePointTimes([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPointTimes:[J

    .line 37
    return-void
.end method

.method private clonePointTimes([J)[J
    .locals 1
    .param p1, "pointTimes"    # [J

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clonePoints([I)[I
    .locals 1
    .param p1, "points"    # [I

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    return-object v0
.end method

.method public getPointTimes()[J
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPointTimes:[J

    return-object v0
.end method

.method public getPoints()[I
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPoints:[I

    return-object v0
.end method

.method public getPointsCount()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPointsCount:I

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPoints:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->mPointsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
