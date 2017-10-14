.class final Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;
.super Lorg/telegram/messenger/exoplayer2/text/Cue;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/exoplayer2/text/Cue;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_UNSET:I = -0x1


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "position"    # F
    .param p7, "positionAnchor"    # I
    .param p8, "size"    # F
    .param p9, "windowColorSet"    # Z
    .param p10, "windowColor"    # I
    .param p11, "priority"    # I

    .prologue
    .line 53
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 55
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;->priority:I

    .line 56
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
    .line 25
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;->compareTo(Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;)I
    .locals 2
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-ge v0, v1, :cond_0

    .line 61
    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    .line 62
    :cond_0
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-le v0, v1, :cond_1

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
