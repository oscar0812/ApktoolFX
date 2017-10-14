.class public final Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;
.super Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;,
        Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DS4:I = 0x9c

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedServiceNumber:I

.field private final serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "accessibilityChannel"    # I

    .prologue
    const/16 v3, 0x8

    .line 156
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 157
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 158
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 159
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .end local p1    # "accessibilityChannel":I
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 161
    new-array v1, v3, [Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 163
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;-><init>()V

    aput-object v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 167
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 168
    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->processCurrentPacket()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    goto :goto_0
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v0, "displayCues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 739
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->build()Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 744
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private handleC0Command(I)V
    .locals 3
    .param p1, "command"    # I

    .prologue
    .line 336
    sparse-switch p1, :sswitch_data_0

    .line 356
    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 357
    const-string/jumbo v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 366
    :goto_0
    :sswitch_0
    return-void

    .line 341
    :sswitch_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    goto :goto_0

    .line 344
    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backspace()V

    goto :goto_0

    .line 347
    :sswitch_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 350
    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 359
    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 360
    const-string/jumbo v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 363
    :cond_1
    const-string/jumbo v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid C0 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private handleC1Command(I)V
    .locals 8
    .param p1, "command"    # I

    .prologue
    const/16 v6, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 370
    packed-switch p1, :pswitch_data_0

    .line 480
    :pswitch_0
    const-string/jumbo v3, "Cea708Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid C1 command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 379
    :pswitch_2
    add-int/lit8 v2, p1, -0x80

    .line 380
    .local v2, "window":I
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v3, v2, :cond_0

    .line 381
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 382
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v3, v3, v2

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    goto :goto_0

    .line 386
    .end local v2    # "window":I
    :pswitch_3
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-gt v1, v7, :cond_0

    .line 387
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v4, v1, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->clear()V

    .line 386
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "i":I
    :pswitch_4
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    if-gt v1, v7, :cond_0

    .line 394
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v5, v1, 0x8

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 393
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 400
    .end local v1    # "i":I
    :pswitch_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_3
    if-gt v1, v7, :cond_0

    .line 401
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v4, v1, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 400
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 407
    .end local v1    # "i":I
    :pswitch_6
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_4
    if-gt v1, v7, :cond_0

    .line 408
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v0, v3, v6

    .line 410
    .local v0, "cueBuilder":Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 407
    .end local v0    # "cueBuilder":Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .restart local v0    # "cueBuilder":Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
    :cond_5
    move v3, v5

    .line 410
    goto :goto_5

    .line 415
    .end local v0    # "cueBuilder":Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
    .end local v1    # "i":I
    :pswitch_7
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_6
    if-gt v1, v7, :cond_0

    .line 416
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v4, v1, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 415
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 423
    .end local v1    # "i":I
    :pswitch_8
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_0

    .line 429
    :pswitch_9
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto/16 :goto_0

    .line 432
    :pswitch_a
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v3

    if-nez v3, :cond_7

    .line 434
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_0

    .line 436
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    goto/16 :goto_0

    .line 440
    :pswitch_b
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v3

    if-nez v3, :cond_8

    .line 442
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_0

    .line 444
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleSetPenColor()V

    goto/16 :goto_0

    .line 448
    :pswitch_c
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v3

    if-nez v3, :cond_9

    .line 450
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_0

    .line 452
    :cond_9
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleSetPenLocation()V

    goto/16 :goto_0

    .line 456
    :pswitch_d
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v3

    if-nez v3, :cond_a

    .line 458
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_0

    .line 460
    :cond_a
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    goto/16 :goto_0

    .line 471
    :pswitch_e
    add-int/lit16 v2, p1, -0x98

    .line 472
    .restart local v2    # "window":I
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 474
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v3, v2, :cond_0

    .line 475
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 476
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v3, v3, v2

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    goto/16 :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 2
    .param p1, "command"    # I

    .prologue
    .line 486
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 489
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 490
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 491
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 492
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0
.end method

.method private handleC3Command(I)V
    .locals 3
    .param p1, "command"    # I

    .prologue
    .line 499
    const/16 v1, 0x87

    if-gt p1, v1, :cond_1

    .line 500
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const/16 v1, 0x8f

    if-gt p1, v1, :cond_2

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 503
    :cond_2
    const/16 v1, 0x9f

    if-gt p1, v1, :cond_0

    .line 507
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 508
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 509
    .local v0, "length":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0
.end method

.method private handleDefineWindow(I)V
    .locals 15
    .param p1, "window"    # I

    .prologue
    .line 707
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v0, v13, p1

    .line 711
    .local v0, "cueBuilder":Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 712
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 713
    .local v1, "visible":Z
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 714
    .local v2, "rowLock":Z
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 715
    .local v3, "columnLock":Z
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 717
    .local v4, "priority":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 718
    .local v5, "relativePositioning":Z
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 720
    .local v6, "verticalAnchor":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 722
    .local v7, "horizontalAnchor":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 723
    .local v10, "anchorId":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 725
    .local v8, "rowCount":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 726
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 728
    .local v9, "columnCount":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 729
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 730
    .local v11, "windowStyle":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 732
    .local v12, "penStyle":I
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defineWindow(ZZZIZIIIIIII)V

    .line 734
    return-void
.end method

.method private handleG0Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .prologue
    .line 514
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x266b

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0
.end method

.method private handleG1Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 523
    return-void
.end method

.method private handleG2Character(I)V
    .locals 3
    .param p1, "characterCode"    # I

    .prologue
    .line 526
    sparse-switch p1, :sswitch_data_0

    .line 606
    const-string/jumbo v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid G2 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 528
    :sswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 531
    :sswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 534
    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 537
    :sswitch_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 540
    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 543
    :sswitch_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2588

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 546
    :sswitch_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2018

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 549
    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2019

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 552
    :sswitch_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x201c

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 555
    :sswitch_9
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x201d

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 558
    :sswitch_a
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 561
    :sswitch_b
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 564
    :sswitch_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x161

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 567
    :sswitch_d
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 570
    :sswitch_e
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2120

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 573
    :sswitch_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 576
    :sswitch_10
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215b

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 579
    :sswitch_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215c

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 582
    :sswitch_12
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215d

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 585
    :sswitch_13
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215e

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 588
    :sswitch_14
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2502

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 591
    :sswitch_15
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 594
    :sswitch_16
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2514

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 597
    :sswitch_17
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 600
    :sswitch_18
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2518

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 603
    :sswitch_19
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x250c

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 526
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2a -> :sswitch_3
        0x2c -> :sswitch_4
        0x30 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_a
        0x39 -> :sswitch_b
        0x3a -> :sswitch_c
        0x3c -> :sswitch_d
        0x3d -> :sswitch_e
        0x3f -> :sswitch_f
        0x76 -> :sswitch_10
        0x77 -> :sswitch_11
        0x78 -> :sswitch_12
        0x79 -> :sswitch_13
        0x7a -> :sswitch_14
        0x7b -> :sswitch_15
        0x7c -> :sswitch_16
        0x7d -> :sswitch_17
        0x7e -> :sswitch_18
        0x7f -> :sswitch_19
    .end sparse-switch
.end method

.method private handleG3Character(I)V
    .locals 3
    .param p1, "characterCode"    # I

    .prologue
    .line 613
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x33c4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string/jumbo v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid G3 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0
.end method

.method private handleSetPenAttributes()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 625
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 626
    .local v1, "textTag":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 627
    .local v2, "offset":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 629
    .local v3, "penSize":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 630
    .local v4, "italicsToggle":Z
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 631
    .local v5, "underlineToggle":Z
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 632
    .local v6, "edgeType":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 634
    .local v7, "fontStyle":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 636
    return-void
.end method

.method private handleSetPenColor()V
    .locals 17

    .prologue
    .line 641
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 642
    .local v13, "foregroundO":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 643
    .local v14, "foregroundR":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 644
    .local v12, "foregroundG":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 645
    .local v10, "foregroundB":I
    invoke-static {v14, v12, v10, v13}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v11

    .line 648
    .local v11, "foregroundColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 649
    .local v4, "backgroundO":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 650
    .local v5, "backgroundR":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 651
    .local v3, "backgroundG":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 652
    .local v1, "backgroundB":I
    invoke-static {v5, v3, v1, v4}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 655
    .local v2, "backgroundColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 657
    .local v9, "edgeR":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 658
    .local v8, "edgeG":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 659
    .local v6, "edgeB":I
    invoke-static {v9, v8, v6}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    .line 661
    .local v7, "edgeColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v15, v11, v2, v7}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    .line 662
    return-void
.end method

.method private handleSetPenLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 667
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 668
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 670
    .local v1, "row":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 671
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 673
    .local v0, "column":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenLocation(II)V

    .line 674
    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 17

    .prologue
    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 680
    .local v14, "fillO":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 681
    .local v15, "fillR":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 682
    .local v13, "fillG":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 683
    .local v12, "fillB":I
    invoke-static {v15, v13, v12, v14}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 685
    .local v2, "fillColor":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 686
    .local v5, "borderType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 687
    .local v11, "borderR":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 688
    .local v10, "borderG":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 689
    .local v9, "borderB":I
    invoke-static {v11, v10, v9}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v3

    .line 691
    .local v3, "borderColor":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    or-int/lit8 v5, v5, 0x4

    .line 694
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 695
    .local v4, "wordWrapToggle":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 696
    .local v6, "printDirection":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 697
    .local v7, "scrollDirection":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 700
    .local v8, "justification":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    .line 704
    return-void
.end method

.method private processCurrentPacket()V
    .locals 12

    .prologue
    const/16 v11, 0xff

    const/16 v10, 0x9f

    const/16 v9, 0x7f

    const/16 v8, 0x1f

    const/16 v7, 0x8

    .line 259
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_1

    .line 260
    const-string/jumbo v4, "Cea708Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", but current index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (sequence number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "); ignoring packet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 268
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 269
    .local v3, "serviceNumber":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 270
    .local v0, "blockSize":I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 272
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 273
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 277
    :cond_2
    if-nez v0, :cond_3

    .line 278
    if-eqz v3, :cond_0

    .line 279
    const-string/jumbo v4, "Cea708Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceNumber is non-zero ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") when blockSize is 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_3
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-ne v3, v4, :cond_0

    .line 291
    const/4 v2, 0x0

    .line 293
    .local v2, "cuesNeedUpdate":Z
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    if-lez v4, :cond_d

    .line 294
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 295
    .local v1, "command":I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_8

    .line 296
    if-gt v1, v8, :cond_4

    .line 297
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_1

    .line 299
    :cond_4
    if-gt v1, v9, :cond_5

    .line 300
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 301
    const/4 v2, 0x1

    goto :goto_1

    .line 302
    :cond_5
    if-gt v1, v10, :cond_6

    .line 303
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 304
    const/4 v2, 0x1

    goto :goto_1

    .line 305
    :cond_6
    if-gt v1, v11, :cond_7

    .line 306
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 307
    const/4 v2, 0x1

    goto :goto_1

    .line 309
    :cond_7
    const-string/jumbo v4, "Cea708Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid base command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    :cond_8
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 314
    if-gt v1, v8, :cond_9

    .line 315
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_1

    .line 316
    :cond_9
    if-gt v1, v9, :cond_a

    .line 317
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 318
    const/4 v2, 0x1

    goto :goto_1

    .line 319
    :cond_a
    if-gt v1, v10, :cond_b

    .line 320
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_1

    .line 321
    :cond_b
    if-gt v1, v11, :cond_c

    .line 322
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 323
    const/4 v2, 0x1

    goto :goto_1

    .line 325
    :cond_c
    const-string/jumbo v4, "Cea708Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid extended command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 330
    .end local v1    # "command":I
    :cond_d
    if-eqz v2, :cond_0

    .line 331
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private resetCueBuilders()V
    .locals 2

    .prologue
    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 749
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 194
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 11
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .prologue
    .line 199
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 200
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_7

    .line 201
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v3, v7, 0x7

    .line 203
    .local v3, "ccTypeAndValid":I
    and-int/lit8 v2, v3, 0x3

    .line 204
    .local v2, "ccType":I
    and-int/lit8 v7, v3, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    const/4 v4, 0x1

    .line 205
    .local v4, "ccValid":Z
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    int-to-byte v0, v7

    .line 206
    .local v0, "ccData1":B
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    int-to-byte v1, v7

    .line 209
    .local v1, "ccData2":B
    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    .line 213
    :cond_1
    if-eqz v4, :cond_0

    .line 218
    const/4 v7, 0x3

    if-ne v2, v7, :cond_4

    .line 219
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 221
    and-int/lit16 v7, v0, 0xc0

    shr-int/lit8 v6, v7, 0x6

    .line 222
    .local v6, "sequenceNumber":I
    and-int/lit8 v5, v0, 0x3f

    .line 223
    .local v5, "packetSize":I
    if-nez v5, :cond_2

    .line 224
    const/16 v5, 0x40

    .line 227
    :cond_2
    new-instance v7, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v7, v6, v5}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 228
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v1, v7, v9

    .line 242
    .end local v5    # "packetSize":I
    .end local v6    # "sequenceNumber":I
    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_0

    .line 243
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto :goto_0

    .line 204
    .end local v0    # "ccData1":B
    .end local v1    # "ccData2":B
    .end local v4    # "ccValid":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 231
    .restart local v0    # "ccData1":B
    .restart local v1    # "ccData2":B
    .restart local v4    # "ccValid":Z
    :cond_4
    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 233
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v7, :cond_6

    .line 234
    const-string/jumbo v7, "Cea708Decoder"

    const-string/jumbo v8, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 238
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v0, v7, v9

    .line 239
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v1, v7, v9

    goto :goto_2

    .line 246
    .end local v0    # "ccData1":B
    .end local v1    # "ccData2":B
    .end local v2    # "ccType":I
    .end local v3    # "ccTypeAndValid":I
    .end local v4    # "ccValid":Z
    :cond_7
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 178
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 179
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 181
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 182
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 183
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 184
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string/jumbo v0, "Cea708Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic queueInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
