.class public Lcom/sonyericsson/textinput/uxp/test/TestService$KeyboardViewUtil;
.super Ljava/lang/Object;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardViewUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getKeyboardContraints(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "keyboardView"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .prologue
    .line 525
    const-class v1, Lcom/sonyericsson/textinput/uxp/test/TestService$KeyboardViewUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getRight()I

    move-result v4

    .line 526
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getKeyboardLayout(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;)Ljava/util/List;
    .locals 20
    .param p0, "keyboardView"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/test/TestKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    const-class v18, Lcom/sonyericsson/textinput/uxp/test/TestService$KeyboardViewUtil;

    monitor-enter v18

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v11, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    if-eqz p0, :cond_3

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingTop()I

    move-result v16

    .line 432
    .local v16, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v13

    .line 433
    .local v13, "leftPadding":I
    const/4 v1, 0x2

    new-array v14, v1, [I

    .line 434
    .local v14, "location":[I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyPadding()Landroid/graphics/Rect;

    move-result-object v10

    .line 435
    .local v10, "keyPadding":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 436
    .local v5, "innerArea":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 437
    .local v4, "touchArea":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 438
    .local v6, "expandedArea":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocationOnScreen([I)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getAllKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 440
    .local v9, "k":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v2, 0x0

    .line 441
    .local v2, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 442
    .local v3, "shiftedLabel":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 485
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v12

    .line 486
    .local v12, "labelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v1, 0x1

    .line 487
    invoke-virtual {v9, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    .line 488
    .local v15, "shiftedLabelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    :goto_1
    if-eqz v15, :cond_2

    .line 490
    invoke-virtual {v15}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .end local v12    # "labelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v15    # "shiftedLabelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_2
    if-nez v3, :cond_0

    .line 495
    move-object v3, v2

    .line 498
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    .line 500
    .local v8, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v9, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchArea(Landroid/graphics/Rect;)V

    .line 501
    invoke-virtual {v9, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualArea(Landroid/graphics/Rect;)V

    .line 502
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 503
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v7, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v7

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 504
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v7

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 505
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v7

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getExpandedKeyRect(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getVerticalCorrection()I

    move-result v17

    .line 510
    .local v17, "vc":I
    const/4 v1, 0x0

    aget v1, v14, v1

    add-int/2addr v1, v13

    const/4 v7, 0x1

    aget v7, v14, v7

    add-int v7, v7, v16

    sub-int v7, v7, v17

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 511
    const/4 v1, 0x0

    aget v1, v14, v1

    add-int/2addr v1, v13

    const/4 v7, 0x1

    aget v7, v14, v7

    add-int v7, v7, v16

    sub-int v7, v7, v17

    invoke-virtual {v4, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 512
    const/4 v1, 0x0

    aget v1, v14, v1

    add-int/2addr v1, v13

    const/4 v7, 0x1

    aget v7, v14, v7

    add-int v7, v7, v16

    sub-int v7, v7, v17

    invoke-virtual {v6, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 514
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestKey;

    .line 515
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toStringArray([Lcom/sonyericsson/ned/model/CodePointString;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;[Ljava/lang/String;)V

    .line 514
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 428
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "shiftedLabel":Ljava/lang/String;
    .end local v4    # "touchArea":Landroid/graphics/Rect;
    .end local v5    # "innerArea":Landroid/graphics/Rect;
    .end local v6    # "expandedArea":Landroid/graphics/Rect;
    .end local v8    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v9    # "k":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v10    # "keyPadding":Landroid/graphics/Rect;
    .end local v11    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    .end local v13    # "leftPadding":I
    .end local v14    # "location":[I
    .end local v16    # "topPadding":I
    .end local v17    # "vc":I
    :catchall_0
    move-exception v1

    monitor-exit v18

    throw v1

    .line 444
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v3    # "shiftedLabel":Ljava/lang/String;
    .restart local v4    # "touchArea":Landroid/graphics/Rect;
    .restart local v5    # "innerArea":Landroid/graphics/Rect;
    .restart local v6    # "expandedArea":Landroid/graphics/Rect;
    .restart local v9    # "k":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .restart local v10    # "keyPadding":Landroid/graphics/Rect;
    .restart local v11    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    .restart local v13    # "leftPadding":I
    .restart local v14    # "location":[I
    .restart local v16    # "topPadding":I
    :pswitch_1
    :try_start_1
    const-string v2, "shift"

    .line 445
    goto :goto_2

    .line 447
    :pswitch_2
    const-string v2, "im-change"

    .line 448
    goto :goto_2

    .line 450
    :pswitch_3
    const-string v2, "backspace"

    .line 451
    goto :goto_2

    .line 453
    :pswitch_4
    const-string v2, "mode-change"

    .line 454
    goto :goto_2

    .line 456
    :pswitch_5
    const-string v2, "enter"

    .line 457
    goto :goto_2

    .line 459
    :pswitch_6
    const-string v2, "symbol-page-toggle"

    .line 460
    goto :goto_2

    .line 462
    :pswitch_7
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 470
    const-string v2, "x-key"

    .line 471
    goto/16 :goto_2

    .line 464
    :pswitch_8
    const-string v2, "voice"

    .line 465
    goto/16 :goto_2

    .line 467
    :pswitch_9
    const-string v2, "language-toggle"

    .line 468
    goto/16 :goto_2

    .line 475
    :pswitch_a
    const-string v2, "toggle-floating"

    .line 476
    goto/16 :goto_2

    .line 478
    :pswitch_b
    const-string v2, "smileys"

    .line 479
    goto/16 :goto_2

    .line 481
    :pswitch_c
    const-string v2, "tab"

    .line 482
    goto/16 :goto_2

    .line 488
    .restart local v12    # "labelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v15    # "shiftedLabelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 490
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 518
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "shiftedLabel":Ljava/lang/String;
    .end local v4    # "touchArea":Landroid/graphics/Rect;
    .end local v5    # "innerArea":Landroid/graphics/Rect;
    .end local v6    # "expandedArea":Landroid/graphics/Rect;
    .end local v9    # "k":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v10    # "keyPadding":Landroid/graphics/Rect;
    .end local v12    # "labelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v13    # "leftPadding":I
    .end local v14    # "location":[I
    .end local v15    # "shiftedLabelCodePoints":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v16    # "topPadding":I
    :cond_3
    const-string v1, "textinput-tng"

    const-string v7, "no keyboard view found"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_4
    monitor-exit v18

    return-object v11

    .line 442
    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
