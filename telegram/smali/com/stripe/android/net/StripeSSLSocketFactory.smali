.class public Lcom/stripe/android/net/StripeSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "StripeSSLSocketFactory.java"


# static fields
.field private static final TLSv11Proto:Ljava/lang/String; = "TLSv1.1"

.field private static final TLSv12Proto:Ljava/lang/String; = "TLSv1.2"


# instance fields
.field private final tlsv11Supported:Z

.field private final tlsv12Supported:Z

.field private final under:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 30
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iput-object v6, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    .line 33
    const/4 v3, 0x0

    .local v3, "tlsv11Supported":Z
    const/4 v4, 0x0

    .line 37
    .local v4, "tlsv12Supported":Z
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    .local v2, "supportedProtocols":[Ljava/lang/String;
    :goto_0
    array-length v6, v2

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 43
    .local v1, "proto":Ljava/lang/String;
    const-string/jumbo v7, "TLSv1.1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    const/4 v3, 0x1

    .line 42
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    .end local v1    # "proto":Ljava/lang/String;
    .end local v2    # "supportedProtocols":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-array v2, v5, [Ljava/lang/String;

    .restart local v2    # "supportedProtocols":[Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "proto":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "TLSv1.2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 46
    const/4 v4, 0x1

    goto :goto_2

    .line 50
    .end local v1    # "proto":Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv11Supported:Z

    .line 51
    iput-boolean v4, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv12Supported:Z

    .line 52
    return-void
.end method

.method private fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 3
    .param p1, "sock"    # Ljava/net/Socket;

    .prologue
    .line 103
    instance-of v2, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_0

    .line 118
    .end local p1    # "sock":Ljava/net/Socket;
    :goto_0
    return-object p1

    .restart local p1    # "sock":Ljava/net/Socket;
    :cond_0
    move-object v1, p1

    .line 107
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 109
    .local v1, "sslSock":Ljavax/net/ssl/SSLSocket;
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v0, "protos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv11Supported:Z

    if-eqz v2, :cond_1

    .line 111
    const-string/jumbo v2, "TLSv1.1"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    iget-boolean v2, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->tlsv12Supported:Z

    if-eqz v2, :cond_2

    .line 114
    const-string/jumbo v2, "TLSv1.2"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    move-object p1, v1

    .line 118
    goto :goto_0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    .line 99
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;->fixupSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/stripe/android/net/StripeSSLSocketFactory;->under:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
