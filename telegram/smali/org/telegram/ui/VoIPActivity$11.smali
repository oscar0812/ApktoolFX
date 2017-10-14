.class Lorg/telegram/ui/VoIPActivity$11;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 623
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPActivity;->access$1700(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1900(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/VoIPActivity;->access$1802(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 633
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$11;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPActivity;->access$2000(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 634
    return-void
.end method
