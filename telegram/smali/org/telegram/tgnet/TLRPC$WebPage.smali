.class public abstract Lorg/telegram/tgnet/TLRPC$WebPage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WebPage"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public cached_page:Lorg/telegram/tgnet/TLRPC$Page;

.field public date:I

.field public description:Ljava/lang/String;

.field public display_url:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public duration:I

.field public embed_height:I

.field public embed_type:Ljava/lang/String;

.field public embed_url:Ljava/lang/String;

.field public embed_width:I

.field public flags:I

.field public hash:I

.field public id:J

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public site_name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7429
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7451
    const/4 v0, 0x0

    .line 7452
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    sparse-switch p1, :sswitch_data_0

    .line 7475
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7476
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in WebPage"

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

    .line 7454
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    .line 7455
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7457
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;-><init>()V

    .line 7458
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7460
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;-><init>()V

    .line 7461
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7463
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 7464
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7466
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;-><init>()V

    .line 7467
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7469
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;-><init>()V

    .line 7470
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7472
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_0

    .line 7478
    :cond_0
    if-eqz v0, :cond_1

    .line 7479
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$WebPage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7481
    :cond_1
    return-object v0

    .line 7452
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a7b6b8d -> :sswitch_5
        -0x5ce15f4b -> :sswitch_1
        -0x3a7925e4 -> :sswitch_4
        -0x357df129 -> :sswitch_6
        -0x2be5ae99 -> :sswitch_3
        -0x14eb8818 -> :sswitch_2
        0x5f07b4bc -> :sswitch_0
    .end sparse-switch
.end method
