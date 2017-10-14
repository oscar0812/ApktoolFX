.class Lorg/telegram/ui/ChannelAdminLogActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChannelAdminLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelAdminLogActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1102(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1300(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1302(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1500(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 472
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1500(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 478
    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x1

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1302(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1102(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$3;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 486
    return-void
.end method
