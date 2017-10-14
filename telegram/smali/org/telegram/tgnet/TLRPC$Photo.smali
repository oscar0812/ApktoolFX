.class public abstract Lorg/telegram/tgnet/TLRPC$Photo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Photo"
.end annotation


# instance fields
.field public access_hash:J

.field public caption:Ljava/lang/String;

.field public date:I

.field public flags:I

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public has_stickers:Z

.field public id:J

.field public sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16215
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 16222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 16227
    const/4 v0, 0x0

    .line 16228
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Photo;
    sparse-switch p1, :sswitch_data_0

    .line 16245
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 16246
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Photo"

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

    .line 16230
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo_old;-><init>()V

    .line 16231
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_0

    .line 16233
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 16234
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_0

    .line 16236
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;-><init>()V

    .line 16237
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_0

    .line 16239
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo_layer55;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo_layer55;-><init>()V

    .line 16240
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_0

    .line 16242
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_0

    .line 16248
    :cond_0
    if-eqz v0, :cond_1

    .line 16249
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 16251
    :cond_1
    return-object v0

    .line 16228
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d7722d7 -> :sswitch_1
        -0x3c7c7f8a -> :sswitch_2
        -0x3212bd02 -> :sswitch_3
        0x22b56751 -> :sswitch_0
        0x2331b22d -> :sswitch_4
    .end sparse-switch
.end method
