.class Lorg/telegram/ui/VoIPActivity$4;
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
    .line 227
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    .line 231
    .local v3, "svc":Lorg/telegram/messenger/voip/VoIPService;
    if-nez v3, :cond_0

    .line 276
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    new-array v6, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "VoipAudioRoutingBluetooth"

    const v8, 0x7f070634

    .line 235
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string/jumbo v4, "VoipAudioRoutingEarpiece"

    const v7, 0x7f070635

    .line 236
    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v4, 0x2

    const-string/jumbo v7, "VoipAudioRoutingSpeaker"

    const v8, 0x7f070636

    .line 237
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    new-instance v7, Lorg/telegram/ui/VoIPActivity$4$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/VoIPActivity$4$1;-><init>(Lorg/telegram/ui/VoIPActivity$4;)V

    .line 235
    invoke-virtual {v5, v6, v4, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v1

    .line 264
    .local v1, "bldr":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_0

    .line 267
    .end local v1    # "bldr":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v5}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/CheckableImageView;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    .local v2, "checked":Z
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v4}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 269
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 270
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 275
    :goto_2
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    goto :goto_0

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "checked":Z
    :cond_2
    move v2, v4

    .line 267
    goto :goto_1

    .line 273
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v2    # "checked":Z
    :cond_3
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_2

    .line 237
    nop

    :array_0
    .array-data 4
        0x7f0200a6
        0x7f0200c7
        0x7f0200e1
    .end array-data
.end method
