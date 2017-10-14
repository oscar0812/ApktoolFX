.class Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;
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
    .line 2226
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2230
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersGroupClick(I)V

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "emoji"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "group_hide_stickers_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_1
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3500(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2236
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2234
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
