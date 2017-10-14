.class public abstract Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputPrivacyRule"
.end annotation


# instance fields
.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12377
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 12378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 12381
    const/4 v0, 0x0

    .line 12382
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    sparse-switch p1, :sswitch_data_0

    .line 12402
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 12403
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputPrivacyRule"

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

    .line 12384
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 12385
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_0

    .line 12387
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;-><init>()V

    .line 12388
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_0

    .line 12390
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowContacts;-><init>()V

    .line 12391
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_0

    .line 12393
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    .line 12394
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_0

    .line 12396
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    .line 12397
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_0

    .line 12399
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_0

    .line 12405
    :cond_0
    if-eqz v0, :cond_1

    .line 12406
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 12408
    :cond_1
    return-object v0

    .line 12382
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6feefb99 -> :sswitch_0
        -0x29949937 -> :sswitch_1
        0xba52007 -> :sswitch_2
        0xd09e07b -> :sswitch_4
        0x131cc67f -> :sswitch_5
        0x184b35ce -> :sswitch_3
    .end sparse-switch
.end method
