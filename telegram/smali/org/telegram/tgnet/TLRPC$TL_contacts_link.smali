.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_link;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_link"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1769
    const v0, 0x3ace484c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1768
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_link;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1776
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->constructor:I

    if-eq v1, p1, :cond_1

    .line 1777
    if-eqz p2, :cond_0

    .line 1778
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_contacts_link"

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

    .line 1780
    :cond_0
    const/4 v0, 0x0

    .line 1785
    :goto_0
    return-object v0

    .line 1783
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;-><init>()V

    .line 1784
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_contacts_link;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 1789
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    .line 1790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    .line 1791
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1792
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1795
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1796
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ContactLink;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1797
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ContactLink;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1798
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1799
    return-void
.end method
