.class Lorg/telegram/ui/DocumentSelectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DocumentSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$1;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    new-instance v0, Lorg/telegram/ui/DocumentSelectActivity$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DocumentSelectActivity$1$1;-><init>(Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 118
    .local v0, "r":Ljava/lang/Runnable;
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$1;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
