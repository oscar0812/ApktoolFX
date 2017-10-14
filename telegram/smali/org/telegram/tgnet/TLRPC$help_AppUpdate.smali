.class public abstract Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "help_AppUpdate"
.end annotation


# instance fields
.field public critical:Z

.field public id:I

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2768
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2775
    const/4 v0, 0x0

    .line 2776
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
    sparse-switch p1, :sswitch_data_0

    .line 2784
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2785
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in help_AppUpdate"

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

    .line 2778
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;-><init>()V

    .line 2779
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
    goto :goto_0

    .line 2781
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_noAppUpdate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_noAppUpdate;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
    goto :goto_0

    .line 2787
    :cond_0
    if-eqz v0, :cond_1

    .line 2788
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2790
    :cond_1
    return-object v0

    .line 2776
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76780cef -> :sswitch_0
        -0x3ba59aca -> :sswitch_1
    .end sparse-switch
.end method
