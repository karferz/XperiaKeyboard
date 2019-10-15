.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;
.super Ljava/lang/Object;
.source "SoftEventRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventRepository;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEmojiToggleToSymbolsMode:Z

.field private final mIsSingletap:Z

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

.field private mNonSpaceLanguage:Z

.field private mShowEmojis:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "symbolsType"    # Ljava/lang/String;
    .param p3, "inputMethod"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mNonSpaceLanguage:Z

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mIsEmojiToggleToSymbolsMode:Z

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mShowEmojis:Z

    .line 48
    const-string v1, "normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mIsEmojiToggleToSymbolsMode:Z

    .line 49
    const-string v0, "emoji"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mShowEmojis:Z

    .line 50
    const-string v0, "singletap"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mIsSingletap:Z

    .line 51
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getKeyCenterPoint(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Landroid/graphics/Point;
    .locals 3
    .param p1, "keyObject"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 278
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 279
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private setPrimaryLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .line 284
    invoke-interface {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "languageProperties":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 286
    const-string v1, "non-space-language"

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mNonSpaceLanguage:Z

    .line 288
    :cond_0
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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
    .line 311
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-ne p2, v0, :cond_1

    .line 317
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_2

    .line 319
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 320
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_0

    .line 321
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 14
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/BaseKey;

    .prologue
    const/4 v13, -0x5

    const/4 v12, -0x7

    const/4 v11, 0x0

    const/4 v6, -0x2

    .line 55
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    if-nez v0, :cond_0

    .line 56
    new-array v0, v11, [Lcom/sonyericsson/ned/controller/EventObject;

    .line 274
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v8, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/EventObject;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getActionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const/4 v3, -0x1

    .line 93
    .local v3, "actionType":I
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .line 95
    .local v9, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->getKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v2

    .line 101
    .local v2, "keyObject":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :goto_2
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    if-ne v3, v6, :cond_1

    .line 103
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "command-key-released"

    .line 104
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v5

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 274
    :cond_2
    :goto_3
    :pswitch_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/EventObject;

    goto :goto_0

    .line 64
    .end local v2    # "keyObject":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v3    # "actionType":I
    .end local v9    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    :pswitch_1
    const/4 v3, -0x1

    .line 65
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 67
    .end local v3    # "actionType":I
    :pswitch_2
    const/4 v3, -0x3

    .line 68
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 70
    .end local v3    # "actionType":I
    :pswitch_3
    const/4 v3, -0x4

    .line 71
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 73
    .end local v3    # "actionType":I
    :pswitch_4
    const/4 v3, -0x2

    .line 74
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 76
    .end local v3    # "actionType":I
    :pswitch_5
    const/4 v3, -0x5

    .line 77
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 79
    .end local v3    # "actionType":I
    :pswitch_6
    const/4 v3, -0x6

    .line 80
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 82
    .end local v3    # "actionType":I
    :pswitch_7
    const/4 v3, -0x7

    .line 83
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 85
    .end local v3    # "actionType":I
    :pswitch_8
    const/4 v3, -0x8

    .line 86
    .restart local v3    # "actionType":I
    goto :goto_1

    .line 97
    :cond_3
    const/4 v9, 0x0

    .line 98
    .restart local v9    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .restart local v2    # "keyObject":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    goto :goto_2

    .line 108
    :pswitch_9
    if-ne v3, v6, :cond_5

    .line 116
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mIsSingletap:Z

    if-nez v0, :cond_4

    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 119
    .local v1, "blockType":Lcom/sonyericsson/ned/controller/EventBlockType;
    :goto_4
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "delete-previous-grapheme"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "restore-auto-correction"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 116
    .end local v1    # "blockType":Lcom/sonyericsson/ned/controller/EventBlockType;
    :cond_4
    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    goto :goto_4

    .line 121
    :cond_5
    const/4 v0, -0x4

    if-ne v3, v0, :cond_2

    .line 122
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "repeat-delete-previous-grapheme"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 126
    :pswitch_a
    const/4 v0, -0x1

    if-ne v3, v0, :cond_6

    .line 127
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "prepare-case-toggle"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_6
    if-ne v3, v6, :cond_7

    .line 129
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "case-toggle"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 130
    :cond_7
    if-ne v3, v13, :cond_2

    .line 131
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "case-toggle-abort"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 135
    :pswitch_b
    if-ne v3, v6, :cond_2

    .line 136
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    sget-object v4, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    const-string v5, "toggle-keyboard-number-mode"

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 141
    :pswitch_c
    if-ne v3, v6, :cond_2

    .line 142
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "perform-application-action"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    sget-object v4, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    const-string v5, "perform-enter-key-action"

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 148
    :pswitch_d
    if-ne v3, v6, :cond_8

    .line 149
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyType()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 160
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    sget-object v4, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    const-string v5, "toggle-keyboard-mode"

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "hide-emojis"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 151
    :pswitch_e
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "show-input-options-menu"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 154
    .local v7, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v7, :cond_2

    .line 155
    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->LONGPRESS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    .line 156
    invoke-virtual {v0, v4}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsButtonUsed(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;)V

    goto/16 :goto_3

    .line 166
    .end local v7    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_8
    if-ne v3, v13, :cond_2

    .line 167
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "drag-select-symbols-mode"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 171
    :pswitch_f
    if-ne v3, v6, :cond_2

    .line 172
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "toggle-single-tap"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 176
    :pswitch_10
    packed-switch v3, :pswitch_data_3

    goto/16 :goto_3

    .line 178
    :pswitch_11
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "show-input-options-menu"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 181
    .restart local v7    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->SYMBOL_LAYOUT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;

    .line 183
    invoke-virtual {v0, v4}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsButtonUsed(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;)V

    goto/16 :goto_3

    .line 191
    .end local v7    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :pswitch_12
    if-ne v3, v6, :cond_2

    .line 192
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "send-tab-event"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 196
    :pswitch_13
    if-ne v3, v6, :cond_2

    .line 197
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mShowEmojis:Z

    if-eqz v0, :cond_2

    .line 198
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mIsEmojiToggleToSymbolsMode:Z

    if-nez v0, :cond_9

    .line 199
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "toggle-keyboard-mode"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_9
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "show-emojis"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 206
    :pswitch_14
    if-ne v3, v6, :cond_2

    .line 207
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "start-personalization-guide"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 211
    :pswitch_15
    if-ne v3, v6, :cond_2

    .line 212
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getXKeyType()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_3

    .line 214
    :pswitch_16
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    sget-object v4, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    const-string v5, "primary-language-changed"

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 219
    :pswitch_17
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "voice-input"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 227
    :pswitch_18
    if-ne v3, v6, :cond_2

    .line 228
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "voice-input"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 232
    :pswitch_19
    if-ne v3, v6, :cond_2

    .line 233
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "toggle-floating"

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->getKeyCenterPoint(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Landroid/graphics/Point;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 237
    :pswitch_1a
    if-ne v3, v6, :cond_2

    .line 238
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "start-handwriting"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 245
    :cond_a
    invoke-virtual {v2, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v10

    .line 246
    .local v10, "primaryCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 247
    .restart local v1    # "blockType":Lcom/sonyericsson/ned/controller/EventBlockType;
    if-eqz v10, :cond_b

    if-eq v3, v6, :cond_c

    :cond_b
    if-ne v3, v12, :cond_11

    .line 249
    :cond_c
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v10, v0}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 250
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "auto-select-next-word-prediction"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mNonSpaceLanguage:Z

    if-eqz v0, :cond_d

    .line 252
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "auto-select-candidate"

    invoke-direct {v0, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_d
    if-ne v3, v12, :cond_e

    .line 256
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "command-key-released"

    .line 257
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v5

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_e
    invoke-virtual {v10}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 260
    invoke-virtual {v10, v11}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    new-array v4, v11, [C

    .line 259
    invoke-static {v0, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    if-ne v3, v12, :cond_11

    .line 261
    :cond_10
    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 265
    :cond_11
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 266
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .line 267
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->getPoints()[I

    move-result-object v4

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->getPointTimes()[J

    move-result-object v5

    .line 268
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;->getPointsCount()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/Object;I[I[JI)V

    .line 266
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 270
    :cond_12
    new-instance v0, Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch -0x14
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_13
        :pswitch_b
        :pswitch_12
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_a
    .end packed-switch

    .line 149
    :pswitch_data_2
    .packed-switch -0xb
        :pswitch_e
    .end packed-switch

    .line 176
    :pswitch_data_3
    .packed-switch -0x2
        :pswitch_11
    .end packed-switch

    .line 212
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
    .end packed-switch
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
    .line 327
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 293
    return-void
.end method
