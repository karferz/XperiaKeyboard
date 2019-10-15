.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2787
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2200()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 2788
    const-string v0, "predictive-engine"

    const-string v1, "swift-key"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2789
    const-string v0, "current-input-method"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2790
    const-string v0, "input-mode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2791
    const-string v0, "orientation"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string v0, "floating-keyboard-type"

    const-string v1, "docked"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string v0, "contact-prediction"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    const-string v0, "enable-one-handed-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v0, "one-handed-keyboard-position"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    const-string v0, "enable-numeric-keys"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const-string v0, "enable-learning"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    const-string v0, "trace-auto-accept-mode"

    const-string v1, "none"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    const-string v0, "max-predictive-candidates"

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    const-string v0, "smart-language-detection"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    const-string v0, "make-dynamic-model-backup"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    return-void
.end method

.method private isEmailInputMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 2846
    const-string v0, "input-mode-email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "input-mode-web-email"

    .line 2847
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapInputMethodToMode()V
    .locals 3

    .prologue
    .line 2831
    const-string v1, "current-input-method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2832
    .local v0, "inputMethod":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2840
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;)V

    .line 2843
    :goto_1
    return-void

    .line 2832
    :sswitch_0
    const-string v2, "multitap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "singletap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2834
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->NONE:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;)V

    goto :goto_1

    .line 2837
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;)V

    goto :goto_1

    .line 2832
    nop

    :sswitch_data_0
    .sparse-switch
        -0x591489a5 -> :sswitch_1
        0x26f8b3ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mapInputModeToFieldHints()V
    .locals 3

    .prologue
    .line 2851
    const-string v1, "input-mode"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2852
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->isEmailInputMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2853
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    const-string v2, "input-mode-email"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setFieldHint(Ljava/lang/String;)V

    .line 2859
    :goto_0
    return-void

    .line 2854
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->shouldSetFieldHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2855
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setFieldHint(Ljava/lang/String;)V

    goto :goto_0

    .line 2857
    :cond_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setFieldHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setKeyboardType()V
    .locals 5

    .prologue
    .line 2867
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v2

    iget-object v1, v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    .line 2868
    .local v1, "oldKeyboardType":Ljava/lang/String;
    const-string v2, "floating-keyboard-type"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2869
    .local v0, "floatingKeyboardType":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orientation"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    .line 2870
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v3

    iget-object v4, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-v3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    .line 2874
    :cond_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v2

    const-string v3, "enable-one-handed-keyboard"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z

    .line 2875
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v3

    iget-object v4, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-one-handed-v3-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "one-handed-keyboard-position"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    .line 2879
    :cond_1
    const-string v2, "enable-numeric-keys"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v3

    iget-object v4, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-with-numeric-keys-v4"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    .line 2883
    :cond_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2884
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2700()Ljava/util/LinkedHashMap;

    move-result-object v3

    monitor-enter v3

    .line 2885
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2700()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 2886
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2888
    :cond_3
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v2

    const-string v3, "max-predictive-candidates"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2802(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;I)I

    .line 2889
    return-void

    .line 2886
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private shouldSetFieldHint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 2862
    const-string v0, "input-mode-person-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "input-mode-im"

    .line 2863
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2812
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2300()V

    .line 2814
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->mapInputMethodToMode()V

    .line 2815
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->mapInputModeToFieldHints()V

    .line 2817
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    const-string v1, "enable-learning"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z

    .line 2818
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v0

    const-string v1, "trace-auto-accept-mode"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accept-and-add-space-on-next-trace"

    .line 2819
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2818
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setIsAvertSpaceAfterTrace(Z)V

    .line 2820
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v0

    const-string v1, "smart-language-detection"

    .line 2821
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2820
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setSmartLanguageDetection(Z)V

    .line 2822
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v0

    const-string v1, "contact-prediction"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setContactId(Ljava/lang/String;)V

    .line 2823
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    const-string v1, "make-dynamic-model-backup"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2502(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z

    .line 2825
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->setKeyboardType()V

    .line 2827
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .locals 1

    .prologue
    .line 2892
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    return-object v0
.end method

.method public onReuse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 2807
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;->setKeyboardType()V

    .line 2808
    return-void
.end method
