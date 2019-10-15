.class public Lcom/sonyericsson/textinput/uxp/model/settings/Settings;
.super Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;
    }
.end annotation


# static fields
.field public static final GSON_TYPE_STRING_STRING_MAP:Ljava/lang/reflect/Type;

.field private static final KEY_PERSONALIZER_PREVIOUS_STATE:Ljava/lang/String; = "previous_state"

.field private static final KEY_PERSONALIZER_STATE:Ljava/lang/String; = "state"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final sDebug:Z


# instance fields
.field private final mGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$1;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$1;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->GSON_TYPE_STRING_STRING_MAP:Ljava/lang/reflect/Type;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/AbstractSettings;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mGson:Lcom/google/gson/Gson;

    .line 69
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getNotificationCount()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationCount()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 631
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 632
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 633
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getUnsafePreferences()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->handleUnsafePreferences(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_1
    const-string v6, "update_notification_count_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 635
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 636
    .local v0, "countValue":I
    const-string v6, "update_notification_count_"

    .line 637
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 636
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "language":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 641
    .end local v0    # "countValue":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private getUnsafePreferences()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v3, "unsafeKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "language-toggle-hint-shown"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    const-string v4, "primary-language"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    const-string v4, "primary-language-layout"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 806
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v5, "Unable to get a key from ResourceConstants since it was null. Keys are: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 813
    .local v2, "key2":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 818
    .end local v2    # "key2":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private handleUnsafePreferences(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 18
    .param p2, "resourceKey"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "unsafeKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 663
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 664
    .local v6, "key":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 666
    const/4 v8, 0x0

    .line 671
    .local v8, "unsafe":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 672
    .local v9, "unsafeKey":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 673
    const/4 v8, 0x1

    .line 680
    .end local v9    # "unsafeKey":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 681
    .local v7, "success":Z
    if-nez v8, :cond_0

    .line 683
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v6, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 684
    .local v10, "value":Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5

    .line 685
    const/4 v7, 0x1

    .line 688
    .end local v10    # "value":Z
    :goto_1
    if-nez v7, :cond_3

    .line 690
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v6, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 691
    .local v10, "value":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4

    .line 692
    const/4 v7, 0x1

    .line 696
    .end local v10    # "value":I
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    .line 698
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v6, v15}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    .line 699
    .local v10, "value":F
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    .line 700
    const/4 v7, 0x1

    .line 704
    .end local v10    # "value":F
    :cond_4
    :goto_3
    if-nez v7, :cond_5

    .line 706
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, ""

    invoke-interface {v14, v6, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 707
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 708
    const/4 v7, 0x1

    .line 712
    .end local v10    # "value":Ljava/lang/String;
    :cond_5
    :goto_4
    if-nez v7, :cond_6

    .line 714
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v14, v6, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 715
    .local v10, "value":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    .line 716
    const/4 v7, 0x1

    .line 720
    .end local v10    # "value":J
    :cond_6
    :goto_5
    if-nez v7, :cond_7

    .line 722
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v6, v15}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    .line 723
    .local v12, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0

    .line 724
    const/4 v7, 0x1

    .line 728
    .end local v12    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    :goto_6
    if-nez v7, :cond_0

    .line 729
    sget-object v14, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to put the key into shared preferences "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "success":Z
    .end local v8    # "unsafe":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 738
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 743
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 744
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 746
    .local v10, "value":Ljava/lang/Object;
    instance-of v13, v10, Ljava/lang/Boolean;

    if-eqz v13, :cond_9

    move-object v13, v10

    .line 747
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v3, v6, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inserting key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " into shared prefs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 749
    :cond_9
    instance-of v13, v10, Ljava/lang/Long;

    if-eqz v13, :cond_a

    move-object v13, v10

    .line 750
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v3, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 751
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inserting key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " into shared prefs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 752
    :cond_a
    instance-of v13, v10, Ljava/lang/Integer;

    if-eqz v13, :cond_b

    move-object v13, v10

    .line 753
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v6, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 754
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inserting key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " into shared prefs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 755
    :cond_b
    instance-of v13, v10, Ljava/lang/Float;

    if-eqz v13, :cond_c

    move-object v13, v10

    .line 756
    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v3, v6, v13}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 757
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inserting key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " into shared prefs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 758
    :cond_c
    instance-of v13, v10, Ljava/lang/String;

    if-eqz v13, :cond_d

    .line 759
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v6, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 760
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inserting key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " into shared prefs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 761
    :cond_d
    instance-of v13, v10, Ljava/util/Set;

    if-eqz v13, :cond_e

    move-object v13, v10

    .line 762
    check-cast v13, Ljava/util/Set;

    invoke-interface {v3, v6, v13}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 763
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inserting key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " into shared prefs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 765
    :cond_e
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to write the value since "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not supported."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 769
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_f
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 773
    const-string v5, "Cleaning shared preferences since there was an error when reading from the shared preferences."

    .line 775
    .local v5, "errorString":Ljava/lang/String;
    if-eqz p2, :cond_10

    .line 776
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " A key was null when searching for the resource key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 783
    :goto_8
    sget-object v13, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void

    .line 778
    :cond_10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " A key was null."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 725
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "errorString":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "success":Z
    .restart local v8    # "unsafe":Z
    :catch_0
    move-exception v14

    goto/16 :goto_6

    .line 717
    :catch_1
    move-exception v14

    goto/16 :goto_5

    .line 709
    :catch_2
    move-exception v14

    goto/16 :goto_4

    .line 701
    :catch_3
    move-exception v14

    goto/16 :goto_3

    .line 693
    :catch_4
    move-exception v14

    goto/16 :goto_2

    .line 686
    :catch_5
    move-exception v14

    goto/16 :goto_1
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    return-void
.end method

.method public edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .locals 1

    .prologue
    .line 619
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)V

    return-object v0
.end method

.method public getActiveDaysBeforeCloud()I
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ACTIVE_DAYS_BEFORE_CLOUD:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getActiveDaysTimestamp()J
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_ACTIVE_DAYS_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveLanguageLayouts()Ljava/util/LinkedHashMap;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "active_language_layouts"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "activeLanguageLayoutsJson":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 238
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mGson:Lcom/google/gson/Gson;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->GSON_TYPE_STRING_STRING_MAP:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 246
    new-instance v1, Ljava/util/LinkedHashMap;

    .end local v1    # "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 248
    .restart local v1    # "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v1

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    const-string v5, "JsonSyntaxException active_language_layouts"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAutoAcceptHintCounter()I
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_NUMBER_AUTO_ACCEPT_HINT:Ljava/lang/String;

    const/4 v2, 0x0

    .line 281
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAutoDictionaryUpdateMode()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 401
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_AUTO_DICTIONARY_UPDATE_MODE:Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "mode":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_MODE_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->OFF:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    .line 409
    :goto_0
    return-object v1

    .line 406
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_MODE_ANY_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ANY_TIME:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    goto :goto_0

    .line 408
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_MODE_WIFI_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->WIFI_ONLY:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    goto :goto_0

    .line 411
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid preference with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_AUTO_DICTIONARY_UPDATE_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAvailableDictionaryUpdates()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_available_swiftkey_updates"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCloudAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_CLOUD_ACCESS_TOKEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "cloudLoginIdToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "cloud_id_token"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "cloudLoginIdTokenJson":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 497
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-object v1

    .line 498
    :catch_0
    move-exception v3

    .line 499
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JsonSyntaxException cloud_id_token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCloudSyncTryCount()I
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_CLOUD_SYNC_TRY_COUNT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentNumberOfDevices()I
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_NUMBER_OF_DEVICES:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentThemeInfo()Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "themeInfo":Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "current_theme_info"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "themeInfoTokenJson":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 441
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    return-object v2

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JsonSyntaxException current_theme_info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDaysActiveCounter()I
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_DAYS_ACTIVE_COUNTER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDictionariesWaitingForNetwork()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wait_for_network_dictionaries"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDictionariesWaitingForWiFi()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wait_for_wifi_dictionaries"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFloatingKeyboardType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_FLOATING_KEYBOARD_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_FLOATING_KEYBOARD_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatingMiniRelativePosition()Landroid/graphics/PointF;
    .locals 5

    .prologue
    .line 354
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_floating_keyboard_mini_relative_x"

    sget v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_MINI_RELATIVE_X_DEFAULT:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 357
    .local v0, "relativeX":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_floating_keyboard_mini_relative_y"

    sget v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_MINI_RELATIVE_Y_DEFAULT:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 360
    .local v1, "relativeY":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public getHasAgreedToDictionaryDownload()Z
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_download_agree"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasShownDictionaryDownloadDialog()Z
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_DOWNLOAD_SHOWN_POPUP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInputMethod()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current-im"

    const-string v2, "singletap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current-im-email"

    const-string v2, "multitap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsWaitForWifiCheckboxChecked()Z
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wait_for_wifi_check_box"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKeyboardOpeningsCounter()I
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_KEYBOARD_OPENINGS_COUNTER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeyboardOpeningsWithDiscontinuedNpamCounter()I
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "keyboard_openings_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeyboardResizeHeightPxCurrent()I
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "resize_height_current"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeyboardResizeHeightPxPrevious()I
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "resize_height_previous"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeyboardSkin()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_KEYBOARD_SKIN:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_KEYBOARD_SKIN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageToggleHintShown()Z
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "language-toggle-hint-shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLanguagesUpdateDictionaryNotificationCount()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getNotificationCount()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLastBackupTimeDynamicModel()J
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LAST_BACKUP_TIME_DYNAMIC_MODEL:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDictionaryListRefreshTime()J
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_last_search_swiftkey_updates"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDictionaryListVerifyTime()J
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_last_search_swiftkey_verify"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSnapshotActiveDay()I
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "snapshot_date"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastSyncTime()J
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LAST_SYNC_TIME:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTimeCloudAccessTokenRenewed()J
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LAST_TIME_CLOUD_ACCESS_TOKEN_RENEWED:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUsedEmojiTabPosition()I
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LATEST_USED_EMOJI_TAB:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getNumberOfHttpRequests()I
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_NUMBER_OF_HTTP_REQUESTS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOneHandedKeyboardPosition()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;
    .locals 4

    .prologue
    .line 314
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD_POSITION:Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_ONE_HANDED_KEYBOARD_POSITION:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "textualPosition":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_ONE_HANDED_KEYBOARD_POSITION_LEFT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    .line 322
    :goto_0
    return-object v1

    .line 320
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_ONE_HANDED_KEYBOARD_POSITION_RIGHT:Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    goto :goto_0

    .line 324
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid preference with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD_POSITION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " textualPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOtherDevicesInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_OTHER_DEVICE_INFO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalizerPreviousState(Ljava/lang/String;I)I
    .locals 3
    .param p1, "personalizer"    # Ljava/lang/String;
    .param p2, "defaultState"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPersonalizerState(Ljava/lang/String;)I
    .locals 3
    .param p1, "personalizer"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPhonepadSymbolKbdInitialState(Ljava/lang/String;)I
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_num_shifted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getPortraitKeyboard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_LAYOUT_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitKeyboardMode()I
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getPortraitKeyboard()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "mode":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v1, 0x1

    .line 186
    .local v1, "result":I
    :goto_0
    return v1

    .line 177
    .end local v1    # "result":I
    :cond_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_PHONEPAD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_0

    .line 179
    .end local v1    # "result":I
    :cond_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD_WITH_SECONDARY_PRINTS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const/4 v1, 0x3

    .restart local v1    # "result":I
    goto :goto_0

    .line 183
    .end local v1    # "result":I
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid preference with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPredictionEngine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prediction-engine"

    const-string v2, "swift-key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousFloatingKeyboardType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PREVIOUS_FLOATING_KEYBOARD_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_PREVIOUS_FLOATING_KEYBOARD_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "primary-language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshCloudAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_REFRESH_CLOUD_ACCESS_TOKEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetupWizardShown()Z
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SETUP_WIZARD_SHOWN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSoftwareKeyboardPrediction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOFTWARE_KEYBOARD_PREDICTION:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_PREDICTION_DEFAULT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundFeedbackVolume()I
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOUND_FEEDBACK_VOLUME:Ljava/lang/String;

    sget v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_SOUND_FEEDBACK_VOLUME:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSwapPunctuationHintCounter()I
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_SWAP_PUNCTUATION_HINT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTraceAutoAccept()Z
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOFTWARE_KEYBOARD_TRACE_AUTO_ACCEPT:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_SOFTWARE_KEYBOARD_TRACE_AUTO_ACCEPT_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUpgradeVisualizationShown()Z
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_UPGRADE_VISUALIZATION_SHOWN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUsedLatinLanguageLayouts()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "used_active_language_layouts"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_VERSION_CODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVibratorDuration()I
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_VIBRATOR_DURATION:Ljava/lang/String;

    sget v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_VIBRATOR_DURATION:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasShownCloudNudge()Z
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_HAS_SHOWN_CLOUD_NUDGE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 107
    return-void
.end method

.method public isBackupAndSyncDataOld()Z
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_OLD_BACKUP_AND_SYNC_DATA_EXISTS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupAndSyncEnabled()Z
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_BACKUP_AND_SYNC:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_BACKUP_AND_SYNC_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCandidateSelectionAutoSpaceEnabled()Z
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_CANDIDATE_SELECTION_AUTO_SPACE:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_CANDIDATE_SELECTION_AUTO_SPACE_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKeyPreviewEnabled()Z
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_KEY_PREVIEW:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_KEY_PREVIEW_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNpamRemovedDialogShown()Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "npam_removed_dialog_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNumericKeysEnabled()Z
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SHOW_NUMERIC_KEYS:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_SHOW_NUMERIC_KEYS_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOneHandedKeyboard()Z
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_ONE_HANDED_KEYBOARD:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPeriodAndCommaKeysEnabled()Z
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_period_and_comma_keys"

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_SHOW_PERIOD_AND_COMMA_KEYS_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPortraitKeybordPhonepad()Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getPortraitKeyboardMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPredictionAutoReplaceEnabled()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PREDICTION_AUTO_REPLACE:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_PREDICTION_AUTO_REPLACE_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSecondaryPrintsEnabled()Z
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SHOW_SECONDARY_PRINTS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmartLanguageDetection()Z
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SMART_LANGUAGE_DETECTION:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_SMART_LANGUAGE_DETECTION_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmileyKeyEnabled()Z
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SHOW_SMILEY_KEY:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_SHOW_SMILEY_KEY_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoundFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOUND_FEEDBACK:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FEEDBACK_SOUND_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TACTILE_FEEDBACK:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FEEDBACK_TACTILE_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOFTWARE_KEYBOARD_TRACE:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_PREDICTION_TRACE_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVoiceInputEnabled()Z
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_VOICE_INPUT_START_FROM_KEYBOARD:Ljava/lang/String;

    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_VOICE_INPUT_START_FROM_KEYBOARD_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .line 83
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;
    invoke-interface {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;->onSettingsChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 613
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 614
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 615
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The use of PersistentSettings.setValue() is discouraged. Use strongly typed functions instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
