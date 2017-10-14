.class public abstract Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "auth_SentCodeType"
.end annotation


# instance fields
.field public length:I

.field public pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3242
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 3247
    const/4 v0, 0x0

    .line 3248
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    sparse-switch p1, :sswitch_data_0

    .line 3262
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3263
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in auth_SentCodeType"

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

    .line 3250
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;-><init>()V

    .line 3251
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_0

    .line 3253
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;-><init>()V

    .line 3254
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_0

    .line 3256
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;-><init>()V

    .line 3257
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_0

    .line 3259
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_0

    .line 3265
    :cond_0
    if-eqz v0, :cond_1

    .line 3266
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 3268
    :cond_1
    return-object v0

    .line 3248
    nop

    :sswitch_data_0
    .sparse-switch
        -0x54fc3927 -> :sswitch_2
        -0x3fff445e -> :sswitch_3
        0x3dbb5986 -> :sswitch_0
        0x5353e5a7 -> :sswitch_1
    .end sparse-switch
.end method
