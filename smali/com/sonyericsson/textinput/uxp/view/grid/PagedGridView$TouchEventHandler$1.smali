.class Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;
.super Ljava/lang/Object;
.source "PagedGridView.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

.field final synthetic val$this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->val$this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHorizontalSwipe(F)V
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->access$700(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->access$800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->access$900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V

    goto :goto_0
.end method

.method public onVerticalSwipe(F)V
    .locals 9
    .param p1, "velocity"    # F

    .prologue
    const/4 v3, 0x0

    .line 1084
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Landroid/widget/OverScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1085
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$200(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v4, v4, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-float v4, p1

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v5, v5, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1086
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$400(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    .line 1084
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1087
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1100(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->post(Ljava/lang/Runnable;)Z

    .line 1088
    return-void
.end method
