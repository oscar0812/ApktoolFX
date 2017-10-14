.class public abstract Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "contacts_Contacts"
.end annotation


# instance fields
.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public saved_count:I

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
    .line 5399
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->contacts:Ljava/util/ArrayList;

    .line 5402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5405
    const/4 v0, 0x0

    .line 5406
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    sparse-switch p1, :sswitch_data_0

    .line 5414
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5415
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in contacts_Contacts"

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

    .line 5408
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;-><init>()V

    .line 5409
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    goto :goto_0

    .line 5411
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_contacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_contacts;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    goto :goto_0

    .line 5417
    :cond_0
    if-eqz v0, :cond_1

    .line 5418
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 5420
    :cond_1
    return-object v0

    .line 5406
    nop

    :sswitch_data_0
    .sparse-switch
        -0x48b4562e -> :sswitch_0
        -0x151781be -> :sswitch_1
    .end sparse-switch
.end method
