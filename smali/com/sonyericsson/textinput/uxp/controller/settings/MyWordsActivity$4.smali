.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;
.super Ljava/lang/Thread;
.source "MyWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->fetchAndShowWords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 303
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1000(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 304
    .local v1, "userDictionaryWord":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "lowerCaseWord":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1100(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1200(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/ned/model/IUserDictionary;

    move-result-object v5

    .line 307
    invoke-interface {v5, v1}, Lcom/sonyericsson/ned/model/IUserDictionary;->isInStaticDictionary(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 308
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 303
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "lowerCaseWord":Ljava/lang/String;
    .end local v1    # "userDictionaryWord":Ljava/lang/String;
    :cond_2
    return-void
.end method
