.class public abstract Lorg/telegram/tgnet/TLRPC$Message;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Message"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field public attachPath:Ljava/lang/String;

.field public date:I

.field public destroyTime:I

.field public dialog_id:J

.field public edit_date:I

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public from_id:I

.field public fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

.field public fwd_msg_id:I

.field public id:I

.field public layer:I

.field public local_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public media_unread:Z

.field public mentioned:Z

.field public message:Ljava/lang/String;

.field public out:Z

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public post:Z

.field public post_author:Ljava/lang/String;

.field public random_id:J

.field public replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to_msg_id:I

.field public reply_to_random_id:J

.field public send_state:I

.field public seq_in:I

.field public seq_out:I

.field public silent:Z

.field public to_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public ttl:I

.field public unread:Z

.field public via_bot_id:I

.field public via_bot_name:Ljava/lang/String;

.field public views:I

.field public with_my_score:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28080
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 28095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 28105
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 28106
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 28107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 28110
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 28121
    const/4 v0, 0x0

    .line 28122
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Message;
    sparse-switch p1, :sswitch_data_0

    .line 28181
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 28182
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Message"

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

    .line 28124
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;-><init>()V

    .line 28125
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28127
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old3;-><init>()V

    .line 28128
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28130
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old4;-><init>()V

    .line 28131
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28133
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .line 28134
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28136
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 28137
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28139
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;-><init>()V

    .line 28140
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28142
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;-><init>()V

    .line 28143
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28145
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old7;-><init>()V

    .line 28146
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28148
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;-><init>()V

    .line 28149
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28151
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;-><init>()V

    .line 28152
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28154
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old6;-><init>()V

    .line 28155
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28157
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;-><init>()V

    .line 28158
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28160
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;-><init>()V

    .line 28161
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28163
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old2;-><init>()V

    .line 28164
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28166
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;-><init>()V

    .line 28167
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28169
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old;-><init>()V

    .line 28170
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28172
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;-><init>()V

    .line 28173
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_0

    .line 28175
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 28176
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_0

    .line 28178
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old5;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old5;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_0

    .line 28184
    :cond_0
    if-eqz v0, :cond_1

    .line 28185
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Message;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 28187
    :cond_1
    return-object v0

    .line 28122
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c1a21ac -> :sswitch_9
        -0x6f2223ef -> :sswitch_4
        -0x61e65e0a -> :sswitch_11
        -0x60729f45 -> :sswitch_e
        -0x5c9818ea -> :sswitch_b
        -0x5854e66f -> :sswitch_1
        -0x3f9469f9 -> :sswitch_8
        -0x3f641ba1 -> :sswitch_5
        -0x3cf9fcdb -> :sswitch_2
        -0x366d1ea4 -> :sswitch_6
        -0xf87eb38 -> :sswitch_12
        0x5f46804 -> :sswitch_c
        0x1d86f70e -> :sswitch_0
        0x22eb6aba -> :sswitch_f
        0x2bebfa86 -> :sswitch_a
        0x555555f8 -> :sswitch_10
        0x555555f9 -> :sswitch_3
        0x567699b3 -> :sswitch_d
        0x5ba66c13 -> :sswitch_7
    .end sparse-switch
.end method
