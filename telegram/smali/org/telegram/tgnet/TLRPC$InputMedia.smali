.class public abstract Lorg/telegram/tgnet/TLRPC$InputMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$DocumentAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public caption:Ljava/lang/String;

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public last_name:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public period:I

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public title:Ljava/lang/String;

.field public ttl_seconds:I

.field public url:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;

.field public venue_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12585
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 12596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 12605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 12608
    const/4 v0, 0x0

    .line 12609
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    sparse-switch p1, :sswitch_data_0

    .line 12650
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 12651
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputMedia"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12611
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 12612
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12614
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 12615
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12617
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;-><init>()V

    .line 12618
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12620
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 12621
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12623
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .line 12624
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12626
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocumentExternal;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocumentExternal;-><init>()V

    .line 12627
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12629
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    .line 12630
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12632
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 12633
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12635
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 12636
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12638
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    .line 12639
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12641
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 12642
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12644
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhotoExternal;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhotoExternal;-><init>()V

    .line 12645
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12647
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 12653
    :cond_0
    if-eqz v0, :cond_1

    .line 12654
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 12656
    :cond_1
    return-object v0

    .line 12609
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e05c8c6 -> :sswitch_c
        -0x699b0a81 -> :sswitch_6
        -0x591ba679 -> :sswitch_0
        -0x4908bccb -> :sswitch_5
        -0x3ec2e3ef -> :sswitch_8
        -0x2cc0bc0d -> :sswitch_2
        -0x1c69de03 -> :sswitch_a
        -0x63bbebc -> :sswitch_4
        0x922aec1 -> :sswitch_b
        0x2f37e231 -> :sswitch_7
        0x4843b0fd -> :sswitch_3
        0x5acb668e -> :sswitch_1
        0x7b1a118f -> :sswitch_9
    .end sparse-switch
.end method
