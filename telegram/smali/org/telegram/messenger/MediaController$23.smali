.class Lorg/telegram/messenger/MediaController$23;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->generateWaveform(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 3271
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$23;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$23;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$23;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3274
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$23;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->getWaveform(Ljava/lang/String;)[B

    move-result-object v0

    .line 3275
    .local v0, "waveform":[B
    new-instance v1, Lorg/telegram/messenger/MediaController$23$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MediaController$23$1;-><init>(Lorg/telegram/messenger/MediaController$23;[B)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3300
    return-void
.end method
