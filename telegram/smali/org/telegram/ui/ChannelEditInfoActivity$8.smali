.class Lorg/telegram/ui/ChannelEditInfoActivity$8;
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
    .line 506
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$8;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 509
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$8;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$700(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$8;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$702(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$8;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2300(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    goto :goto_0
.end method
