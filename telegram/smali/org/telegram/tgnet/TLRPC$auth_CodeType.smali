.class public abstract Lorg/telegram/tgnet/TLRPC$auth_CodeType;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "auth_CodeType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20619
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20622
    const/4 v0, 0x0

    .line 20623
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    sparse-switch p1, :sswitch_data_0

    .line 20634
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 20635
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in auth_CodeType"

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

    .line 20625
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;-><init>()V

    .line 20626
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    goto :goto_0

    .line 20628
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;-><init>()V

    .line 20629
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    goto :goto_0

    .line 20631
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_CodeType;
    goto :goto_0

    .line 20637
    :cond_0
    if-eqz v0, :cond_1

    .line 20638
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$auth_CodeType;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 20640
    :cond_1
    return-object v0

    .line 20623
    nop

    :sswitch_data_0
    .sparse-switch
        0x226ccefb -> :sswitch_2
        0x72a3158c -> :sswitch_0
        0x741cd3e3 -> :sswitch_1
    .end sparse-switch
.end method
