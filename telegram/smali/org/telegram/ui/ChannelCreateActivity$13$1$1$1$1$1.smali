.class Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;)V
    .locals 0
    .param p1, "this$5"    # Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    .prologue
    .line 790
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;->this$3:Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;->this$2:Lorg/telegram/ui/ChannelCreateActivity$13$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$002(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;->this$3:Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;->this$2:Lorg/telegram/ui/ChannelCreateActivity$13$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;->this$3:Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;->this$2:Lorg/telegram/ui/ChannelCreateActivity$13$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;->this$3:Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;->this$2:Lorg/telegram/ui/ChannelCreateActivity$13$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1900(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)Z

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;->this$3:Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;->this$2:Lorg/telegram/ui/ChannelCreateActivity$13$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$1800(Lorg/telegram/ui/ChannelCreateActivity;)V

    .line 798
    return-void
.end method
