.class public final Lcom/sonyericsson/textinput/uxp/util/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static final CERTIFICATE_ALGORITHM:Ljava/lang/String; = "X509"

.field private static final JAVA_KEY_STORE:Ljava/lang/String; = "BKS"

.field private static final JAVA_KEY_STORE_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEYSTORE_RESOURCE_ID:I = 0x7f060005

.field private static final TRANSPORT_LAYER_SECURITY:Ljava/lang/String; = "TLS"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static createSSLContext(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    .line 56
    .local v1, "keyStoreInputStream":Ljava/io/InputStream;
    :try_start_0
    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 57
    .local v2, "localTrustStore":Ljava/security/KeyStore;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    const-string v5, "password"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 59
    const-string v5, "X509"

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 60
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 61
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 62
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .end local v2    # "localTrustStore":Ljava/security/KeyStore;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    :goto_0
    return-object v3

    .line 70
    .restart local v2    # "localTrustStore":Ljava/security/KeyStore;
    .restart local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "localTrustStore":Ljava/security/KeyStore;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_1

    .line 69
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    :cond_1
    :goto_2
    throw v5

    .line 70
    :catch_3
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    move-object v0, v5

    goto :goto_1
.end method

.method public static setSSL(Ljavax/net/ssl/HttpsURLConnection;Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 87
    return-void
.end method
