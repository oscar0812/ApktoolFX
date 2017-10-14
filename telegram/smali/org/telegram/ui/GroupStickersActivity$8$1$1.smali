.class Lorg/telegram/ui/GroupStickersActivity$8$1$1;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity$8$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity$8$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/GroupStickersActivity$8$1;

    .prologue
    .line 445
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/GroupStickersActivity;->access$102(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v1, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v1, v0}, Lorg/telegram/ui/GroupStickersActivity;->access$402(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)V

    .line 472
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/GroupStickersActivity;->access$1702(Lorg/telegram/ui/GroupStickersActivity;I)I

    .line 473
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1800(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1800(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->notifyItemChanged(I)V

    .line 464
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/GroupStickersActivity;->access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/GroupStickersActivity;->access$200(Lorg/telegram/ui/GroupStickersActivity;Z)V

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$8$1$1;->this$2:Lorg/telegram/ui/GroupStickersActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "AddStickersNotFound"

    const v2, 0x7f070058

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
