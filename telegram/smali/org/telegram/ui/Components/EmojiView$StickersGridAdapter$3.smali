.class Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$3;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    .prologue
    .line 2245
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2248
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersGroupClick(I)V

    .line 2251
    :cond_0
    return-void
.end method
