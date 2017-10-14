.class public abstract Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputPaymentCredentials"
.end annotation


# instance fields
.field public data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public flags:I

.field public id:Ljava/lang/String;

.field public payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public save:Z

.field public tmp_password:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10964
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10973
    const/4 v0, 0x0

    .line 10974
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    sparse-switch p1, :sswitch_data_0

    .line 10985
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10986
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputPaymentCredentials"

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

    .line 10976
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;-><init>()V

    .line 10977
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    goto :goto_0

    .line 10979
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;-><init>()V

    .line 10980
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    goto :goto_0

    .line 10982
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
    goto :goto_0

    .line 10988
    :cond_0
    if-eqz v0, :cond_1

    .line 10989
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10991
    :cond_1
    return-object v0

    .line 10974
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ef14d31 -> :sswitch_2
        0x3417d728 -> :sswitch_0
        0x795667a6 -> :sswitch_1
    .end sparse-switch
.end method
