.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;
.super Landroid/os/AsyncTask;
.source "GmailParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mPublishedProgress:Z

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 47
    new-instance v1, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;

    invoke-direct {v1}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;-><init>()V

    .line 48
    .local v1, "service":Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->bindToGmailService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->connectToImap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->scanMails(Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;)V

    .line 52
    invoke-virtual {v1}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->close()V

    .line 53
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->writeDynamicModel()V

    .line 67
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 55
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->onComplete()V

    .line 78
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->onProgress(II)V

    .line 73
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public scanMails(Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;)V
    .locals 7
    .param p1, "service"    # Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->getSentMessagesCount()I

    move-result v3

    .line 84
    .local v3, "messageCount":I
    if-gez v3, :cond_1

    .line 85
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 102
    .end local v3    # "messageCount":I
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v3    # "messageCount":I
    :cond_1
    const/4 v4, 0x0

    add-int/lit16 v5, v3, -0x3e8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->getSentMessageHtmlText(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 92
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->parseBody(Ljava/lang/String;)V

    .line 93
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->mPublishedProgress:Z

    if-nez v4, :cond_2

    .line 94
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 95
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;->mPublishedProgress:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v1    # "i":I
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "messageCount":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
