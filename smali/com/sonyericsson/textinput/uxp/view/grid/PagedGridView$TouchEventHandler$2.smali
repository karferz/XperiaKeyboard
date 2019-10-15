.class Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;
.super Ljava/lang/Object;
.source "PagedGridView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->snapToPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1002(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;I)I

    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    .line 1142
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->findPage(IZ)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    .line 1141
    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1602(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->access$1800(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1702(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;Lcom/sonyericsson/textinput/uxp/view/grid/Page;)Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 1144
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->access$1900(Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;)V

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler$2;->this$1:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$TouchEventHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->postInvalidate()V

    .line 1146
    return-void
.end method
