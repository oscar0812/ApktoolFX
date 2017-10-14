.class public abstract Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "messages_Dialogs"
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

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
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
    .line 23030
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 23031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    .line 23032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    .line 23033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    .line 23034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 23038
    const/4 v0, 0x0

    .line 23039
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    sparse-switch p1, :sswitch_data_0

    .line 23047
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 23048
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in messages_Dialogs"

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

    .line 23041
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 23042
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    goto :goto_0

    .line 23044
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    goto :goto_0

    .line 23050
    :cond_0
    if-eqz v0, :cond_1

    .line 23051
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 23053
    :cond_1
    return-object v0

    .line 23039
    nop

    :sswitch_data_0
    .sparse-switch
        0x15ba6c40 -> :sswitch_0
        0x71e094f3 -> :sswitch_1
    .end sparse-switch
.end method
