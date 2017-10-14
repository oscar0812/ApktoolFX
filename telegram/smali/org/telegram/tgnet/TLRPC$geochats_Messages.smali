.class public abstract Lorg/telegram/tgnet/TLRPC$geochats_Messages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "geochats_Messages"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$GeoChatMessage;",
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
    .line 13073
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 13075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->messages:Ljava/util/ArrayList;

    .line 13076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->chats:Ljava/util/ArrayList;

    .line 13077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13080
    const/4 v0, 0x0

    .line 13081
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    sparse-switch p1, :sswitch_data_0

    .line 13089
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 13090
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in geochats_Messages"

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

    .line 13083
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_messagesSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geochats_messagesSlice;-><init>()V

    .line 13084
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    goto :goto_0

    .line 13086
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_messages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geochats_messages;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    goto :goto_0

    .line 13092
    :cond_0
    if-eqz v0, :cond_1

    .line 13093
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13095
    :cond_1
    return-object v0

    .line 13081
    nop

    :sswitch_data_0
    .sparse-switch
        -0x43a79c18 -> :sswitch_0
        -0x2ead924f -> :sswitch_1
    .end sparse-switch
.end method
