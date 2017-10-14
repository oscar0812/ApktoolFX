.class public abstract Lorg/telegram/tgnet/TLRPC$MessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessagesFilter"
.end annotation


# instance fields
.field public flags:I

.field public missed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20671
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20676
    const/4 v0, 0x0

    .line 20677
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    sparse-switch p1, :sswitch_data_0

    .line 20730
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 20731
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in MessagesFilter"

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

    .line 20679
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;-><init>()V

    .line 20680
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20682
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    .line 20683
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20685
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    .line 20686
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20688
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    .line 20689
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20691
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    .line 20692
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20694
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    .line 20695
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20697
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    .line 20698
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20700
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;-><init>()V

    .line 20701
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20703
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGeo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGeo;-><init>()V

    .line 20704
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20706
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMyMentions;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMyMentions;-><init>()V

    .line 20707
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20709
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;-><init>()V

    .line 20710
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20712
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterContacts;-><init>()V

    .line 20713
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20715
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    .line 20716
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20718
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    .line 20719
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20721
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;-><init>()V

    .line 20722
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20724
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    .line 20725
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20727
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVideo;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    .line 20733
    :cond_0
    if-eqz v0, :cond_1

    .line 20734
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 20736
    :cond_1
    return-object v0

    .line 20677
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f366898 -> :sswitch_e
        -0x69f65ae4 -> :sswitch_3
        -0x61220e78 -> :sswitch_5
        -0x603ff19b -> :sswitch_d
        -0x4ab625ad -> :sswitch_10
        -0x3e071966 -> :sswitch_9
        -0x26a18c45 -> :sswitch_7
        -0x1f9d247d -> :sswitch_b
        -0x18fd92f3 -> :sswitch_8
        -0x379a79 -> :sswitch_0
        0x3751b49e -> :sswitch_1
        0x3a20ecb8 -> :sswitch_2
        0x50f5c392 -> :sswitch_c
        0x56e9f0e4 -> :sswitch_6
        0x57e2f66c -> :sswitch_f
        0x7a7c17a4 -> :sswitch_a
        0x7ef0dd87 -> :sswitch_4
    .end sparse-switch
.end method
