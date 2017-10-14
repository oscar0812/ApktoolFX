.class public abstract Lorg/telegram/tgnet/TLRPC$photos_Photos;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "photos_Photos"
.end annotation


# instance fields
.field public count:I

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5541
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    .line 5543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$photos_Photos;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5547
    const/4 v0, 0x0

    .line 5548
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    sparse-switch p1, :sswitch_data_0

    .line 5556
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5557
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in photos_Photos"

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

    .line 5550
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;-><init>()V

    .line 5551
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    goto :goto_0

    .line 5553
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_photosSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_photosSlice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    goto :goto_0

    .line 5559
    :cond_0
    if-eqz v0, :cond_1

    .line 5560
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$photos_Photos;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 5562
    :cond_1
    return-object v0

    .line 5548
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7235955b -> :sswitch_0
        0x15051f54 -> :sswitch_1
    .end sparse-switch
.end method
