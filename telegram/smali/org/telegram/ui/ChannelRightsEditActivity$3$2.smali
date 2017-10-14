.class Lorg/telegram/ui/ChannelRightsEditActivity$3$2;
.super Ljava/lang/Object;
.source "ChannelRightsEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelRightsEditActivity$3;

    .prologue
    .line 361
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$2;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$2;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$2;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1000(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$2;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->notifyItemChanged(I)V

    .line 366
    return-void
.end method
