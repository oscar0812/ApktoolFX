.class public Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "M4AInfo.java"


# static fields
.field private static final ASCII:Ljava/lang/String; = "ISO8859_1"

.field static final LOGGER:Ljava/util/logging/Logger;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final debugLevel:Ljava/util/logging/Level;

.field private rating:B

.field private speed:Ljava/math/BigDecimal;

.field private tempo:S

.field private volume:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "debugLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    .line 49
    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    .line 50
    new-instance v0, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v0, "mp4":Lorg/telegram/messenger/audioinfo/m4a/MP4Input;
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 54
    :cond_0
    const-string/jumbo v1, "ftyp"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 55
    const-string/jumbo v1, "moov"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 56
    return-void
.end method


# virtual methods
.method data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 12
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v8, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 189
    sget-object v8, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 191
    :cond_0
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 192
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 193
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 308
    :cond_2
    :goto_1
    return-void

    .line 193
    :sswitch_0
    const-string/jumbo v10, "\u00a9alb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v10, "aART"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "\u00a9ART"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v10, "\u00a9cmt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "\u00a9com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v10, "\u00a9wrt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v10, "covr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v10, "cpil"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v10, "cprt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v10, "\u00a9cpy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v10, "\u00a9day"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v10, "disk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v10, "gnre"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v10, "\u00a9gen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v10, "\u00a9grp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v10, "\u00a9lyr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v10, "\u00a9nam"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v10, "rtng"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v10, "tmpo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v10, "trkn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x13

    goto/16 :goto_0

    .line 195
    :pswitch_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->album:Ljava/lang/String;

    goto/16 :goto_1

    .line 198
    :pswitch_1
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->albumArtist:Ljava/lang/String;

    goto/16 :goto_1

    .line 201
    :pswitch_2
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->artist:Ljava/lang/String;

    goto/16 :goto_1

    .line 204
    :pswitch_3
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->comment:Ljava/lang/String;

    goto/16 :goto_1

    .line 208
    :pswitch_4
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 209
    :cond_3
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    goto/16 :goto_1

    .line 214
    :pswitch_5
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBytes()[B

    move-result-object v0

    .line 215
    .local v0, "bytes":[B
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    const/4 v8, 0x1

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 219
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v9, 0x320

    if-gt v8, v9, :cond_4

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v9, 0x320

    if-le v8, v9, :cond_5

    .line 220
    :cond_4
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 221
    .local v7, "size":I
    :goto_2
    const/16 v8, 0x320

    if-le v7, v8, :cond_5

    .line 222
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    div-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 226
    .end local v7    # "size":I
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 227
    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    .line 228
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 229
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42f00000    # 120.0f

    div-float v6, v8, v9

    .line 230
    .local v6, "scale":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_6

    .line 231
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-int v9, v9

    iget-object v10, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    float-to-int v10, v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;

    .line 235
    :goto_3
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 236
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 239
    .end local v0    # "bytes":[B
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "scale":F
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 233
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "scale":F
    :cond_6
    :try_start_1
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 244
    .end local v0    # "bytes":[B
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "scale":F
    :pswitch_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBoolean()Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->compilation:Z

    goto/16 :goto_1

    .line 248
    :pswitch_7
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 249
    :cond_7
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    goto/16 :goto_1

    .line 253
    :pswitch_8
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_2

    .line 256
    const/4 v8, 0x0

    const/4 v9, 0x4

    :try_start_2
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->year:S
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 257
    :catch_1
    move-exception v8

    goto/16 :goto_1

    .line 263
    .end local v1    # "day":Ljava/lang/String;
    :pswitch_9
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 264
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->disc:S

    .line 265
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->discs:S

    goto/16 :goto_1

    .line 268
    :pswitch_a
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 269
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 270
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 271
    .local v4, "index":I
    invoke-static {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v3

    .line 272
    .local v3, "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_1

    .line 276
    .end local v3    # "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    .end local v4    # "index":I
    :cond_9
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_1

    .line 281
    :pswitch_b
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 282
    :cond_a
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_1

    .line 286
    :pswitch_c
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->grouping:Ljava/lang/String;

    goto/16 :goto_1

    .line 289
    :pswitch_d
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->lyrics:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :pswitch_e
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 295
    :pswitch_f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v8

    iput-byte v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    goto/16 :goto_1

    .line 298
    :pswitch_10
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    goto/16 :goto_1

    .line 301
    :pswitch_11
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 302
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->track:S

    .line 303
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tracks:S

    goto/16 :goto_1

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x2d1642 -> :sswitch_1
        0x2eb028 -> :sswitch_6
        0x2eb250 -> :sswitch_7
        0x2eb36f -> :sswitch_8
        0x2f0d9d -> :sswitch_b
        0x307d5a -> :sswitch_c
        0x35937b -> :sswitch_11
        0x366238 -> :sswitch_12
        0x367461 -> :sswitch_13
        0x4dd0fa -> :sswitch_2
        0x4e4c4e -> :sswitch_0
        0x4e5401 -> :sswitch_3
        0x4e5438 -> :sswitch_4
        0x4e5463 -> :sswitch_9
        0x4e5653 -> :sswitch_a
        0x4e6207 -> :sswitch_d
        0x4e639c -> :sswitch_e
        0x4e773c -> :sswitch_f
        0x4e7bd1 -> :sswitch_10
        0x4e9fb0 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 62
    :cond_0
    const/4 v0, 0x4

    const-string/jumbo v1, "ISO8859_1"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    const-string/jumbo v1, "M4V|MP4|mp42|isom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (experimental)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->version:Ljava/lang/String;

    .line 69
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    const-string/jumbo v1, "M4A|M4P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected M4A or M4P)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRating()B
    .locals 1

    .prologue
    .line 315
    iget-byte v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    return v0
.end method

.method public getSpeed()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTempo()S
    .locals 1

    .prologue
    .line 311
    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    return v0
.end method

.method public getVolume()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    return-object v0
.end method

.method ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 6
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 174
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 177
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 178
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": contains no value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    .line 185
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_3
    return-void
.end method

.method mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 12
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, 0x3e8

    .line 126
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    .line 130
    .local v1, "version":B
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 131
    if-ne v1, v7, :cond_2

    const/16 v4, 0x10

    :goto_0
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 132
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    .line 133
    .local v0, "sampleRate":I
    if-ne v1, v7, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v2

    .line 134
    .local v2, "samples":J
    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 135
    mul-long v4, v10, v2

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    .line 139
    :cond_1
    :goto_2
    return-void

    .line 131
    .end local v0    # "sampleRate":I
    .end local v2    # "samples":J
    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    .line 133
    .restart local v0    # "sampleRate":I
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v4

    int-to-long v2, v4

    goto :goto_1

    .line 136
    .restart local v2    # "samples":J
    :cond_4
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    mul-long v6, v10, v2

    int-to-long v8, v0

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 137
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mdhd: duration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long v8, v10, v2

    int-to-long v10, v0

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 122
    :cond_0
    const-string/jumbo v0, "mdhd"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 123
    return-void
.end method

.method meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 4
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 158
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 159
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 161
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    const-string/jumbo v1, "ilst"

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 166
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_2
    return-void
.end method

.method moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 4
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 77
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    .line 77
    :sswitch_0
    const-string/jumbo v3, "mvhd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "trak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "udta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 82
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    .line 91
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_2
    return-void

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x335465 -> :sswitch_0
        0x367328 -> :sswitch_1
        0x36b53c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 12
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, 0x3e8

    .line 94
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    .line 98
    .local v1, "version":B
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 99
    if-ne v1, v7, :cond_2

    const/16 v4, 0x10

    :goto_0
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 100
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    .line 101
    .local v0, "scale":I
    if-ne v1, v7, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v2

    .line 102
    .local v2, "units":J
    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 103
    mul-long v4, v10, v2

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    .line 107
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readIntegerFixedPoint()Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    .line 108
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShortFixedPoint()Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    .line 109
    return-void

    .line 99
    .end local v0    # "scale":I
    .end local v2    # "units":J
    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    .line 101
    .restart local v0    # "scale":I
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v4

    int-to-long v2, v4

    goto :goto_1

    .line 104
    .restart local v2    # "units":J
    :cond_4
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    mul-long v6, v10, v2

    int-to-long v8, v0

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 105
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mvhd: duration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long v8, v10, v2

    int-to-long v10, v0

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string/jumbo v0, "mdia"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 116
    return-void
.end method

.method udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 4
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 147
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    const-string/jumbo v1, "meta"

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 152
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_1
    return-void
.end method
