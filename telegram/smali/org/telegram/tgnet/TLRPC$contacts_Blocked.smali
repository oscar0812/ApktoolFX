.class public abstract Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "contacts_Blocked"
.end annotation


# instance fields
.field public blocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

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
    .line 4575
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->blocked:Ljava/util/ArrayList;

    .line 4577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4581
    const/4 v0, 0x0

    .line 4582
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    sparse-switch p1, :sswitch_data_0

    .line 4590
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4591
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in contacts_Blocked"

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

    .line 4584
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blocked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_blocked;-><init>()V

    .line 4585
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    goto :goto_0

    .line 4587
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    goto :goto_0

    .line 4593
    :cond_0
    if-eqz v0, :cond_1

    .line 4594
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4596
    :cond_1
    return-object v0

    .line 4582
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ff7fd5f -> :sswitch_1
        0x1c138d15 -> :sswitch_0
    .end sparse-switch
.end method
