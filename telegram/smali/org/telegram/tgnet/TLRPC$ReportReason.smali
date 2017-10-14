.class public abstract Lorg/telegram/tgnet/TLRPC$ReportReason;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReportReason"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10194
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReportReason;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10198
    const/4 v0, 0x0

    .line 10199
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    sparse-switch p1, :sswitch_data_0

    .line 10213
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10214
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ReportReason"

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

    .line 10201
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonSpam;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonSpam;-><init>()V

    .line 10202
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 10204
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonViolence;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonViolence;-><init>()V

    .line 10205
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 10207
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;-><init>()V

    .line 10208
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 10210
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonPornography;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonPornography;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 10216
    :cond_0
    if-eqz v0, :cond_1

    .line 10217
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ReportReason;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10219
    :cond_1
    return-object v0

    .line 10199
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e8b92f6 -> :sswitch_2
        0x1e22c78d -> :sswitch_1
        0x2e59d922 -> :sswitch_3
        0x58dbcab8 -> :sswitch_0
    .end sparse-switch
.end method
