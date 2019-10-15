.class public Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;
.super Landroid/preference/Preference;
.source "FeedbackPreference.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.sonymobile.internalmarket.action.SEND_FEEDBACK"

.field public static final PACKAGE:Ljava/lang/String; = "package:"

.field private static final PERMISSION:Ljava/lang/String; = "com.sonymobile.internalmarket.permission.RECEIVE_FEEDBACK"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mReceiverExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private canSendFeedback()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mReceiverExists:Z

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mContext:Landroid/content/Context;

    .line 60
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonymobile.internalmarket.action.SEND_FEEDBACK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mIntent:Landroid/content/Intent;

    .line 61
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mIntent:Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mReceiverExists:Z

    .line 68
    return-void
.end method

.method private startFeedbackActivity()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->mIntent:Landroid/content/Intent;

    const-string v2, "com.sonymobile.internalmarket.permission.RECEIVE_FEEDBACK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->init(Landroid/content/Context;)V

    .line 88
    const/4 v1, 0x1

    .line 91
    .local v1, "isFeedbackShown":Z
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->canSendFeedback()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070286

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 94
    .local v0, "category":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    const/4 v1, 0x0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019c

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 101
    .local v2, "sendFeedbackPreference":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    const/4 v1, 0x0

    .line 107
    .end local v0    # "category":Landroid/preference/Preference;
    .end local v2    # "sendFeedbackPreference":Landroid/preference/Preference;
    :cond_1
    return v1
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->startFeedbackActivity()V

    .line 55
    return-void
.end method
