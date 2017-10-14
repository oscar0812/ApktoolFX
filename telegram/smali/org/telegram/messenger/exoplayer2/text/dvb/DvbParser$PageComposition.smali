.class final Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageComposition"
.end annotation


# instance fields
.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final state:I

.field public final timeOutSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0
    .param p1, "timeoutSecs"    # I
    .param p2, "version"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p4, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    .line 884
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    .line 885
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    .line 886
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    .line 887
    return-void
.end method
