.class Lorg/telegram/ui/DialogsActivity$12;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1065
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedAttachButton()V
    .locals 0

    .prologue
    .line 1123
    return-void
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "seekProgress"    # F

    .prologue
    .line 1133
    return-void
.end method

.method public needSendTyping()V
    .locals 0

    .prologue
    .line 1093
    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 0

    .prologue
    .line 1143
    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1138
    return-void
.end method

.method public needStartRecordVideo(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1128
    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method

.method public onAttachButtonShow()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 1108
    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1068
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getSelectedDialogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 1069
    .local v0, "selectedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onPreAudioVideoRecord()V
    .locals 0

    .prologue
    .line 1083
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .prologue
    .line 1118
    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 0
    .param p1, "video"    # Z

    .prologue
    .line 1078
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bigChange"    # Z

    .prologue
    .line 1088
    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1113
    return-void
.end method
