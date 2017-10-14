.class Lorg/telegram/ui/Components/InstantCameraView$11;
.super Ljava/util/TimerTask;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 818
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 821
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$11$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$11$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$11;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method
