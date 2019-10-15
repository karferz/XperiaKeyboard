.class final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionUpRunnable"
.end annotation


# instance fields
.field private final mMotionEvent:Landroid/view/MotionEvent;

.field private final mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Landroid/view/MotionEvent;)V
    .locals 1
    .param p2, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2235
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .line 2236
    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2237
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->mMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->mPointerStream:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Landroid/view/MotionEvent;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    .line 2242
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2243
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$302(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$ActionUpRunnable;

    .line 2244
    return-void
.end method
