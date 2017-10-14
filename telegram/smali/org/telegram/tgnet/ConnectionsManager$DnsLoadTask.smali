.class Lorg/telegram/tgnet/ConnectionsManager$DnsLoadTask;
.super Landroid/os/AsyncTask;
.source "ConnectionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/ConnectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/telegram/tgnet/NativeByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/tgnet/ConnectionsManager$1;

    .prologue
    .line 724
    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager$DnsLoadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$DnsLoadTask;->doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 15
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 729
    :try_start_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_isTestBackend()I

    move-result v9

    if-eqz v9, :cond_2

    .line 730
    new-instance v3, Ljava/net/URL;

    const-string/jumbo v9, "https://google.com/test/"

    invoke-direct {v3, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 734
    .local v3, "downloadUrl":Ljava/net/URL;
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 735
    .local v5, "httpConnection":Ljava/net/URLConnection;
    const-string/jumbo v9, "User-Agent"

    const-string/jumbo v10, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    invoke-virtual {v5, v9, v10}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string/jumbo v9, "Host"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "dns-telegram%1$s.appspot.com"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, ""

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const/16 v9, 0x1388

    invoke-virtual {v5, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 738
    const/16 v9, 0x1388

    invoke-virtual {v5, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 739
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 740
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 742
    .local v6, "httpConnectionStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 744
    .local v7, "outbuf":Ljava/io/ByteArrayOutputStream;
    const v9, 0x8000

    new-array v2, v9, [B

    .line 746
    .local v2, "data":[B
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager$DnsLoadTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    .line 759
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 760
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 765
    :cond_1
    :goto_3
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 766
    .local v1, "bytes":[B
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v9, v1

    invoke-direct {v0, v9}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 767
    .local v0, "buffer":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 772
    .end local v0    # "buffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "bytes":[B
    .end local v2    # "data":[B
    .end local v3    # "downloadUrl":Ljava/net/URL;
    .end local v5    # "httpConnection":Ljava/net/URLConnection;
    .end local v6    # "httpConnectionStream":Ljava/io/InputStream;
    .end local v7    # "outbuf":Ljava/io/ByteArrayOutputStream;
    :goto_4
    return-object v0

    .line 732
    :cond_2
    new-instance v3, Ljava/net/URL;

    const-string/jumbo v9, "https://google.com"

    invoke-direct {v3, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v3    # "downloadUrl":Ljava/net/URL;
    goto :goto_0

    .line 749
    .restart local v2    # "data":[B
    .restart local v5    # "httpConnection":Ljava/net/URLConnection;
    .restart local v6    # "httpConnectionStream":Ljava/io/InputStream;
    .restart local v7    # "outbuf":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 750
    .local v8, "read":I
    if-lez v8, :cond_4

    .line 751
    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 769
    .end local v2    # "data":[B
    .end local v3    # "downloadUrl":Ljava/net/URL;
    .end local v5    # "httpConnection":Ljava/net/URLConnection;
    .end local v6    # "httpConnectionStream":Ljava/io/InputStream;
    .end local v7    # "outbuf":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    :catch_0
    move-exception v4

    .line 770
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 772
    const/4 v0, 0x0

    goto :goto_4

    .line 752
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v2    # "data":[B
    .restart local v3    # "downloadUrl":Ljava/net/URL;
    .restart local v5    # "httpConnection":Ljava/net/URLConnection;
    .restart local v6    # "httpConnectionStream":Ljava/io/InputStream;
    .restart local v7    # "outbuf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read":I
    :cond_4
    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    goto :goto_2

    .line 762
    .end local v8    # "read":I
    :catch_1
    move-exception v4

    .line 763
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 724
    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$DnsLoadTask;->onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 5
    .param p1, "result"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    const/4 v4, 0x0

    .line 777
    if-eqz p1, :cond_0

    .line 778
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->access$602(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 779
    iget v1, p1, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDnsConfig(I)V

    .line 785
    :goto_0
    return-void

    .line 781
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;-><init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V

    .line 782
    .local v0, "task":Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 783
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$602(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
