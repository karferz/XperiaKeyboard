.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/StreamWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getDynamicModelStreamWriter(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/StreamWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeToOutputStream(Ljava/io/OutputStream;)Z
    .locals 19
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 450
    const/4 v12, 0x0

    .line 451
    .local v12, "success":Z
    const/4 v10, 0x0

    .line 453
    .local v10, "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;->val$context:Landroid/content/Context;

    invoke-static {v15}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$600(Landroid/content/Context;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;->val$context:Landroid/content/Context;

    invoke-static {v15}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$700(Landroid/content/Context;)V

    .line 457
    :try_start_0
    sget-object v16, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sDynamicModelLock:Ljava/lang/Object;

    monitor-enter v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;->val$context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "appFilesDir":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/user"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 466
    .local v14, "userModelFolder":Ljava/lang/String;
    :try_start_2
    invoke-static {v14}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;
    :try_end_2
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 489
    .local v13, "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/cloudwork"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 492
    .local v6, "cloudWorkFolder":Ljava/lang/String;
    :try_start_4
    invoke-static {v6}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 505
    .local v7, "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/cloudmerged"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 508
    .local v3, "cloudMergeFolder":Ljava/lang/String;
    :try_start_6
    sget-object v15, Lcom/touchtype_fluency/Trainer$ModelFileVersion;->SKSDK_1_3:Lcom/touchtype_fluency/Trainer$ModelFileVersion;

    invoke-static {v7, v13, v3, v15}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)Lcom/touchtype_fluency/ModelSetDescription;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/touchtype_fluency/CountOverflowException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 518
    :goto_0
    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/dynamic.lm"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "cloudUploadFile":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v9, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 522
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .local v11, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 523
    .local v2, "b":I
    :goto_1
    const/4 v15, -0x1

    if-eq v2, v15, :cond_3

    .line 524
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 525
    invoke-virtual {v11}, Ljava/io/FileInputStream;->read()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v2

    goto :goto_1

    .line 467
    .end local v2    # "b":I
    .end local v3    # "cloudMergeFolder":Ljava/lang/String;
    .end local v4    # "cloudUploadFile":Ljava/lang/String;
    .end local v6    # "cloudWorkFolder":Ljava/lang/String;
    .end local v7    # "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v13    # "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 477
    .local v8, "e":Lcom/touchtype_fluency/InvalidDataException;
    :try_start_9
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 483
    const/4 v15, 0x0

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 537
    if-eqz v10, :cond_0

    .line 539
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 545
    .end local v1    # "appFilesDir":Ljava/lang/String;
    .end local v8    # "e":Lcom/touchtype_fluency/InvalidDataException;
    .end local v14    # "userModelFolder":Ljava/lang/String;
    :cond_0
    :goto_2
    return v15

    .line 540
    .restart local v1    # "appFilesDir":Ljava/lang/String;
    .restart local v8    # "e":Lcom/touchtype_fluency/InvalidDataException;
    .restart local v14    # "userModelFolder":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 541
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 484
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 485
    .local v8, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 537
    if-eqz v10, :cond_0

    .line 539
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_2

    .line 540
    :catch_3
    move-exception v8

    .line 541
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 493
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "cloudWorkFolder":Ljava/lang/String;
    .restart local v13    # "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    :catch_4
    move-exception v8

    .line 495
    .local v8, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$902(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z

    .line 496
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/dynamic.lm"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "cloudWorkFile":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v15

    if-nez v15, :cond_1

    .line 500
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$500()Ljava/lang/String;

    move-result-object v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed to clear corrupt syncWorkFile:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    const/4 v15, 0x0

    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 537
    if-eqz v10, :cond_0

    .line 539
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_2

    .line 540
    :catch_5
    move-exception v8

    .line 541
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 510
    .end local v5    # "cloudWorkFile":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/File;
    .restart local v3    # "cloudMergeFolder":Ljava/lang/String;
    .restart local v7    # "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    :catch_6
    move-exception v8

    .line 511
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 512
    throw v8

    .line 533
    .end local v1    # "appFilesDir":Ljava/lang/String;
    .end local v3    # "cloudMergeFolder":Ljava/lang/String;
    .end local v6    # "cloudWorkFolder":Ljava/lang/String;
    .end local v7    # "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .end local v13    # "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v14    # "userModelFolder":Ljava/lang/String;
    :catchall_0
    move-exception v15

    :goto_3
    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v15
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 534
    :catch_7
    move-exception v8

    .line 535
    .local v8, "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 537
    if-eqz v10, :cond_2

    .line 539
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    move v15, v12

    .line 545
    goto :goto_2

    .line 513
    .restart local v1    # "appFilesDir":Ljava/lang/String;
    .restart local v3    # "cloudMergeFolder":Ljava/lang/String;
    .restart local v6    # "cloudWorkFolder":Ljava/lang/String;
    .restart local v7    # "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    .restart local v13    # "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    .restart local v14    # "userModelFolder":Ljava/lang/String;
    :catch_8
    move-exception v8

    .line 514
    .local v8, "e":Lcom/touchtype_fluency/CountOverflowException;
    :try_start_13
    invoke-virtual {v8}, Lcom/touchtype_fluency/CountOverflowException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    .line 527
    .end local v8    # "e":Lcom/touchtype_fluency/CountOverflowException;
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "b":I
    .restart local v4    # "cloudUploadFile":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_3
    const/4 v12, 0x1

    .line 530
    :try_start_14
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v15

    if-nez v15, :cond_4

    .line 531
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$500()Ljava/lang/String;

    move-result-object v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed to clear syncUploadFile:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_4
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 537
    if-eqz v11, :cond_6

    .line 539
    :try_start_15
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    move-object v10, v11

    .line 542
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 540
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v8

    .line 541
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .line 542
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 540
    .end local v1    # "appFilesDir":Ljava/lang/String;
    .end local v2    # "b":I
    .end local v3    # "cloudMergeFolder":Ljava/lang/String;
    .end local v4    # "cloudUploadFile":Ljava/lang/String;
    .end local v6    # "cloudWorkFolder":Ljava/lang/String;
    .end local v7    # "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    .end local v14    # "userModelFolder":Ljava/lang/String;
    :catch_a
    move-exception v8

    .line 541
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 537
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    if-eqz v10, :cond_5

    .line 539
    :try_start_16
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 542
    :cond_5
    :goto_5
    throw v15

    .line 540
    :catch_b
    move-exception v8

    .line 541
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 533
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "appFilesDir":Ljava/lang/String;
    .restart local v3    # "cloudMergeFolder":Ljava/lang/String;
    .restart local v4    # "cloudUploadFile":Ljava/lang/String;
    .restart local v6    # "cloudWorkFolder":Ljava/lang/String;
    .restart local v7    # "cloudWorkModel":Lcom/touchtype_fluency/ModelSetDescription;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "userModel":Lcom/touchtype_fluency/ModelSetDescription;
    .restart local v14    # "userModelFolder":Ljava/lang/String;
    :catchall_2
    move-exception v15

    move-object v10, v11

    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "b":I
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_6
    move-object v10, v11

    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method
