.class Lorg/telegram/ui/GroupStickersActivity$4;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupStickersActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$902(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$402(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)V

    .line 280
    return-void
.end method
