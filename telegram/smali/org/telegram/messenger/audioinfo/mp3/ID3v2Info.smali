.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "ID3v2Info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;,
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private coverPictureType:B

.field private final debugLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V
    .locals 10
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "debugLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    .line 78
    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    .line 79
    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isID3v2StartPosition(Ljava/io/InputStream;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    new-instance v4, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    invoke-direct {v4, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v4, "tagHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    const-string/jumbo v5, "ID3"

    iput-object v5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->brand:Ljava/lang/String;

    .line 82
    const-string/jumbo v5, "2.%d.%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getRevision()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->version:Ljava/lang/String;

    .line 83
    invoke-virtual {v4, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->tagBody(Ljava/io/InputStream;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    move-result-object v3

    .line 85
    .local v3, "tagBody":Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 86
    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;-><init>(Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;)V

    .line 87
    .local v2, "frameHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isPadding()Z
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    .end local v2    # "frameHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    .line 117
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getFooterSize()I

    move-result v5

    if-lez v5, :cond_1

    .line 118
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getFooterSize()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 121
    .end local v3    # "tagBody":Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    .end local v4    # "tagHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    :cond_1
    return-void

    .line 90
    .restart local v2    # "frameHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    .restart local v3    # "tagBody":Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    .restart local v4    # "tagHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 91
    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v5, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v6, "ID3 frame claims to extend frames area"

    invoke-virtual {v5, p2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 111
    .end local v2    # "frameHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v5, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ID3 exception occured: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v0    # "e":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
    .restart local v2    # "frameHeader":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isEncryption()Z

    move-result v5

    if-nez v5, :cond_5

    .line 97
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->frameBody(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    :try_end_2
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 99
    .local v1, "frameBody":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)V
    :try_end_3
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v5

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V
    :try_end_4
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .restart local v0    # "e":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
    :try_start_5
    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v5, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v6, "ID3 exception occured in frame %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getFrameId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v5

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    goto/16 :goto_0

    .end local v0    # "e":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v6

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    throw v5

    .line 108
    .end local v1    # "frameBody":Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v5

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V
    :try_end_6
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public static isID3v2StartPosition(Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 63
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0
.end method


# virtual methods
.method parseAttachedPictureFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;
    .locals 10
    .param p1, "data"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v1

    .line 356
    .local v1, "encoding":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 357
    const/4 v6, 0x3

    sget-object v7, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    invoke-virtual {p1, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "fileType":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 366
    const-string/jumbo v4, "image/unknown"

    .line 371
    .end local v2    # "fileType":Ljava/lang/String;
    .local v4, "imageType":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v5

    .line 372
    .local v5, "pictureType":B
    const/16 v6, 0xc8

    invoke-virtual {p1, v6, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v6

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v3

    .line 374
    .local v3, "imageData":[B
    new-instance v6, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;

    invoke-direct {v6, v5, v0, v4, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;-><init>(BLjava/lang/String;Ljava/lang/String;[B)V

    return-object v6

    .line 358
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "imageData":[B
    .end local v4    # "imageType":Ljava/lang/String;
    .end local v5    # "pictureType":B
    .restart local v2    # "fileType":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v8, "PNG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v8, "JPG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 360
    :pswitch_0
    const-string/jumbo v4, "image/png"

    .line 361
    .restart local v4    # "imageType":Ljava/lang/String;
    goto :goto_1

    .line 363
    .end local v4    # "imageType":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v4, "image/jpeg"

    .line 364
    .restart local v4    # "imageType":Ljava/lang/String;
    goto :goto_1

    .line 369
    .end local v2    # "fileType":Ljava/lang/String;
    .end local v4    # "imageType":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x14

    sget-object v7, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    invoke-virtual {p1, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "imageType":Ljava/lang/String;
    goto :goto_1

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x11fc1 -> :sswitch_1
        0x13609 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method parseCommentOrUnsynchronizedLyricsFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;
    .locals 6
    .param p1, "data"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v1

    .line 347
    .local v1, "encoding":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    const/4 v4, 0x3

    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "language":Ljava/lang/String;
    const/16 v4, 0xc8

    invoke-virtual {p1, v4, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1, v4, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;

    invoke-direct {v4, v2, v0, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method parseFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)V
    .locals 24
    .param p1, "frame"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 125
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Parsing frame: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getFrameId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getFrameId()Ljava/lang/String;

    move-result-object v21

    const/16 v20, -0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v20, :pswitch_data_0

    .line 338
    :cond_2
    :goto_1
    return-void

    .line 127
    :sswitch_0
    const-string/jumbo v22, "PIC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v22, "APIC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v22, "COM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v22, "COMM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v22, "TAL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v22, "TALB"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v22, "TCP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v22, "TCMP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v22, "TCM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v22, "TCOM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v22, "TCO"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v22, "TCON"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v22, "TCR"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v22, "TCOP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v22, "TDRC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v22, "TLE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v22, "TLEN"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v22, "TP1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v22, "TPE1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v22, "TP2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v22, "TPE2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v22, "TPA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v22, "TPOS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v22, "TRK"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v22, "TRCK"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v22, "TT1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v22, "TIT1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v22, "TT2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v22, "TIT2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v22, "TYE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v22, "TYER"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v22, "ULT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v22, "USLT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x20

    goto/16 :goto_0

    .line 130
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->coverPictureType:B

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 131
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseAttachedPictureFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;

    move-result-object v10

    .line 132
    .local v10, "picture":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    iget-byte v0, v10, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->type:B

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    iget-byte v0, v10, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->type:B

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 134
    :cond_4
    :try_start_0
    iget-object v4, v10, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->imageData:[B

    .line 135
    .local v4, "bytes":[B
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 136
    .local v9, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 138
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 139
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    const/16 v21, 0x320

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    const/16 v21, 0x320

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 140
    :cond_5
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 141
    .local v13, "size":I
    :goto_2
    const/16 v20, 0x320

    move/from16 v0, v20

    if-le v13, v0, :cond_6

    .line 142
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    div-int/lit8 v13, v13, 0x2

    goto :goto_2

    .line 146
    .end local v13    # "size":I
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42f00000    # 120.0f

    div-float v12, v20, v21

    .line 150
    .local v12, "scale":F
    const/16 v20, 0x0

    cmpl-float v20, v12, v20

    if-lez v20, :cond_8

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v12

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v12

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v20 .. v23}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->smallCover:Landroid/graphics/Bitmap;

    .line 155
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->smallCover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->smallCover:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v4    # "bytes":[B
    .end local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "scale":F
    :cond_7
    :goto_4
    iget-byte v0, v10, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->type:B

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->coverPictureType:B

    goto/16 :goto_1

    .line 153
    .restart local v4    # "bytes":[B
    .restart local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "scale":F
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->cover:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->smallCover:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 159
    .end local v4    # "bytes":[B
    .end local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "scale":F
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v10    # "picture":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseCommentOrUnsynchronizedLyricsFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;

    move-result-object v5

    .line 169
    .local v5, "comm":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->comment:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    iget-object v0, v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->description:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    const-string/jumbo v20, ""

    iget-object v0, v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->description:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 170
    :cond_9
    iget-object v0, v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->comment:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    .end local v5    # "comm":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->album:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :pswitch_3
    const-string/jumbo v20, "1"

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->compilation:Z

    goto/16 :goto_1

    .line 183
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->composer:Ljava/lang/String;

    goto/16 :goto_1

    .line 187
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "tcon":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 189
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->genre:Ljava/lang/String;

    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    const/16 v20, 0x0

    :try_start_2
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x28

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 193
    const/16 v20, 0x29

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 194
    .local v11, "pos":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v11, v0, :cond_a

    .line 195
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v7

    .line 196
    if-nez v7, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v21, v11, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 197
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->genre:Ljava/lang/String;

    .line 203
    .end local v11    # "pos":I
    :cond_a
    :goto_5
    if-eqz v7, :cond_2

    .line 204
    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->genre:Ljava/lang/String;

    goto/16 :goto_1

    .line 206
    :catch_1
    move-exception v20

    goto/16 :goto_1

    .line 201
    :cond_b
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_5

    .line 213
    .end local v7    # "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    .end local v14    # "tcon":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->copyright:Ljava/lang/String;

    goto/16 :goto_1

    .line 216
    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "tdrc":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 219
    const/16 v20, 0x0

    const/16 v21, 0x4

    :try_start_3
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->year:S
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 220
    :catch_2
    move-exception v6

    .line 221
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 222
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse year from: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "tdrc":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v16

    .line 231
    .local v16, "tlen":Ljava/lang/String;
    :try_start_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->duration:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 232
    :catch_3
    move-exception v6

    .line 233
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 234
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse track duration: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "tlen":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->artist:Ljava/lang/String;

    goto/16 :goto_1

    .line 244
    :pswitch_a
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->albumArtist:Ljava/lang/String;

    goto/16 :goto_1

    .line 248
    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, "tpos":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 250
    const/16 v20, 0x2f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 251
    .local v8, "index":I
    if-gez v8, :cond_c

    .line 253
    :try_start_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->disc:S
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 254
    :catch_4
    move-exception v6

    .line 255
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 256
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse disc number: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 261
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    const/16 v20, 0x0

    :try_start_6
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->disc:S
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 268
    :cond_d
    :goto_6
    add-int/lit8 v20, v8, 0x1

    :try_start_7
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->discs:S
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    .line 269
    :catch_5
    move-exception v6

    .line 270
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 271
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse number of discs: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v6

    .line 263
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 264
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse disc number: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6

    .line 279
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "index":I
    .end local v17    # "tpos":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v18

    .line 280
    .local v18, "trck":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 281
    const/16 v20, 0x2f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 282
    .restart local v8    # "index":I
    if-gez v8, :cond_e

    .line 284
    :try_start_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->track:S
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_1

    .line 285
    :catch_7
    move-exception v6

    .line 286
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 287
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse track number: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const/16 v20, 0x0

    :try_start_9
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->track:S
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 299
    :cond_f
    :goto_7
    add-int/lit8 v20, v8, 0x1

    :try_start_a
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->tracks:S
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    .line 300
    :catch_8
    move-exception v6

    .line 301
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 302
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse number of tracks: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v6

    .line 294
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 295
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse track number: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_7

    .line 310
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "index":I
    .end local v18    # "trck":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->grouping:Ljava/lang/String;

    goto/16 :goto_1

    .line 314
    :pswitch_e
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 318
    :pswitch_f
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object v19

    .line 319
    .local v19, "tyer":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 321
    :try_start_b
    invoke-static/range {v19 .. v19}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Short;->shortValue()S

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->year:S
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_1

    .line 322
    :catch_a
    move-exception v6

    .line 323
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 324
    sget-object v20, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not parse year: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 331
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "tyer":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->lyrics:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 332
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseCommentOrUnsynchronizedLyricsFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->lyrics:Ljava/lang/String;

    goto/16 :goto_1

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x10561 -> :sswitch_2
        0x1356a -> :sswitch_0
        0x1437f -> :sswitch_4
        0x143be -> :sswitch_8
        0x143c0 -> :sswitch_a
        0x143c1 -> :sswitch_6
        0x143c3 -> :sswitch_c
        0x144cd -> :sswitch_f
        0x14535 -> :sswitch_11
        0x14536 -> :sswitch_13
        0x14545 -> :sswitch_15
        0x1458d -> :sswitch_17
        0x145b1 -> :sswitch_19
        0x145b2 -> :sswitch_1b
        0x14660 -> :sswitch_1d
        0x1489d -> :sswitch_1f
        0x1ec189 -> :sswitch_1
        0x1fa70c -> :sswitch_3
        0x272ca3 -> :sswitch_5
        0x273452 -> :sswitch_7
        0x27348d -> :sswitch_9
        0x27348e -> :sswitch_b
        0x273490 -> :sswitch_d
        0x2738a1 -> :sswitch_e
        0x274b92 -> :sswitch_1a
        0x274b93 -> :sswitch_1c
        0x275521 -> :sswitch_10
        0x276408 -> :sswitch_12
        0x276409 -> :sswitch_14
        0x276560 -> :sswitch_16
        0x276b66 -> :sswitch_18
        0x2785f2 -> :sswitch_1e
        0x27e4a6 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;
    .locals 4
    .param p1, "frame"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v0

    .line 342
    .local v0, "encoding":Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
