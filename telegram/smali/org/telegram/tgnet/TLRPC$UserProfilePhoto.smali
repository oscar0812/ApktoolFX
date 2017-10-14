.class public abstract Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserProfilePhoto"
.end annotation


# instance fields
.field public photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public photo_id:J

.field public photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15867
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15873
    const/4 v0, 0x0

    .line 15874
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    sparse-switch p1, :sswitch_data_0

    .line 15885
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 15886
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in UserProfilePhoto"

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

    .line 15876
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    .line 15877
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    goto :goto_0

    .line 15879
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    .line 15880
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    goto :goto_0

    .line 15882
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto_old;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    goto :goto_0

    .line 15888
    :cond_0
    if-eqz v0, :cond_1

    .line 15889
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 15891
    :cond_1
    return-object v0

    .line 15874
    nop

    :sswitch_data_0
    .sparse-switch
        -0x66f2eb6d -> :sswitch_2
        -0x2aa62738 -> :sswitch_1
        0x4f11bae1 -> :sswitch_0
    .end sparse-switch
.end method
