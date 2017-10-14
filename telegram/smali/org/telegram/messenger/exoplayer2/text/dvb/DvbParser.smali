.class final Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;,
        Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 74
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    .line 72
    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    .line 74
    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    .line 76
    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "subtitlePageId"    # I
    .param p2, "ancillaryPageId"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x2cf

    const/16 v2, 0x23f

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 106
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 107
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move v4, v1

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 108
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    .line 109
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v4

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 110
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 111
    return-void
.end method

.method private static buildClutMapTable(IILorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "bitsPerEntry"    # I
    .param p2, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 799
    new-array v0, p0, [B

    .line 800
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 801
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 803
    :cond_0
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 498
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 499
    .local v0, "entries":[I
    aput v2, v0, v2

    .line 500
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 501
    const/4 v1, 0x2

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 502
    const/4 v1, 0x3

    const v2, -0x808081

    aput v2, v0, v1

    .line 503
    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 8

    .prologue
    const/16 v5, 0x7f

    const/16 v3, 0xff

    const/4 v4, 0x0

    .line 507
    const/16 v2, 0x10

    new-array v0, v2, [I

    .line 508
    .local v0, "entries":[I
    aput v4, v0, v4

    .line 509
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 510
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 511
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    move v7, v3

    :goto_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move v6, v3

    :goto_2
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    :goto_3
    invoke-static {v3, v7, v6, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 509
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v7, v4

    .line 511
    goto :goto_1

    :cond_1
    move v6, v4

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    .line 517
    :cond_3
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    move v7, v5

    :goto_5
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    move v6, v5

    :goto_6
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_6

    move v2, v5

    :goto_7
    invoke-static {v3, v7, v6, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_4

    :cond_4
    move v7, v4

    goto :goto_5

    :cond_5
    move v6, v4

    goto :goto_6

    :cond_6
    move v2, v4

    goto :goto_7

    .line 524
    :cond_7
    return-object v0
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 12

    .prologue
    const/16 v3, 0xff

    const/16 v5, 0xaa

    const/16 v8, 0x2b

    const/16 v6, 0x55

    const/4 v4, 0x0

    .line 528
    const/16 v2, 0x100

    new-array v0, v2, [I

    .line 529
    .local v0, "entries":[I
    aput v4, v0, v4

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 531
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 532
    const/16 v10, 0x3f

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    move v9, v3

    :goto_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move v7, v3

    :goto_2
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    :goto_3
    invoke-static {v10, v9, v7, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 530
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v9, v4

    .line 532
    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    .line 538
    :cond_3
    and-int/lit16 v2, v1, 0x88

    sparse-switch v2, :sswitch_data_0

    goto :goto_4

    .line 540
    :sswitch_0
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    move v7, v6

    :goto_5
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_5

    move v2, v5

    :goto_6
    add-int v9, v7, v2

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_6

    move v7, v6

    :goto_7
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_7

    move v2, v5

    :goto_8
    add-int v10, v7, v2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_8

    move v7, v6

    :goto_9
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_9

    move v2, v5

    :goto_a
    add-int/2addr v2, v7

    invoke-static {v3, v9, v10, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_4

    :cond_4
    move v7, v4

    goto :goto_5

    :cond_5
    move v2, v4

    goto :goto_6

    :cond_6
    move v7, v4

    goto :goto_7

    :cond_7
    move v2, v4

    goto :goto_8

    :cond_8
    move v7, v4

    goto :goto_9

    :cond_9
    move v2, v4

    goto :goto_a

    .line 547
    :sswitch_1
    const/16 v9, 0x7f

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    move v7, v6

    :goto_b
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_b

    move v2, v5

    :goto_c
    add-int v10, v7, v2

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_c

    move v7, v6

    :goto_d
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_d

    move v2, v5

    :goto_e
    add-int v11, v7, v2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_e

    move v7, v6

    :goto_f
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_f

    move v2, v5

    :goto_10
    add-int/2addr v2, v7

    invoke-static {v9, v10, v11, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_4

    :cond_a
    move v7, v4

    goto :goto_b

    :cond_b
    move v2, v4

    goto :goto_c

    :cond_c
    move v7, v4

    goto :goto_d

    :cond_d
    move v2, v4

    goto :goto_e

    :cond_e
    move v7, v4

    goto :goto_f

    :cond_f
    move v2, v4

    goto :goto_10

    .line 554
    :sswitch_2
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_10

    move v2, v8

    :goto_11
    add-int/lit8 v7, v2, 0x7f

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_11

    move v2, v6

    :goto_12
    add-int/2addr v7, v2

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_12

    move v2, v8

    :goto_13
    add-int/lit8 v9, v2, 0x7f

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_13

    move v2, v6

    :goto_14
    add-int/2addr v9, v2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_14

    move v2, v8

    :goto_15
    add-int/lit8 v10, v2, 0x7f

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_15

    move v2, v6

    :goto_16
    add-int/2addr v2, v10

    invoke-static {v3, v7, v9, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    goto/16 :goto_4

    :cond_10
    move v2, v4

    goto :goto_11

    :cond_11
    move v2, v4

    goto :goto_12

    :cond_12
    move v2, v4

    goto :goto_13

    :cond_13
    move v2, v4

    goto :goto_14

    :cond_14
    move v2, v4

    goto :goto_15

    :cond_15
    move v2, v4

    goto :goto_16

    .line 561
    :sswitch_3
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_16

    move v7, v8

    :goto_17
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_17

    move v2, v6

    :goto_18
    add-int v9, v7, v2

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_18

    move v7, v8

    :goto_19
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_19

    move v2, v6

    :goto_1a
    add-int v10, v7, v2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1a

    move v7, v8

    :goto_1b
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1b

    move v2, v6

    :goto_1c
    add-int/2addr v2, v7

    invoke-static {v3, v9, v10, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v0, v1

    goto/16 :goto_4

    :cond_16
    move v7, v4

    goto :goto_17

    :cond_17
    move v2, v4

    goto :goto_18

    :cond_18
    move v7, v4

    goto :goto_19

    :cond_19
    move v2, v4

    goto :goto_1a

    :cond_1a
    move v7, v4

    goto :goto_1b

    :cond_1b
    move v2, v4

    goto :goto_1c

    .line 570
    :cond_1c
    return-object v0

    .line 538
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
        0x88 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getColor(IIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 574
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method private static paint2BitPixelCodeString(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 10
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 665
    const/4 v7, 0x0

    .line 667
    .local v7, "endOfPixelCodeString":Z
    :cond_0
    const/4 v9, 0x0

    .line 668
    .local v9, "runLength":I
    const/4 v6, 0x0

    .line 669
    .local v6, "clutIndex":I
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 670
    .local v8, "peek":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_4

    .line 671
    const/4 v9, 0x1

    .line 672
    move v6, v8

    .line 695
    :cond_1
    :goto_0
    if-eqz v9, :cond_3

    if-eqz p5, :cond_3

    .line 696
    if-eqz p2, :cond_2

    aget-byte v6, p2, v6

    .end local v6    # "clutIndex":I
    :cond_2
    aget v0, p1, v6

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v9

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 700
    :cond_3
    add-int/2addr p3, v9

    .line 701
    if-eqz v7, :cond_0

    .line 703
    return p3

    .line 673
    .restart local v6    # "clutIndex":I
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 674
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x3

    .line 675
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    goto :goto_0

    .line 676
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 679
    :pswitch_0
    const/4 v7, 0x1

    .line 680
    goto :goto_0

    .line 682
    :pswitch_1
    const/4 v9, 0x2

    .line 683
    goto :goto_0

    .line 685
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v9, v0, 0xc

    .line 686
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 687
    goto :goto_0

    .line 689
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x1d

    .line 690
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static paint4BitPixelCodeString(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 10
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 711
    const/4 v7, 0x0

    .line 713
    .local v7, "endOfPixelCodeString":Z
    :cond_0
    const/4 v9, 0x0

    .line 714
    .local v9, "runLength":I
    const/4 v6, 0x0

    .line 715
    .local v6, "clutIndex":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 716
    .local v8, "peek":I
    if-eqz v8, :cond_3

    .line 717
    const/4 v9, 0x1

    .line 718
    move v6, v8

    .line 749
    :goto_0
    if-eqz v9, :cond_2

    if-eqz p5, :cond_2

    .line 750
    if-eqz p2, :cond_1

    aget-byte v6, p2, v6

    .end local v6    # "clutIndex":I
    :cond_1
    aget v0, p1, v6

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v9

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 754
    :cond_2
    add-int/2addr p3, v9

    .line 755
    if-eqz v7, :cond_0

    .line 757
    return p3

    .line 719
    .restart local v6    # "clutIndex":I
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_5

    .line 720
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 721
    if-eqz v8, :cond_4

    .line 722
    add-int/lit8 v9, v8, 0x2

    .line 723
    const/4 v6, 0x0

    goto :goto_0

    .line 725
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 727
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_6

    .line 728
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x4

    .line 729
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    goto :goto_0

    .line 731
    :cond_6
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 733
    :pswitch_0
    const/4 v9, 0x1

    .line 734
    goto :goto_0

    .line 736
    :pswitch_1
    const/4 v9, 0x2

    .line 737
    goto :goto_0

    .line 739
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x9

    .line 740
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 741
    goto :goto_0

    .line 743
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x19

    .line 744
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static paint8BitPixelCodeString(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 10
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 765
    const/4 v7, 0x0

    .line 767
    .local v7, "endOfPixelCodeString":Z
    :cond_0
    const/4 v9, 0x0

    .line 768
    .local v9, "runLength":I
    const/4 v6, 0x0

    .line 769
    .local v6, "clutIndex":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 770
    .local v8, "peek":I
    if-eqz v8, :cond_3

    .line 771
    const/4 v9, 0x1

    .line 772
    move v6, v8

    .line 788
    :goto_0
    if-eqz v9, :cond_2

    if-eqz p5, :cond_2

    .line 789
    if-eqz p2, :cond_1

    aget-byte v6, p2, v6

    .end local v6    # "clutIndex":I
    :cond_1
    aget v0, p1, v6

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 790
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v9

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 792
    :cond_2
    add-int/2addr p3, v9

    .line 793
    if-eqz v7, :cond_0

    .line 795
    return p3

    .line 774
    .restart local v6    # "clutIndex":I
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_5

    .line 775
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 776
    if-eqz v8, :cond_4

    .line 777
    move v9, v8

    .line 778
    const/4 v6, 0x0

    goto :goto_0

    .line 780
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 783
    :cond_5
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 784
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    goto :goto_0
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 20
    .param p0, "pixelData"    # [B
    .param p1, "clutEntries"    # [I
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 603
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 604
    .local v1, "data":Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    move/from16 v4, p3

    .line 605
    .local v4, "column":I
    move/from16 v5, p4

    .line 606
    .local v5, "line":I
    const/16 v16, 0x0

    .line 607
    .local v16, "clutMapTable2To4":[B
    const/16 v17, 0x0

    .line 608
    .local v17, "clutMapTable2To8":[B
    const/16 v18, 0x0

    .line 610
    .local v18, "clutMapTable4To8":[B
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    if-eqz v2, :cond_6

    .line 611
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 612
    .local v19, "dataType":I
    sparse-switch v19, :sswitch_data_0

    goto :goto_0

    .line 615
    :sswitch_0
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 616
    if-nez v17, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    .local v3, "clutMapTable2ToX":[B
    :goto_1
    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 622
    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->paint2BitPixelCodeString(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 624
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteAlign()V

    goto :goto_0

    .end local v3    # "clutMapTable2ToX":[B
    :cond_0
    move-object/from16 v3, v17

    .line 616
    goto :goto_1

    .line 617
    :cond_1
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 618
    if-nez v16, :cond_2

    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    .restart local v3    # "clutMapTable2ToX":[B
    :goto_2
    goto :goto_1

    .end local v3    # "clutMapTable2ToX":[B
    :cond_2
    move-object/from16 v3, v16

    goto :goto_2

    .line 620
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "clutMapTable2ToX":[B
    goto :goto_1

    .line 628
    .end local v3    # "clutMapTable2ToX":[B
    :sswitch_1
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 629
    if-nez v18, :cond_4

    sget-object v8, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    .local v8, "clutMapTable4ToX":[B
    :goto_3
    move-object v6, v1

    move-object/from16 v7, p1

    move v9, v4

    move v10, v5

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 633
    invoke-static/range {v6 .. v12}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->paint4BitPixelCodeString(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 635
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteAlign()V

    goto :goto_0

    .end local v8    # "clutMapTable4ToX":[B
    :cond_4
    move-object/from16 v8, v18

    .line 629
    goto :goto_3

    .line 631
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "clutMapTable4ToX":[B
    goto :goto_3

    .line 638
    .end local v8    # "clutMapTable4ToX":[B
    :sswitch_2
    const/4 v11, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move v12, v4

    move v13, v5

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-static/range {v9 .. v15}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->paint8BitPixelCodeString(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 639
    goto :goto_0

    .line 641
    :sswitch_3
    const/4 v2, 0x4

    const/4 v6, 0x4

    invoke-static {v2, v6, v1}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v16

    .line 642
    goto :goto_0

    .line 644
    :sswitch_4
    const/4 v2, 0x4

    const/16 v6, 0x8

    invoke-static {v2, v6, v1}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v17

    .line 645
    goto :goto_0

    .line 647
    :sswitch_5
    const/16 v2, 0x10

    const/16 v6, 0x8

    invoke-static {v2, v6, v1}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v17

    .line 648
    goto :goto_0

    .line 650
    :sswitch_6
    move/from16 v4, p3

    .line 651
    add-int/lit8 v5, v5, 0x2

    .line 652
    goto/16 :goto_0

    .line 658
    .end local v19    # "dataType":I
    :cond_6
    return-void

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0xf0 -> :sswitch_6
    .end sparse-switch
.end method

.method private static paintPixelDataSubBlocks(Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7
    .param p0, "objectData"    # Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    .param p1, "clutDefinition"    # Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 585
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 586
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    .line 592
    .local v1, "clutEntries":[I
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 594
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v4, p4, 0x1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 596
    return-void

    .line 587
    .end local v1    # "clutEntries":[I
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 588
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    .restart local v1    # "clutEntries":[I
    goto :goto_0

    .line 590
    .end local v1    # "clutEntries":[I
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .restart local v1    # "clutEntries":[I
    goto :goto_0
.end method

.method private static parseClutDefinition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .locals 26
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .prologue
    .line 403
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 404
    .local v11, "clutId":I
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 405
    add-int/lit8 v17, p1, -0x2

    .line 407
    .local v17, "remainingLength":I
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v8

    .line 408
    .local v8, "clutEntries2Bit":[I
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v9

    .line 409
    .local v9, "clutEntries4Bit":[I
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v10

    .line 411
    .local v10, "clutEntries8Bit":[I
    :goto_0
    if-lez v17, :cond_4

    .line 412
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 413
    .local v14, "entryId":I
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 414
    .local v13, "entryFlags":I
    add-int/lit8 v17, v17, -0x2

    .line 417
    and-int/lit16 v0, v13, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 418
    move-object v7, v8

    .line 429
    .local v7, "clutEntries":[I
    :goto_1
    and-int/lit8 v20, v13, 0x1

    if-eqz v20, :cond_3

    .line 430
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 431
    .local v19, "y":I
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 432
    .local v12, "cr":I
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 433
    .local v6, "cb":I
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 434
    .local v18, "t":I
    add-int/lit8 v17, v17, -0x4

    .line 443
    :goto_2
    if-nez v19, :cond_0

    .line 444
    const/4 v12, 0x0

    .line 445
    const/4 v6, 0x0

    .line 446
    const/16 v18, 0xff

    .line 449
    :cond_0
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v4, v0

    .line 450
    .local v4, "a":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v24, v12, -0x80

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v16, v0

    .line 451
    .local v16, "r":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v24, v6, -0x80

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    const-wide v22, 0x3fe6da3c21187e7cL    # 0.71414

    add-int/lit8 v24, v12, -0x80

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    .line 452
    .local v15, "g":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v24, v6, -0x80

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 453
    .local v5, "b":I
    const/16 v20, 0x0

    const/16 v21, 0xff

    move/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(III)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0xff

    .line 454
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v15, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(III)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(III)I

    move-result v22

    .line 453
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v20

    aput v20, v7, v14

    goto/16 :goto_0

    .line 419
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v6    # "cb":I
    .end local v7    # "clutEntries":[I
    .end local v12    # "cr":I
    .end local v15    # "g":I
    .end local v16    # "r":I
    .end local v18    # "t":I
    .end local v19    # "y":I
    :cond_1
    and-int/lit8 v20, v13, 0x40

    if-eqz v20, :cond_2

    .line 420
    move-object v7, v9

    .restart local v7    # "clutEntries":[I
    goto/16 :goto_1

    .line 422
    .end local v7    # "clutEntries":[I
    :cond_2
    move-object v7, v10

    .restart local v7    # "clutEntries":[I
    goto/16 :goto_1

    .line 436
    :cond_3
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    shl-int/lit8 v19, v20, 0x2

    .line 437
    .restart local v19    # "y":I
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    shl-int/lit8 v12, v20, 0x4

    .line 438
    .restart local v12    # "cr":I
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    shl-int/lit8 v6, v20, 0x4

    .line 439
    .restart local v6    # "cb":I
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    shl-int/lit8 v18, v20, 0x6

    .line 440
    .restart local v18    # "t":I
    add-int/lit8 v17, v17, -0x2

    goto/16 :goto_2

    .line 457
    .end local v6    # "cb":I
    .end local v7    # "clutEntries":[I
    .end local v12    # "cr":I
    .end local v13    # "entryFlags":I
    .end local v14    # "entryId":I
    .end local v18    # "t":I
    .end local v19    # "y":I
    :cond_4
    new-instance v20, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v8, v9, v10}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v20
.end method

.method private static parseDisplayDefinition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .locals 9
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .prologue
    const/16 v8, 0x10

    .line 303
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 304
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 305
    .local v7, "displayWindowFlag":Z
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 306
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 307
    .local v1, "width":I
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 313
    .local v2, "height":I
    if-eqz v7, :cond_0

    .line 314
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 315
    .local v3, "horizontalPositionMinimum":I
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 316
    .local v4, "horizontalPositionMaximum":I
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 317
    .local v5, "verticalPositionMinimum":I
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 325
    .local v6, "verticalPositionMaximum":I
    :goto_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v0

    .line 319
    .end local v3    # "horizontalPositionMinimum":I
    .end local v4    # "horizontalPositionMaximum":I
    .end local v5    # "verticalPositionMinimum":I
    .end local v6    # "verticalPositionMaximum":I
    :cond_0
    const/4 v3, 0x0

    .line 320
    .restart local v3    # "horizontalPositionMinimum":I
    move v4, v1

    .line 321
    .restart local v4    # "horizontalPositionMaximum":I
    const/4 v5, 0x0

    .line 322
    .restart local v5    # "verticalPositionMinimum":I
    move v6, v2

    .restart local v6    # "verticalPositionMaximum":I
    goto :goto_0
.end method

.method private static parseObjectData(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    .locals 12
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x10

    .line 466
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 467
    .local v5, "objectId":I
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 468
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 469
    .local v4, "objectCodingMethod":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 470
    .local v2, "nonModifyingColorFlag":Z
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 472
    const/4 v6, 0x0

    .line 473
    .local v6, "topFieldData":[B
    const/4 v0, 0x0

    .line 475
    .local v0, "bottomFieldData":[B
    if-ne v4, v11, :cond_1

    .line 476
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 478
    .local v3, "numberOfCodes":I
    mul-int/lit8 v8, v3, 0x10

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 494
    .end local v3    # "numberOfCodes":I
    :cond_0
    :goto_0
    new-instance v8, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;

    invoke-direct {v8, v5, v2, v6, v0}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object v8

    .line 479
    :cond_1
    if-nez v4, :cond_0

    .line 480
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 481
    .local v7, "topFieldDataLength":I
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 482
    .local v1, "bottomFieldDataLength":I
    if-lez v7, :cond_2

    .line 483
    new-array v6, v7, [B

    .line 484
    invoke-virtual {p0, v6, v10, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    .line 486
    :cond_2
    if-lez v1, :cond_3

    .line 487
    new-array v0, v1, [B

    .line 488
    invoke-virtual {p0, v0, v10, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_0

    .line 490
    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method private static parsePageComposition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    .locals 12
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x2

    const/16 v9, 0x8

    .line 333
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 334
    .local v6, "timeoutSecs":I
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 335
    .local v7, "version":I
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 336
    .local v5, "state":I
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 337
    add-int/lit8 v4, p1, -0x2

    .line 339
    .local v4, "remainingLength":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 340
    .local v3, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v4, :cond_0

    .line 341
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 342
    .local v1, "regionId":I
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 343
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 344
    .local v0, "regionHorizontalAddress":I
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 345
    .local v2, "regionVerticalAddress":I
    add-int/lit8 v4, v4, -0x6

    .line 346
    new-instance v8, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v8, v0, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v3, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 349
    .end local v0    # "regionHorizontalAddress":I
    .end local v1    # "regionId":I
    .end local v2    # "regionVerticalAddress":I
    :cond_0
    new-instance v8, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {v8, v6, v7, v5, v3}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object v8
.end method

.method private static parseRegionComposition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .locals 23
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .prologue
    .line 356
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 357
    .local v10, "id":I
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 359
    .local v11, "fillFlag":Z
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 360
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 361
    .local v12, "width":I
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 362
    .local v13, "height":I
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 363
    .local v14, "levelOfCompatibility":I
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 364
    .local v15, "depth":I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 365
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 366
    .local v16, "clutId":I
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 367
    .local v17, "pixelCode8Bit":I
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 368
    .local v18, "pixelCode4Bit":I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 369
    .local v19, "pixelCode2Bit":I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 370
    add-int/lit8 v22, p1, -0xa

    .line 372
    .local v22, "remainingLength":I
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 373
    .local v20, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    :goto_0
    if-lez v22, :cond_2

    .line 374
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 375
    .local v21, "objectId":I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 376
    .local v3, "objectType":I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 377
    .local v4, "objectProvider":I
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 378
    .local v5, "objectHorizontalPosition":I
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 379
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 380
    .local v6, "objectVerticalPosition":I
    add-int/lit8 v22, v22, -0x6

    .line 382
    const/4 v7, 0x0

    .line 383
    .local v7, "foregroundPixelCode":I
    const/4 v8, 0x0

    .line 384
    .local v8, "backgroundPixelCode":I
    const/4 v2, 0x1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x2

    if-ne v3, v2, :cond_1

    .line 385
    :cond_0
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 386
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 387
    add-int/lit8 v22, v22, -0x2

    .line 390
    :cond_1
    new-instance v2, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 395
    .end local v3    # "objectType":I
    .end local v4    # "objectProvider":I
    .end local v5    # "objectHorizontalPosition":I
    .end local v6    # "objectVerticalPosition":I
    .end local v7    # "foregroundPixelCode":I
    .end local v8    # "backgroundPixelCode":I
    .end local v21    # "objectId":I
    :cond_2
    new-instance v9, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;

    invoke-direct/range {v9 .. v20}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v9
.end method

.method private static parseSubtitlingSegment(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;)V
    .locals 11
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p1, "service"    # Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .prologue
    const/16 v10, 0x10

    .line 230
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 231
    .local v8, "segmentType":I
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 232
    .local v6, "pageId":I
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 233
    .local v2, "dataFieldLength":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v9

    add-int v3, v9, v2

    .line 235
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v9, v2, 0x8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v10

    if-le v9, v10, :cond_0

    .line 236
    const-string/jumbo v9, "DvbParser"

    const-string/jumbo v10, "Data field length exceeds limit"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 297
    :goto_0
    return-void

    .line 242
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 296
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_0

    .line 244
    :pswitch_0
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v6, v9, :cond_1

    .line 245
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseDisplayDefinition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v9

    iput-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_1

    .line 249
    :pswitch_1
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v6, v9, :cond_1

    .line 250
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 251
    .local v1, "current":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    invoke-static {p0, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parsePageComposition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    move-result-object v5

    .line 252
    .local v5, "pageComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    iget v9, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v9, :cond_2

    .line 253
    iput-object v5, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 254
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 255
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 256
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    goto :goto_1

    .line 257
    :cond_2
    if-eqz v1, :cond_1

    iget v9, v1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iget v10, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v9, v10, :cond_1

    .line 258
    iput-object v5, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    goto :goto_1

    .line 263
    .end local v1    # "current":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v5    # "pageComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    :pswitch_2
    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 264
    .restart local v5    # "pageComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v6, v9, :cond_1

    if-eqz v5, :cond_1

    .line 265
    invoke-static {p0, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseRegionComposition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-result-object v7

    .line 266
    .local v7, "regionComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;
    iget v9, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v9, :cond_3

    .line 267
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v10, v7, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;)V

    .line 269
    :cond_3
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v10, v7, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v9, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 273
    .end local v5    # "pageComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v7    # "regionComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;
    :pswitch_3
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v6, v9, :cond_4

    .line 274
    invoke-static {p0, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 275
    .local v0, "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 276
    .end local v0    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    :cond_4
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v6, v9, :cond_1

    .line 277
    invoke-static {p0, v2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 278
    .restart local v0    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 282
    .end local v0    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    :pswitch_4
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v6, v9, :cond_5

    .line 283
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 284
    .local v4, "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v10, v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v9, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 285
    .end local v4    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    :cond_5
    iget v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v6, v9, :cond_1

    .line 286
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 287
    .restart local v4    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v10, v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v9, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decode([BI)Ljava/util/List;
    .locals 34
    .param p1, "data"    # [B
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v23, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 130
    .local v23, "dataBitArray":Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_0

    const/16 v5, 0x8

    .line 131
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->parseSubtitlingSegment(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    .line 135
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    if-nez v5, :cond_2

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    .line 219
    :cond_1
    return-object v22

    .line 140
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object/from16 v24, v0

    .line 142
    .local v24, "displayDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 144
    :cond_3
    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 146
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    :cond_4
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v22, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    .line 152
    .local v29, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_1

    .line 153
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;

    .line 154
    .local v28, "pageRegion":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v31

    .line 155
    .local v31, "regionId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 158
    .local v30, "regionComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;
    move-object/from16 v0, v28

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int v17, v5, v6

    .line 160
    .local v17, "baseHorizontalAddress":I
    move-object/from16 v0, v28

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int v18, v5, v6

    .line 162
    .local v18, "baseVerticalAddress":I
    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int v5, v5, v17

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 164
    .local v20, "clipRight":I
    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int v5, v5, v18

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 166
    .local v19, "clipBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v20

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 170
    .local v4, "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    if-nez v4, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    check-cast v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 172
    .restart local v4    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    if-nez v4, :cond_5

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 177
    :cond_5
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    .line 178
    .local v33, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_3
    invoke-virtual/range {v33 .. v33}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_a

    .line 179
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    .line 180
    .local v27, "objectId":I
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;

    .line 181
    .local v32, "regionObject":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;

    .line 182
    .local v3, "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    if-nez v3, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    check-cast v3, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;

    .line 185
    .restart local v3    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    :cond_6
    if-eqz v3, :cond_7

    .line 186
    iget-boolean v5, v3, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v5, :cond_9

    const/4 v8, 0x0

    .line 187
    .local v8, "paint":Landroid/graphics/Paint;
    :goto_4
    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v0, v32

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int v6, v6, v17

    move-object/from16 v0, v32

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v7, v7, v18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-static/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 178
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 140
    .end local v3    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    .end local v4    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .end local v17    # "baseHorizontalAddress":I
    .end local v18    # "baseVerticalAddress":I
    .end local v19    # "clipBottom":I
    .end local v20    # "clipRight":I
    .end local v22    # "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    .end local v24    # "displayDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .end local v25    # "i":I
    .end local v26    # "j":I
    .end local v27    # "objectId":I
    .end local v28    # "pageRegion":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;
    .end local v29    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .end local v30    # "regionComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .end local v31    # "regionId":I
    .end local v32    # "regionObject":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;
    .end local v33    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object/from16 v24, v0

    goto/16 :goto_1

    .line 186
    .restart local v3    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    .restart local v4    # "clutDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .restart local v17    # "baseHorizontalAddress":I
    .restart local v18    # "baseVerticalAddress":I
    .restart local v19    # "clipBottom":I
    .restart local v20    # "clipRight":I
    .restart local v22    # "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    .restart local v24    # "displayDefinition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .restart local v25    # "i":I
    .restart local v26    # "j":I
    .restart local v27    # "objectId":I
    .restart local v28    # "pageRegion":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;
    .restart local v29    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .restart local v30    # "regionComposition":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .restart local v31    # "regionId":I
    .restart local v32    # "regionObject":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;
    .restart local v33    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    goto :goto_4

    .line 193
    .end local v3    # "objectData":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ObjectData;
    .end local v27    # "objectId":I
    .end local v32    # "regionObject":Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;
    :cond_a
    move-object/from16 v0, v30

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v5, :cond_b

    .line 195
    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    .line 196
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v21, v5, v6

    .line 202
    .local v21, "color":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move/from16 v0, v17

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v11, v0

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int v5, v5, v17

    int-to-float v12, v5

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int v5, v5, v18

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    .end local v21    # "color":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    move-object/from16 v0, v30

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v1, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 211
    .local v10, "cueBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Lorg/telegram/messenger/exoplayer2/text/Cue;

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v11, v5, v6

    const/4 v12, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v13, v5, v6

    const/4 v14, 0x0

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v15, v5, v6

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v16, v5, v6

    invoke-direct/range {v9 .. v16}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 197
    .end local v10    # "cueBitmap":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 198
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v21, v5, v6

    .restart local v21    # "color":I
    goto/16 :goto_5

    .line 200
    .end local v21    # "color":I
    :cond_d
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v21, v5, v6

    .restart local v21    # "color":I
    goto/16 :goto_5
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->subtitleService:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$SubtitleService;->reset()V

    .line 118
    return-void
.end method
