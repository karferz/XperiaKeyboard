.class Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache$1;
.super Landroid/util/LruCache;
.source "CellPainter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;
    .param p2, "x0"    # I

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 498
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 490
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache$1;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
