.class Lorg/telegram/messenger/MediaController$14$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$14;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$14;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$14;

    .prologue
    .line 2241
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2244
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2245
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$2902(Lorg/telegram/messenger/MediaController;I)I

    .line 2246
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget v2, v2, Lorg/telegram/messenger/MediaController$14;->val$progress:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$3102(Lorg/telegram/messenger/MediaController;J)J

    .line 2247
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2248
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 2250
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x42400000    # 48.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget v2, v2, Lorg/telegram/messenger/MediaController$14;->val$progress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$3002(Lorg/telegram/messenger/MediaController;J)J

    .line 2251
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$3700(Lorg/telegram/messenger/MediaController;)V

    .line 2253
    :cond_1
    return-void
.end method
