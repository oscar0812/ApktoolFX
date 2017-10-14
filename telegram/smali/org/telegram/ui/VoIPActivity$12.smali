.class Lorg/telegram/ui/VoIPActivity$12;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;
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
    .line 639
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 642
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-eqz v2, :cond_0

    .line 658
    :goto_0
    return v0

    .line 644
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 645
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1900(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 646
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/VoIPActivity;->access$1802(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 648
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v0}, Lorg/telegram/ui/VoIPActivity;->access$1700(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$1900(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    new-instance v3, Lorg/telegram/ui/VoIPActivity$12$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPActivity$12$1;-><init>(Lorg/telegram/ui/VoIPActivity$12;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/VoIPActivity;->access$1802(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    move v0, v1

    .line 658
    goto :goto_0
.end method
