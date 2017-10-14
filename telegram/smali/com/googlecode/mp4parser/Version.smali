.class public Lcom/googlecode/mp4parser/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 12
    const-class v3, Lcom/googlecode/mp4parser/Version;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sput-object v3, Lcom/googlecode/mp4parser/Version;->LOG:Ljava/util/logging/Logger;

    .line 16
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-class v4, Lcom/googlecode/mp4parser/Version;

    const-string/jumbo v5, "/version.txt"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 19
    .local v1, "lnr":Ljava/io/LineNumberReader;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 24
    .local v2, "version":Ljava/lang/String;
    :goto_0
    sput-object v2, Lcom/googlecode/mp4parser/Version;->VERSION:Ljava/lang/String;

    .line 26
    return-void

    .line 20
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/googlecode/mp4parser/Version;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v2, "unknown"

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
