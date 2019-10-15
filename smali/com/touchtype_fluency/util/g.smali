.class final Lcom/touchtype_fluency/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/util/g;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 23
    sget-object v0, Lcom/touchtype_fluency/util/d;->a:Lcom/touchtype_fluency/LoggingListener;

    .line 24
    if-eqz v0, :cond_0

    .line 25
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->DEBUG:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 144
    sget-object v0, Lcom/touchtype_fluency/util/d;->a:Lcom/touchtype_fluency/LoggingListener;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->SEVERE:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", stack trace: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    sget-object v4, Lcom/touchtype_fluency/util/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 68
    sget-object v0, Lcom/touchtype_fluency/util/d;->a:Lcom/touchtype_fluency/LoggingListener;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->WARN:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lcom/touchtype_fluency/util/d;->a:Lcom/touchtype_fluency/LoggingListener;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->SEVERE:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
