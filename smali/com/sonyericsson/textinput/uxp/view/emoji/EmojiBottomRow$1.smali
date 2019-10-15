.class Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;
.super Ljava/lang/Object;
.source "EmojiBottomRow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->updateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

.field final synthetic val$button:Landroid/widget/ImageButton;

.field final synthetic val$buttonShadow:Landroid/widget/FrameLayout;

.field final synthetic val$key:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field final synthetic val$keyBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic val$keyBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field final synthetic val$shadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/widget/FrameLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$button:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$keyBackgroundPressed:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$key:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$buttonShadow:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$shadowDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$keyBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 184
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$buttonShadow:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/util/ViewUtil;->safeSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$button:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$keyBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/util/ViewUtil;->safeSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 186
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$key:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 187
    .local v0, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$400(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->access$500(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;)V

    .line 192
    .end local v0    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    :cond_0
    :goto_0
    :pswitch_1
    return v3

    .line 167
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$button:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$keyBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/util/ViewUtil;->safeSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$000(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)V

    .line 169
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$key:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 171
    .restart local v0    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$100(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;->val$key:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->access$300(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
