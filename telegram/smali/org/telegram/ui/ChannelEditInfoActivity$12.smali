.class Lorg/telegram/ui/ChannelEditInfoActivity$12;
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
    .line 661
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Cells/RadioButtonCell;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2700(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Cells/RadioButtonCell;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1602(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 667
    return-void
.end method
