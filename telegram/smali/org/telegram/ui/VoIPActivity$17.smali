.class Lorg/telegram/ui/VoIPActivity$17;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->startUpdatingCallDuration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 887
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$17;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x3c

    .line 890
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$17;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VoIPActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$17;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$2400(Lorg/telegram/ui/VoIPActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$17;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$2400(Lorg/telegram/ui/VoIPActivity;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 894
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 895
    .local v0, "duration":J
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$17;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$2500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    cmp-long v2, v0, v10

    if-lez v2, :cond_3

    const-string/jumbo v2, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v12

    rem-long v6, v0, v10

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v13

    rem-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$17;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$2500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, p0, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 895
    :cond_3
    const-string/jumbo v2, "%d:%02d"

    new-array v4, v14, [Ljava/lang/Object;

    div-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v12

    rem-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
