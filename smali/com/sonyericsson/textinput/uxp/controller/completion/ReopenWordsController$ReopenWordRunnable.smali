.class Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;
.super Ljava/lang/Object;
.source "ReopenWordsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReopenWordRunnable"
.end annotation


# instance fields
.field private mCursorPositionEnd:I

.field private mCursorPositionStart:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;
    .param p1, "x1"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionStart:I

    return p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;
    .param p1, "x1"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionEnd:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionStart:I

    move/from16 v19, v0

    if-gez v19, :cond_2

    .line 396
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionEnd:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionStart:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto :goto_0

    .line 412
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$500(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/model/ITextBuffer;

    move-result-object v19

    const/16 v20, 0x2ee

    .line 413
    invoke-interface/range {v19 .. v20}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v11

    .line 415
    .local v11, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$500(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/model/ITextBuffer;

    move-result-object v19

    const/16 v20, 0x2ee

    .line 416
    invoke-interface/range {v19 .. v20}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v10

    .line 421
    .local v10, "textAfterCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v11}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v19

    if-nez v19, :cond_4

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto :goto_0

    .line 432
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionStart:I

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto :goto_0

    .line 441
    :cond_5
    invoke-virtual {v11}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    .line 440
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    .line 446
    .local v3, "firstCodepointBeforeCursor":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionStart:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    .line 447
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 452
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 461
    :cond_7
    invoke-virtual {v11}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v19

    invoke-virtual {v11}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v21, v0

    .line 462
    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v21

    .line 461
    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v11, v0, v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordStart(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v19

    .line 460
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/sonyericsson/ned/model/CodePointString;->toCharIndex(I)I

    move-result v18

    .line 464
    .local v18, "wordStartTextIndex":I
    invoke-virtual {v11}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 469
    .local v9, "stringBeforeCursor":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 477
    :cond_8
    const/16 v19, 0x0

    .line 478
    invoke-virtual {v10}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v21

    .line 479
    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v21

    .line 478
    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v10, v0, v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getWordEnd(Lcom/sonyericsson/ned/model/CodePointString;II[C)I

    move-result v19

    .line 477
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sonyericsson/ned/model/CodePointString;->toCharIndex(I)I

    move-result v15

    .line 482
    .local v15, "wordEndTextIndex":I
    invoke-virtual {v10}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, "stringAfterCursor":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 485
    .local v14, "wordBeforeCursor":Ljava/lang/CharSequence;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    .line 487
    .local v13, "wordAfterCursor":Ljava/lang/CharSequence;
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 488
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "reopenWord":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 495
    .local v7, "reopenWordText":Lcom/sonyericsson/ned/model/CodePointString;
    const/16 v16, 0x0

    .line 496
    .local v16, "wordIndex":I
    :goto_1
    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 497
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v19

    if-eqz v19, :cond_9

    add-int/lit8 v16, v16, 0x1

    .line 498
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 506
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 514
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->endsWithIsolatedHyphen(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 527
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    invoke-virtual {v10}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v19

    if-nez v19, :cond_c

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 539
    :cond_c
    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v20

    .line 538
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 540
    .local v5, "lastCodepointOfTheWord":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sonyericsson/ned/model/CodePointString;->contains([C)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 552
    :cond_d
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 553
    .local v4, "firstCodepointOfWord":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$600(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->excludedReopenDelimiters()[C

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sonyericsson/ned/model/CodePointString;->contains([C)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$400(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)V

    goto/16 :goto_0

    .line 566
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->mCursorPositionStart:I

    move/from16 v19, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v19, v19, v20

    add-int v17, v19, v18

    .line 572
    .local v17, "wordStartCursorPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$500(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/model/ITextBuffer;

    move-result-object v19

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->reSetComposingText(II)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$702(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 574
    const/16 v19, 0x0

    .line 575
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 574
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v12

    .line 576
    .local v12, "textBeforeWord":Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$ReopenWordRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$800(Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;)Lcom/sonyericsson/ned/model/IPredictive;

    move-result-object v19

    sget-object v20, Lcom/sonyericsson/ned/controller/PredictionType;->REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v7, v12, v1}, Lcom/sonyericsson/ned/model/IPredictive;->getReopenWordPrediction(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V

    goto/16 :goto_0
.end method
