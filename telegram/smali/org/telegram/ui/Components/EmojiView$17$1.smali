.class Lorg/telegram/ui/Components/EmojiView$17$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$17;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$17;

.field final synthetic val$searchImage:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$17;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$17;

    .prologue
    .line 851
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->val$searchImage:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->val$searchImage:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$3202(Lorg/telegram/ui/Components/EmojiView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 859
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3500(Lorg/telegram/ui/Components/EmojiView;)V

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17$1;->this$1:Lorg/telegram/ui/Components/EmojiView$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 865
    :cond_1
    return-void
.end method
