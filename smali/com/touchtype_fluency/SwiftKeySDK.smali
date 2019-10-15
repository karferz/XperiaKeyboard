.class public Lcom/touchtype_fluency/SwiftKeySDK;
.super Ljava/lang/Object;
.source "SwiftKeySDK.java"


# static fields
.field public static final customLibName:Ljava/lang/String; = "com.touchtype_fluency.nativeLibraryName"

.field public static final customLocation:Ljava/lang/String; = "com.touchtype_fluency.nativeLibrary"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-string v0, "com.touchtype_fluency.nativeLibrary"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "com.touchtype_fluency.nativeLibraryName"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load SwiftKey SDK\'s native library from com.touchtype_fluency.nativeLibrary = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/impl/NativeLibLoader;->loadFullPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->initIDs()V

    .line 98
    return-void

    .line 84
    :cond_0
    if-eqz v1, :cond_1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load SwiftKey SDK\'s native library as com.touchtype_fluency.nativeLibraryName = \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/impl/NativeLibLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    sget-object v0, Lcom/touchtype_fluency_libname/LibName;->libName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load SwiftKey SDK\'s native library \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/touchtype_fluency_libname/LibName;->libName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/impl/NativeLibLoader;->loadOrUnpack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation
.end method

.method public static forceInit()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public static native getExpiry(Ljava/lang/String;)J
.end method

.method public static native getSourceVersion()Ljava/lang/String;
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method private static native initIDs()V
.end method

.method public static native setLoggingListener(Lcom/touchtype_fluency/LoggingListener;)V
.end method
