.class public abstract Lorg/telegram/tgnet/TLRPC$Page;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Page"
.end annotation


# instance fields
.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field public documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6476
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 6477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    .line 6478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    .line 6479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Page;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6482
    const/4 v0, 0x0

    .line 6483
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Page;
    sparse-switch p1, :sswitch_data_0

    .line 6497
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 6498
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Page"

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

    .line 6485
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageFull;-><init>()V

    .line 6486
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    goto :goto_0

    .line 6488
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer67;-><init>()V

    .line 6489
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    goto :goto_0

    .line 6491
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageFull_layer67;-><init>()V

    .line 6492
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    goto :goto_0

    .line 6494
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pagePart;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    goto :goto_0

    .line 6500
    :cond_0
    if-eqz v0, :cond_1

    .line 6501
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Page;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6503
    :cond_1
    return-object v0

    .line 6483
    nop

    :sswitch_data_0
    .sparse-switch
        -0x721193bc -> :sswitch_1
        -0x71c06142 -> :sswitch_3
        -0x285e6297 -> :sswitch_2
        0x556ec7aa -> :sswitch_0
    .end sparse-switch
.end method
