.class final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerListener"
.end annotation


# instance fields
.field private mIsKeyboardBeingMoved:Z

.field private mLastKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V
    .locals 0

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$1;

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    return-void
.end method


# virtual methods
.method public onEndMoveKeyboard(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 3
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 2525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    .line 2526
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 2528
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)V

    .line 2530
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;->onEndKeyboardMoveRequest()V

    .line 2533
    :cond_0
    return-void
.end method

.method public onEndTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 5
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 2476
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v1, :cond_1

    .line 2489
    :cond_0
    :goto_0
    return-void

    .line 2480
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->registerTraceEvent()V

    .line 2481
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2482
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    .line 2483
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPoints()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointTimes()[J

    move-result-object v3

    .line 2484
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointCount()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I[JI)V

    .line 2485
    .local v0, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onTrace(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 2486
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onEndTrace(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 2487
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    goto :goto_0
.end method

.method public onLongPress(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 12
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "keyIndex"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2347
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v9, :cond_1

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2351
    :cond_1
    const/4 v1, 0x0

    .line 2353
    .local v1, "isLongPressHandled":Z
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2354
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v2

    .line 2355
    .local v2, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2356
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v8

    .line 2357
    .local v8, "popupKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasXKeyCandidates()Z

    move-result v0

    .line 2359
    .local v0, "hasXKeyCandidates":Z
    if-eqz v0, :cond_2

    array-length v9, v8

    if-gt v9, v11, :cond_3

    :cond_2
    if-nez v0, :cond_5

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 2360
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2364
    :cond_3
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mLastKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-ne v2, v9, :cond_4

    .line 2365
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9, v2, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2366
    const/4 v1, 0x1

    .line 2380
    .end local v0    # "hasXKeyCandidates":Z
    .end local v2    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v8    # "popupKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 2381
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v5

    .line 2382
    .local v5, "longPressedKeyIndex":I
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v4

    .line 2384
    .local v4, "longPressedKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1602(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)I

    .line 2385
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)V

    .line 2386
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2388
    if-eqz v4, :cond_0

    .line 2389
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onCancel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0

    .line 2368
    .end local v4    # "longPressedKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v5    # "longPressedKeyIndex":I
    .restart local v0    # "hasXKeyCandidates":Z
    .restart local v2    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .restart local v8    # "popupKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_5
    if-eqz v0, :cond_4

    array-length v9, v8

    if-ne v9, v11, :cond_4

    .line 2369
    invoke-virtual {v2, v10}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyCandidate(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2370
    aget-object v7, v8, v10

    .line 2371
    .local v7, "popupKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    new-instance v6, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    invoke-direct {v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2373
    .local v6, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v9, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->sendOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 2374
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 2375
    const/4 v1, 0x1

    goto :goto_1

    .line 2392
    .end local v0    # "hasXKeyCandidates":Z
    .end local v2    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v6    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    .end local v7    # "popupKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v8    # "popupKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_6
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v3

    .line 2393
    .local v3, "keyToLongPress":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v3, :cond_0

    .line 2394
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onLongPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto/16 :goto_0
.end method

.method public onMoveKeyboard(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;II)V
    .locals 1
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;->onKeyboardMoveRequest(II)V

    .line 2521
    :cond_0
    return-void
.end method

.method public onPress(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 5
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "keyIndex"    # I

    .prologue
    .line 2279
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v2, :cond_1

    .line 2299
    :cond_0
    :goto_0
    return-void

    .line 2287
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 2288
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_0

    .line 2289
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    .line 2290
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .line 2291
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPoints()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointTimes()[J

    move-result-object v3

    .line 2292
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointCount()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I[JI)V

    .line 2293
    .local v1, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->sendOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 2294
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2295
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    :cond_2
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mLastKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    goto :goto_0
.end method

.method public onReInitialize()V
    .locals 3

    .prologue
    .line 2266
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v0, :cond_0

    .line 2267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    .line 2268
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 2271
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2272
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;->onEndKeyboardMoveRequest()V

    .line 2275
    :cond_0
    return-void
.end method

.method public onRegularMove(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 5
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "keyIndex"    # I

    .prologue
    .line 2316
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v3, :cond_1

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v1

    .line 2321
    .local v1, "prevKeyIndex":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 2322
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v2

    .line 2324
    .local v2, "prevKeySafe":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_2

    .line 2325
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    .line 2328
    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2329
    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isPressedKey(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2330
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onCancel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2333
    :cond_3
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2334
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2336
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onMoveTo(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2339
    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 2340
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2341
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onRelease(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 5
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "keyIndex"    # I

    .prologue
    .line 2401
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v1, :cond_1

    .line 2434
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 2406
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isLongPressActive()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->registerTapEvent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V

    .line 2407
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)V

    .line 2408
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)V

    .line 2410
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2411
    if-eqz v0, :cond_2

    .line 2412
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPoints()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointTimes()[J

    move-result-object v3

    .line 2413
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointCount()I

    move-result v4

    .line 2412
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;[I[JILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2414
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2416
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2417
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2422
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    .line 2431
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2432
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1602(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)I

    goto :goto_0
.end method

.method public onRepeat(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V
    .locals 2
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p2, "keyIndex"    # I

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2312
    :cond_0
    :goto_0
    return-void

    .line 2307
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 2308
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 2309
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->isShifted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2310
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRepeat(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0
.end method

.method public onStartMoveKeyboard(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Z
    .locals 6
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    const/4 v2, 0x1

    .line 2493
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2494
    :cond_0
    const/4 v2, 0x0

    .line 2513
    :cond_1
    :goto_0
    return v2

    .line 2497
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    .line 2498
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2499
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2500
    .local v1, "keysToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 2501
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_3

    .line 2502
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2503
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onCancel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 2505
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Ljava/util/List;)V

    .line 2507
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    .line 2508
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->DISABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA_AND_CANDIDATE_BAR:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 2510
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2511
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;->onStartKeyboardMoveRequest()V

    goto :goto_0
.end method

.method public onStartTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 5
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 2438
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v2, :cond_1

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2442
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getKeyIndex()I

    move-result v1

    .line 2443
    .local v1, "prevKeyIndex":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2102(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Z)Z

    .line 2444
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2202(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)I

    .line 2445
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    .line 2446
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$1700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;I)V

    .line 2448
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    .line 2449
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->reset()V

    .line 2450
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPoints()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->addPoints([II)V

    .line 2451
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 2452
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_0

    .line 2453
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onCancel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0
.end method

.method public onTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V
    .locals 5
    .param p1, "pointerStream"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 2459
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->mIsKeyboardBeingMoved:Z

    if-eqz v1, :cond_1

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2463
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointerId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2464
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)V

    .line 2465
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getLastX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getLastY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->addPoint(FF)V

    .line 2466
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 2467
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$2600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPoints()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointTimes()[J

    move-result-object v3

    .line 2468
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getPointCount()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;[I[JI)V

    .line 2470
    .local v0, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$PointerListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onTrace(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    goto :goto_0
.end method
