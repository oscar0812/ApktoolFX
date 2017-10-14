.class Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;)V
    .locals 0
    .param p1, "this$5"    # Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    .prologue
    .line 965
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;->this$3:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;->this$2:Lorg/telegram/ui/ChannelEditInfoActivity$18$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$202(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;->this$3:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;->this$2:Lorg/telegram/ui/ChannelEditInfoActivity$18$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;->this$3:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;->this$2:Lorg/telegram/ui/ChannelEditInfoActivity$18$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;->this$3:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;->this$2:Lorg/telegram/ui/ChannelEditInfoActivity$18$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$18$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2400(Lorg/telegram/ui/ChannelEditInfoActivity;Ljava/lang/String;)Z

    .line 972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1$1;->this$5:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1$1;->this$3:Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1$1;->this$2:Lorg/telegram/ui/ChannelEditInfoActivity$18$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2300(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    .line 973
    return-void
.end method
