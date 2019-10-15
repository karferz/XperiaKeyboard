.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveKeyPressModelRunnable"
.end annotation


# instance fields
.field private mModelPath:Ljava/lang/String;

.field private mModelToBeSaved:Lcom/touchtype_fluency/KeyPressModel;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyPressModel"    # Lcom/touchtype_fluency/KeyPressModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 3154
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3157
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->mModelToBeSaved:Lcom/touchtype_fluency/KeyPressModel;

    .line 3158
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->mModelPath:Ljava/lang/String;

    .line 3159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3163
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3165
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Lcom/touchtype_fluency/FileNotWritableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3168
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3169
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->mModelToBeSaved:Lcom/touchtype_fluency/KeyPressModel;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->mModelPath:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V

    .line 3174
    :goto_0
    monitor-exit v2

    .line 3193
    :cond_0
    :goto_1
    return-void

    .line 3171
    :cond_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v3, "The key press model was not saved due to the model being changed in another thread."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3174
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/touchtype_fluency/FileNotWritableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3175
    :catch_0
    move-exception v0

    .line 3185
    .local v0, "e":Lcom/touchtype_fluency/FileNotWritableException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SwiftKey did not manage to save the key press model"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3187
    .end local v0    # "e":Lcom/touchtype_fluency/FileNotWritableException;
    :catch_1
    move-exception v0

    .line 3188
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save an empty KeyPressModel (keyboardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 3189
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "keyPressModelPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 3190
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3188
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
