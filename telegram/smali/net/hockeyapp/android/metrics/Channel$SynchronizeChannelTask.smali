.class Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;
.super Ljava/util/TimerTask;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/metrics/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizeChannelTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/metrics/Channel;


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->this$0:Lnet/hockeyapp/android/metrics/Channel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->this$0:Lnet/hockeyapp/android/metrics/Channel;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    .line 206
    return-void
.end method
