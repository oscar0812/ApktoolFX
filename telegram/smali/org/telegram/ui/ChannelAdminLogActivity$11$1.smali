.class Lorg/telegram/ui/ChannelAdminLogActivity$11$1;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$11;

    .prologue
    .line 820
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectRights(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "filter"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p2, "admins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4502(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4602(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4600(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    const-string/jumbo v1, "EventLogSelectedEvents"

    const v2, 0x7f07026f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 830
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 831
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    const-string/jumbo v1, "EventLogAllEvents"

    const v2, 0x7f070230

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
