.class public Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lorg/telegram/messenger/exoplayer2/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private final defaultRequestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "contentTypePredicate":Lorg/telegram/messenger/exoplayer2/util/Predicate;, "Lorg/telegram/messenger/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "contentTypePredicate":Lorg/telegram/messenger/exoplayer2/util/Predicate;, "Lorg/telegram/messenger/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    .local p3, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;>;"
    const/16 v4, 0x1f40

    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;II)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;II)V
    .locals 8
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "contentTypePredicate":Lorg/telegram/messenger/exoplayer2/util/Predicate;, "Lorg/telegram/messenger/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    .local p3, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZLorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZLorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "readTimeoutMillis"    # I
    .param p6, "allowCrossProtocolRedirects"    # Z
    .param p7, "defaultRequestProperties"    # Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;IIZ",
            "Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "contentTypePredicate":Lorg/telegram/messenger/exoplayer2/util/Predicate;, "Lorg/telegram/messenger/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    .local p3, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lorg/telegram/messenger/exoplayer2/util/Predicate;

    .line 150
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 151
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 152
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 153
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 154
    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 155
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 156
    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .prologue
    .line 636
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 638
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 644
    :cond_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DefaultHttpDataSource"

    const-string/jumbo v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 12
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 470
    const-wide/16 v0, -0x1

    .line 471
    .local v0, "contentLength":J
    const-string/jumbo v8, "Content-Length"

    invoke-virtual {p0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "contentLengthHeader":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 474
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 479
    :cond_0
    :goto_0
    const-string/jumbo v8, "Content-Range"

    invoke-virtual {p0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "contentRangeHeader":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 481
    sget-object v8, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 482
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 484
    const/4 v8, 0x2

    .line 485
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 486
    .local v2, "contentLengthFromRange":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 489
    move-wide v0, v2

    .line 504
    .end local v2    # "contentLengthFromRange":J
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-wide v0

    .line 475
    .end local v5    # "contentRangeHeader":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 476
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "DefaultHttpDataSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected Content-Length ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "contentLengthFromRange":J
    .restart local v5    # "contentRangeHeader":Ljava/lang/String;
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    cmp-long v8, v0, v2

    if-eqz v8, :cond_1

    .line 495
    :try_start_2
    const-string/jumbo v8, "DefaultHttpDataSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Inconsistent headers ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 499
    .end local v2    # "contentLengthFromRange":J
    :catch_1
    move-exception v6

    .line 500
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "DefaultHttpDataSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected Content-Range ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p0, "originalUrl"    # Ljava/net/URL;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Null location redirect"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 449
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "protocol":Ljava/lang/String;
    const-string/jumbo v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported protocol redirect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    :cond_1
    return-object v1
.end method

.method private makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 13
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "postBody"    # [B
    .param p3, "position"    # J
    .param p5, "length"    # J
    .param p7, "allowGzip"    # Z
    .param p8, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 394
    .local v2, "connection":Ljava/net/HttpURLConnection;
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 395
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 396
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v6, :cond_0

    .line 397
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 398
    .local v4, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    .end local v4    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 402
    .restart local v4    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    .end local v4    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v6, p5, v6

    if-eqz v6, :cond_4

    .line 405
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "rangeRequest":Ljava/lang/String;
    const-wide/16 v6, -0x1

    cmp-long v6, p5, v6

    if-eqz v6, :cond_3

    .line 407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v8, p3, p5

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    :cond_3
    const-string/jumbo v6, "Range"

    invoke-virtual {v2, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v5    # "rangeRequest":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "User-Agent"

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-nez p7, :cond_5

    .line 413
    const-string/jumbo v6, "Accept-Encoding"

    const-string/jumbo v7, "identity"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_5
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 416
    if-eqz p2, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 417
    if-eqz p2, :cond_8

    .line 418
    const-string/jumbo v6, "POST"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 419
    array-length v6, p2

    if-nez v6, :cond_7

    .line 420
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 431
    :goto_3
    return-object v2

    .line 416
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 422
    :cond_7
    array-length v6, p2

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 423
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 424
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 425
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 426
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 429
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_3
.end method

.method private makeConnection(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 17
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 342
    .local v4, "url":Ljava/net/URL;
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->postBody:[B

    .line 343
    .local v5, "postBody":[B
    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    .line 344
    .local v6, "position":J
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    .line 345
    .local v8, "length":J
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v10

    .line 347
    .local v10, "allowGzip":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v3, :cond_1

    .line 350
    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 373
    :cond_0
    return-object v2

    .line 354
    :cond_1
    const/4 v13, 0x0

    .local v13, "redirectCount":I
    move v14, v13

    .line 355
    .end local v13    # "redirectCount":I
    .local v14, "redirectCount":I
    :goto_0
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "redirectCount":I
    .restart local v13    # "redirectCount":I
    const/16 v3, 0x14

    if-gt v14, v3, :cond_3

    .line 356
    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 358
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 359
    .local v15, "responseCode":I
    const/16 v3, 0x12c

    if-eq v15, v3, :cond_2

    const/16 v3, 0x12d

    if-eq v15, v3, :cond_2

    const/16 v3, 0x12e

    if-eq v15, v3, :cond_2

    const/16 v3, 0x12f

    if-eq v15, v3, :cond_2

    if-nez v5, :cond_0

    const/16 v3, 0x133

    if-eq v15, v3, :cond_2

    const/16 v3, 0x134

    if-ne v15, v3, :cond_0

    .line 368
    :cond_2
    const/4 v5, 0x0

    .line 369
    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 370
    .local v12, "location":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 371
    invoke-static {v4, v12}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    move v14, v13

    .line 375
    .end local v13    # "redirectCount":I
    .restart local v14    # "redirectCount":I
    goto :goto_0

    .line 378
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v12    # "location":Ljava/lang/String;
    .end local v14    # "redirectCount":I
    .end local v15    # "responseCode":I
    .restart local v13    # "redirectCount":I
    :cond_3
    new-instance v3, Ljava/net/NoRouteToHostException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Too many redirects: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .locals 7
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "bytesRemaining"    # J

    .prologue
    .line 599
    sget v4, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x13

    if-eq v4, v5, :cond_1

    sget v4, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 605
    .local v1, "inputStream":Ljava/io/InputStream;
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_4

    .line 607
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 615
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 617
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 620
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "unexpectedEndOfInput"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 621
    .local v3, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 622
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 610
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_4
    const-wide/16 v4, 0x800

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2

    goto :goto_0
.end method

.method private readInternal([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    .line 560
    if-nez p3, :cond_1

    .line 561
    const/4 v2, 0x0

    .line 584
    :cond_0
    :goto_0
    return v2

    .line 563
    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 564
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long v0, v4, v6

    .line 565
    .local v0, "bytesRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    move v2, v3

    .line 566
    goto :goto_0

    .line 568
    :cond_2
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    .line 571
    .end local v0    # "bytesRemaining":J
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 572
    .local v2, "read":I
    if-ne v2, v3, :cond_5

    .line 573
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 575
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_4
    move v2, v3

    .line 577
    goto :goto_0

    .line 580
    :cond_5
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 581
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private skipInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 543
    :goto_0
    return-void

    .line 521
    :cond_0
    sget-object v3, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 522
    .local v2, "skipBuffer":[B
    if-nez v2, :cond_1

    .line 523
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 526
    :cond_1
    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 527
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    sub-long/2addr v4, v6

    array-length v3, v2

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 528
    .local v1, "readLength":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 529
    .local v0, "read":I
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 532
    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 533
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 535
    :cond_3
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 536
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_1

    .line 537
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_1

    .line 542
    .end local v0    # "read":I
    .end local v1    # "readLength":I
    :cond_4
    sget-object v3, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 4

    .prologue
    .line 334
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected final bytesSkipped()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 184
    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 276
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRemaining()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_0
    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 286
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 287
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 288
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 289
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 294
    :cond_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 286
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 287
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v2, :cond_2

    .line 288
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 289
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method protected final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 189
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 190
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 192
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 208
    .local v6, "responseCode":I
    const/16 v7, 0xc8

    if-lt v6, v7, :cond_0

    const/16 v7, 0x12b

    if-le v6, v7, :cond_2

    .line 209
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 210
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 211
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v4, v6, v5, p1}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 213
    .local v4, "exception":Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    const/16 v7, 0x1a0

    if-ne v6, v7, :cond_1

    .line 214
    new-instance v7, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 216
    :cond_1
    throw v4

    .line 193
    .end local v4    # "exception":Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "responseCode":I
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to connect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v3, p1, v9}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V

    throw v7

    .line 201
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 202
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 203
    new-instance v7, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to connect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v3, p1, v9}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V

    throw v7

    .line 220
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "responseCode":I
    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "contentType":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lorg/telegram/messenger/exoplayer2/util/Predicate;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lorg/telegram/messenger/exoplayer2/util/Predicate;

    invoke-interface {v7, v2}, Lorg/telegram/messenger/exoplayer2/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 222
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 223
    new-instance v7, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v7, v2, p1}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    throw v7

    .line 229
    :cond_3
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    :goto_0
    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 232
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 233
    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    .line 234
    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 249
    :goto_1
    :try_start_2
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 256
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v7, :cond_4

    .line 257
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v7, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 260
    :cond_4
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v8

    .line 229
    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 236
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 237
    .local v0, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-eqz v7, :cond_7

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    sub-long v8, v0, v8

    :goto_2
    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    :cond_7
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 245
    .end local v0    # "contentLength":J
    :cond_8
    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 250
    :catch_2
    move-exception v3

    .line 251
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 252
    new-instance v7, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/4 v8, 0x1

    invoke-direct {v7, v3, p1, v8}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V

    throw v7
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->skipInternal()V

    .line 267
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->readInternal([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V

    throw v1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
