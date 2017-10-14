.class Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->access$400(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->access$300(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    .line 183
    return-void
.end method
