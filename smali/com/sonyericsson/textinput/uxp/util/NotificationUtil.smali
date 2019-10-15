.class public final Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notification-id"

.field public static final KEY_NOTIFICATION_START_INTENT:Ljava/lang/String; = "notification-start"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "xperia-keyboard"

.field private static final sMessagesLock:Ljava/lang/Object;

.field private static sNotificationMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sMessagesLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static addToExpandedMessages(ILjava/lang/CharSequence;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "sequence"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sMessagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    monitor-exit v2

    .line 242
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearExpandedMessages(Landroid/content/Intent;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, -0xa

    .line 211
    sget-object v3, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sMessagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    const/16 v0, -0xa

    .line 213
    .local v0, "defaultId":I
    :try_start_0
    const-string v2, "notification-id"

    const/16 v4, -0xa

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, "notificationId":I
    if-eq v1, v5, :cond_0

    .line 215
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_0
    monitor-exit v3

    .line 224
    return-void

    .line 221
    :cond_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 223
    .end local v1    # "notificationId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static createAndSendNotification(Landroid/content/Context;IILjava/lang/CharSequence;Landroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;IZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "notificationId"    # I
    .param p2, "requestCode"    # I
    .param p3, "contentText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "intentType"    # Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "iconId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7, "useBigTextStyle"    # Z

    .prologue
    .line 67
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->addToExpandedMessages(ILjava/lang/CharSequence;)V

    .line 69
    const-string v2, "notification"

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 72
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isOOrNewer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    new-instance v9, Landroid/app/NotificationChannel;

    const-string v2, "xperia-keyboard"

    const v3, 0x7f070055

    .line 74
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v9, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 76
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v12, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 79
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    const v2, 0x7f070055

    .line 80
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 81
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {p0, p2, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->getPendingIntent(Landroid/content/Context;IILandroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    .line 79
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->createBuilderObject(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 89
    .local v8, "builder":Landroid/app/Notification$Builder;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sMessagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->sNotificationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 91
    .local v10, "expandedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez p7, :cond_1

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_2

    .line 92
    :cond_1
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-static {v8, v0, v1}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->createNotification(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Landroid/app/Notification;

    move-result-object v11

    .line 98
    .local v11, "notification":Landroid/app/Notification;
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget v2, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v11, Landroid/app/Notification;->flags:I

    .line 101
    invoke-virtual {v12, p1, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    return-void

    .line 94
    .end local v11    # "notification":Landroid/app/Notification;
    :cond_2
    const v2, 0x7f070055

    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v8, v2, v10}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->createExpandedNotification(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Ljava/util/List;)Landroid/app/Notification;

    move-result-object v11

    .restart local v11    # "notification":Landroid/app/Notification;
    goto :goto_0

    .line 98
    .end local v10    # "expandedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "notification":Landroid/app/Notification;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static createBuilderObject(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "notificationId"    # I
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "iconId"    # I

    .prologue
    const/4 v5, 0x1

    .line 140
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sonyericsson/textinput/uxp/controller/NotificationDeletedService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v2, "dismissIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->SERVICE:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    invoke-static {p0, v3, p1, v2, v4}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->getPendingIntent(Landroid/content/Context;IILandroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    .local v1, "deletePendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v3, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 146
    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 150
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isOOrNewer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    const-string v3, "xperia-keyboard"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 162
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    .line 167
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 168
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 169
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 172
    :cond_0
    return-object v0

    .line 154
    :cond_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 159
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private static createExpandedNotification(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Ljava/util/List;)Landroid/app/Notification;
    .locals 4
    .param p0, "builder"    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "expandedTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$Builder;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 123
    .local v0, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-virtual {v0, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 124
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 125
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    .line 127
    .end local v1    # "message":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 128
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 129
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private static createNotification(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Landroid/app/Notification;
    .locals 2
    .param p0, "builder"    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "contentText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useBigTextStyle"    # Z

    .prologue
    .line 108
    if-eqz p2, :cond_0

    .line 109
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, p0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 113
    .local v0, "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 111
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notification":Landroid/app/Notification;
    goto :goto_0
.end method

.method private static getPendingIntent(Landroid/content/Context;IILandroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestCode"    # I
    .param p2, "notificationId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "type"    # Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v1, 0x8000000

    .line 190
    const-string v0, "notification-id"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    invoke-virtual {p4, v0}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p0, p1, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 194
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->SERVICE:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    invoke-virtual {p4, v0}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0, p3, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The pending intent type you entered is not valid"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
