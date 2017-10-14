.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "ID3v1Info.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7e

    const/16 v5, 0x1e

    .line 34
    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->isID3v1StartPosition(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    const-string/jumbo v3, "ID3"

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->brand:Ljava/lang/String;

    .line 37
    const-string/jumbo v3, "1.0"

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->version:Ljava/lang/String;

    .line 38
    const/16 v3, 0x80

    invoke-virtual {p0, p1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 39
    .local v0, "bytes":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->title:Ljava/lang/String;

    .line 40
    const/16 v3, 0x21

    invoke-virtual {p0, v0, v3, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->artist:Ljava/lang/String;

    .line 41
    const/16 v3, 0x3f

    invoke-virtual {p0, v0, v3, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->album:Ljava/lang/String;

    .line 43
    const/16 v3, 0x5d

    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v3, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->year:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    const/16 v3, 0x61

    invoke-virtual {p0, v0, v3, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->comment:Ljava/lang/String;

    .line 48
    const/16 v3, 0x7f

    aget-byte v3, v0, v3

    invoke-static {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v2

    .line 49
    .local v2, "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->genre:Ljava/lang/String;

    .line 56
    :cond_0
    const/16 v3, 0x7d

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    aget-byte v3, v0, v6

    if-eqz v3, :cond_1

    .line 57
    const-string/jumbo v3, "1.1"

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->version:Ljava/lang/String;

    .line 58
    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->track:S

    .line 61
    .end local v0    # "bytes":[B
    .end local v2    # "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    :cond_1
    return-void

    .line 44
    .restart local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->year:S

    goto :goto_0
.end method

.method public static isID3v1StartPosition(Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 28
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0
.end method


# virtual methods
.method extractString([BII)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v1, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 80
    .local v1, "text":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 81
    .local v2, "zeroIndex":I
    if-gez v2, :cond_0

    .line 83
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "zeroIndex":I
    :goto_0
    return-object v1

    .line 81
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "zeroIndex":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 82
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "zeroIndex":I
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "total":I
    new-array v0, p2, [B

    .line 66
    .local v0, "bytes":[B
    :goto_0
    if-ge v2, p2, :cond_1

    .line 67
    sub-int v3, p2, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 68
    .local v1, "current":I
    if-lez v1, :cond_0

    .line 69
    add-int/2addr v2, v1

    goto :goto_0

    .line 71
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 74
    .end local v1    # "current":I
    :cond_1
    return-object v0
.end method
