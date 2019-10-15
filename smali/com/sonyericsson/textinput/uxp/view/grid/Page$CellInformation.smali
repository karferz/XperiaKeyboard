.class public Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellInformation"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mCell:Lcom/sonyericsson/textinput/uxp/view/grid/Cell;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->mCell:Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .line 875
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->mBounds:Landroid/graphics/Rect;

    .line 876
    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 895
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCell()Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$CellInformation;->mCell:Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    return-object v0
.end method
