.class public Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
.super Lorg/telegram/tgnet/TLRPC$ChatParticipant;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatChannelParticipant"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29592
    const v0, -0x3728b6c2

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29591
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;-><init>()V

    return-void
.end method
