.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;
.super Ljava/lang/Object;
.source "GmailParser.java"


# static fields
.field private static final A_HREF:Ljava/util/regex/Pattern;

.field private static final BLOCKQUOTE_END_TAG:Ljava/lang/String; = "/blockquote>"

.field private static final BLOCKQUOTE_START_TAG:Ljava/lang/String; = "<blockquote"

.field private static final DIV_CLASS_GMAIL_QUOTE:Ljava/lang/String; = "<div class=\"gmail_quote\">"

.field private static final DIV_END_TAG:Ljava/lang/String; = "/div>"

.field private static final DIV_START_TAG:Ljava/lang/String; = "<div"

.field private static final HTML_NAME:Ljava/util/regex/Pattern;

.field private static final MAXIMUM_MESSAGES:I = 0x3e8

.field public static final PROGRESS:I = 0x1

.field public static final PROGRESS_FAIL:I = -0x1

.field private static final REPLY_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPAN_CLASS_GMAIL_QUOTE:Ljava/lang/String; = "<span class=\"gmail_quote\">"

.field private static final SPAN_END_TAG:Ljava/lang/String; = "/span>"

.field private static final SPAN_START_TAG:Ljava/lang/String; = "<span"

.field private static final TAG:Ljava/util/regex/Pattern;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mTask:Landroid/os/AsyncTask;
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
.end field

.field private final mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 33
    const-string v0, "^[>].*$"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->REPLY_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "<a href=.+?/a>"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->A_HREF:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "&.{2,6};"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->HTML_NAME:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "<.+?>"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->TAG:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mTask:Landroid/os/AsyncTask;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mToken:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mAccount:Landroid/accounts/Account;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method private removeQuotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startQuote"    # Ljava/lang/String;
    .param p3, "startTag"    # Ljava/lang/String;
    .param p4, "endTag"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 119
    .local v4, "pos":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 120
    const/4 v3, 0x1

    .line 121
    .local v3, "nbr":I
    const/4 v1, 0x0

    .line 123
    .local v1, "foundEnd":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v4, v5

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 131
    :cond_0
    :goto_2
    if-nez v3, :cond_4

    .line 132
    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    if-nez v1, :cond_5

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 143
    .end local v1    # "foundEnd":Z
    .end local v2    # "i":I
    .end local v3    # "nbr":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 127
    .restart local v1    # "foundEnd":Z
    .restart local v2    # "i":I
    .restart local v3    # "nbr":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 123
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 142
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 162
    return-void
.end method

.method protected onComplete()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected onProgress(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 165
    return-void
.end method

.method public parseBody(Ljava/lang/String;)V
    .locals 4
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 147
    move-object v0, p1

    .line 148
    .local v0, "sequence":Ljava/lang/String;
    const-string v1, "<blockquote"

    const-string v2, "<blockquote"

    const-string v3, "/blockquote>"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->removeQuotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "<div class=\"gmail_quote\">"

    const-string v2, "<div"

    const-string v3, "/div>"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->removeQuotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "<span class=\"gmail_quote\">"

    const-string v2, "<span"

    const-string v3, "/span>"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->removeQuotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->A_HREF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->HTML_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->TAG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->REPLY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/GmailParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addSequence(Ljava/lang/String;Landroid/content/Context;)V

    .line 158
    return-void
.end method
