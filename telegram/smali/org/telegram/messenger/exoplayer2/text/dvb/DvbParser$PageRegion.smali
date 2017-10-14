.class final Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageRegion"
.end annotation


# instance fields
.field public final horizontalAddress:I

.field public final verticalAddress:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "horizontalAddress"    # I
    .param p2, "verticalAddress"    # I

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    .line 903
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    .line 904
    return-void
.end method
