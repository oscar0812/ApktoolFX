.class Lorg/telegram/ui/ChannelEditInfoActivity$15;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 733
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 736
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;-><init>(I)V

    .line 737
    .local v0, "groupStickersActivity":Lorg/telegram/ui/GroupStickersActivity;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 738
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 739
    return-void
.end method
