.class public abstract Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TopPeerCategory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11071
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11074
    const/4 v0, 0x0

    .line 11075
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    sparse-switch p1, :sswitch_data_0

    .line 11095
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 11096
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TopPeerCategory"

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

    .line 11077
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;-><init>()V

    .line 11078
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_0

    .line 11080
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryGroups;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryGroups;-><init>()V

    .line 11081
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_0

    .line 11083
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;-><init>()V

    .line 11084
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_0

    .line 11086
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryChannels;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryChannels;-><init>()V

    .line 11087
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_0

    .line 11089
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPhoneCalls;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPhoneCalls;-><init>()V

    .line 11090
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_0

    .line 11092
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsPM;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsPM;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_0

    .line 11098
    :cond_0
    if-eqz v0, :cond_1

    .line 11099
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TopPeerCategory;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11101
    :cond_1
    return-object v0

    .line 11075
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5499e4a5 -> :sswitch_5
        -0x42e85eb6 -> :sswitch_1
        0x637b7ed -> :sswitch_0
        0x148677e2 -> :sswitch_2
        0x161d9628 -> :sswitch_3
        0x1e76a78c -> :sswitch_4
    .end sparse-switch
.end method
