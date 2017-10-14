.class Lorg/telegram/ui/ChannelAdminLogActivity$11;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 812
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 815
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 834
    :goto_0
    return-void

    .line 818
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/AdminLogFilterAlert;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4600(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;Z)V

    .line 819
    .local v0, "adminLogFilterAlert":Lorg/telegram/ui/Components/AdminLogFilterAlert;
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4700(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->setCurrentAdmins(Ljava/util/ArrayList;)V

    .line 820
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$11;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->setAdminLogFilterAlertDelegate(Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;)V

    .line 833
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
