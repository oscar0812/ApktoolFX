.class public abstract Lorg/telegram/tgnet/TLRPC$Audio;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Audio"
.end annotation


# instance fields
.field public access_hash:J

.field public date:I

.field public dc_id:I

.field public duration:I

.field public id:J

.field public iv:[B

.field public key:[B

.field public mime_type:Ljava/lang/String;

.field public size:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4919
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Audio;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4932
    const/4 v0, 0x0

    .line 4933
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Audio;
    sparse-switch p1, :sswitch_data_0

    .line 4950
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4951
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Audio"

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

    .line 4935
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audioEmpty_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audioEmpty_layer45;-><init>()V

    .line 4936
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_0

    .line 4938
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audio_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audio_layer45;-><init>()V

    .line 4939
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_0

    .line 4941
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audio_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audio_old;-><init>()V

    .line 4942
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_0

    .line 4944
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;-><init>()V

    .line 4945
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_0

    .line 4947
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audio_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audio_old2;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_0

    .line 4953
    :cond_0
    if-eqz v0, :cond_1

    .line 4954
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Audio;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4956
    :cond_1
    return-object v0

    .line 4933
    nop

    :sswitch_data_0
    .sparse-switch
        -0x38539b6a -> :sswitch_4
        -0x61cafab -> :sswitch_1
        0x427425e7 -> :sswitch_2
        0x555555f6 -> :sswitch_3
        0x586988d8 -> :sswitch_0
    .end sparse-switch
.end method
