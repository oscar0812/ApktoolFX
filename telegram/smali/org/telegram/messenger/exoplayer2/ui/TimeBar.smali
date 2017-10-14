.class public interface abstract Lorg/telegram/messenger/exoplayer2/ui/TimeBar;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ui/TimeBar$OnScrubListener;
    }
.end annotation


# virtual methods
.method public abstract setAdBreakTimesMs([JI)V
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setBufferedPosition(J)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setKeyCountIncrement(I)V
.end method

.method public abstract setKeyTimeIncrement(J)V
.end method

.method public abstract setListener(Lorg/telegram/messenger/exoplayer2/ui/TimeBar$OnScrubListener;)V
.end method

.method public abstract setPosition(J)V
.end method
