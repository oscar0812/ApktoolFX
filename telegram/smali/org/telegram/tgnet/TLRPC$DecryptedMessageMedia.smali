.class public abstract Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DecryptedMessageMedia"
.end annotation


# instance fields
.field public _long:D

.field public access_hash:J

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

.field public date:I

.field public dc_id:I

.field public duration:I

.field public file_name:Ljava/lang/String;

.field public first_name:Ljava/lang/String;

.field public h:I

.field public id:J

.field public iv:[B

.field public key:[B

.field public last_name:Ljava/lang/String;

.field public lat:D

.field public mime_type:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public size:I

.field public thumb_h:I

.field public thumb_w:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user_id:I

.field public venue_id:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18770
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18800
    const/4 v0, 0x0

    .line 18801
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    sparse-switch p1, :sswitch_data_0

    .line 18848
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18849
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in DecryptedMessageMedia"

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

    .line 18803
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    .line 18804
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18806
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    .line 18807
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18809
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    .line 18810
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18812
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    .line 18813
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18815
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    .line 18816
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18818
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    .line 18819
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18821
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    .line 18822
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18824
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    .line 18825
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18827
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    .line 18828
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18830
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    .line 18831
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18833
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    .line 18834
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18836
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    .line 18837
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18839
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    .line 18840
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18842
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    .line 18843
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18845
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_0

    .line 18851
    :cond_0
    if-eqz v0, :cond_1

    .line 18852
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18854
    :cond_1
    return-object v0

    .line 18801
    nop

    :sswitch_data_0
    .sparse-switch
        -0x75f20a91 -> :sswitch_a
        -0x68f373f2 -> :sswitch_7
        -0x4f6abcb5 -> :sswitch_8
        -0x1afaee28 -> :sswitch_5
        -0xe057288 -> :sswitch_6
        -0x56a4f23 -> :sswitch_b
        0x89f5c4a -> :sswitch_3
        0x32798a8c -> :sswitch_e
        0x35480a59 -> :sswitch_1
        0x4cee6ef3 -> :sswitch_9
        0x524a415d -> :sswitch_c
        0x57e0a9cb -> :sswitch_0
        0x588a0a97 -> :sswitch_2
        0x6080758f -> :sswitch_d
        0x7afe8ae2 -> :sswitch_4
    .end sparse-switch
.end method
