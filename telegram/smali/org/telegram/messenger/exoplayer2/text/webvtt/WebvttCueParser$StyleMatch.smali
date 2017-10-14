.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final score:I

.field public final style:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .locals 0
    .param p1, "score"    # I
    .param p2, "style"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    .line 476
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 477
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 469
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->compareTo(Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;)I
    .locals 2
    .param p1, "another"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 481
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    sub-int/2addr v0, v1

    return v0
.end method
