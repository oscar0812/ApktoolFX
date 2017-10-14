.class Lorg/telegram/ui/Components/FragmentContextView$3$1;
.super Ljava/lang/Object;
.source "FragmentContextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/FragmentContextView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/FragmentContextView$3;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$3$1;->this$1:Lorg/telegram/ui/Components/FragmentContextView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3$1;->this$1:Lorg/telegram/ui/Components/FragmentContextView$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocationController;->removeAllLocationSharings()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3$1;->this$1:Lorg/telegram/ui/Components/FragmentContextView$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    goto :goto_0
.end method
