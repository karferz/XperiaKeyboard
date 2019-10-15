.class Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;
.super Ljava/lang/Object;
.source "PagedGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->TOP:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 275
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->absorbEdge(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;I)V

    .line 282
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 285
    :cond_1
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$300(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->BOTTOM:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 278
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->absorbEdge(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;I)V

    goto :goto_0
.end method
