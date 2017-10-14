.class final Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegionObject"
.end annotation


# instance fields
.field public final backgroundPixelCode:I

.field public final foregroundPixelCode:I

.field public final horizontalPosition:I

.field public final provider:I

.field public final type:I

.field public final verticalPosition:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "provider"    # I
    .param p3, "horizontalPosition"    # I
    .param p4, "verticalPosition"    # I
    .param p5, "foregroundPixelCode"    # I
    .param p6, "backgroundPixelCode"    # I

    .prologue
    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->type:I

    .line 972
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->provider:I

    .line 973
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    .line 974
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    .line 975
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->foregroundPixelCode:I

    .line 976
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$RegionObject;->backgroundPixelCode:I

    .line 977
    return-void
.end method
