.class public final Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;
.super Ljava/io/IOException;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalMergeException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_PERIOD_COUNT_MISMATCH:I = 0x1

.field public static final REASON_WINDOWS_ARE_DYNAMIC:I


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 67
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;->reason:I

    .line 68
    return-void
.end method
