.class public abstract Lorg/telegram/tgnet/TLRPC$LangPackString;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LangPackString"
.end annotation


# instance fields
.field public few_value:Ljava/lang/String;

.field public flags:I

.field public key:Ljava/lang/String;

.field public many_value:Ljava/lang/String;

.field public one_value:Ljava/lang/String;

.field public other_value:Ljava/lang/String;

.field public two_value:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public zero_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4173
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$LangPackString;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4185
    const/4 v0, 0x0

    .line 4186
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    sparse-switch p1, :sswitch_data_0

    .line 4197
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4198
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in LangPackString"

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

    .line 4188
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;-><init>()V

    .line 4189
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    goto :goto_0

    .line 4191
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langPackString;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langPackString;-><init>()V

    .line 4192
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    goto :goto_0

    .line 4194
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringDeleted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langPackStringDeleted;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$LangPackString;
    goto :goto_0

    .line 4200
    :cond_0
    if-eqz v0, :cond_1

    .line 4201
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$LangPackString;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4203
    :cond_1
    return-object v0

    .line 4186
    nop

    :sswitch_data_0
    .sparse-switch
        -0x352e7e0a -> :sswitch_1
        0x2979eeb2 -> :sswitch_2
        0x6c47ac9f -> :sswitch_0
    .end sparse-switch
.end method
