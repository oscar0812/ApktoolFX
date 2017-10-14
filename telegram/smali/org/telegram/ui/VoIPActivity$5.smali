.class Lorg/telegram/ui/VoIPActivity$5;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 278
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 286
    .local v0, "checked":Z
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 287
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(Z)V

    goto :goto_0

    .line 285
    .end local v0    # "checked":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
