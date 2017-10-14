.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;
.super Lorg/telegram/tgnet/TLRPC$TL_webPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage_layer58"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7725
    const v0, -0x357df129    # -4261739.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7724
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7729
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    .line 7730
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->id:J

    .line 7731
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->url:Ljava/lang/String;

    .line 7732
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->display_url:Ljava/lang/String;

    .line 7733
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7734
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->type:Ljava/lang/String;

    .line 7736
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7737
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->site_name:Ljava/lang/String;

    .line 7739
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7740
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->title:Ljava/lang/String;

    .line 7742
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7743
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->description:Ljava/lang/String;

    .line 7745
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7746
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7748
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7749
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_url:Ljava/lang/String;

    .line 7751
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7752
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_type:Ljava/lang/String;

    .line 7754
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7755
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_width:I

    .line 7757
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7758
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_height:I

    .line 7760
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7761
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->duration:I

    .line 7763
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7764
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->author:Ljava/lang/String;

    .line 7766
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7767
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7769
    :cond_b
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7772
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7773
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7774
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7775
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7776
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7777
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7778
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7780
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7781
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7783
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7784
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7786
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7787
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7789
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7790
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7792
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7793
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7795
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7796
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7798
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7799
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7801
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7802
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7804
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7805
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7807
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7808
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7810
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7811
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7813
    :cond_b
    return-void
.end method
