.class public abstract Lorg/telegram/tgnet/TLRPC$ChatParticipants;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChatParticipants"
.end annotation


# instance fields
.field public admin_id:I

.field public chat_id:I

.field public flags:I

.field public participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18571
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18580
    const/4 v0, 0x0

    .line 18581
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    sparse-switch p1, :sswitch_data_0

    .line 18595
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18596
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChatParticipants"

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

    .line 18583
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;-><init>()V

    .line 18584
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    goto :goto_0

    .line 18586
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    .line 18587
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    goto :goto_0

    .line 18589
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;-><init>()V

    .line 18590
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    goto :goto_0

    .line 18592
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_old;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    goto :goto_0

    .line 18598
    :cond_0
    if-eqz v0, :cond_1

    .line 18599
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18601
    :cond_1
    return-object v0

    .line 18581
    nop

    :sswitch_data_0
    .sparse-switch
        -0x36ff3d5 -> :sswitch_0
        0xfd2bb8a -> :sswitch_3
        0x3f460fed -> :sswitch_1
        0x7841b415 -> :sswitch_2
    .end sparse-switch
.end method
