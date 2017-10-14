.class Lorg/telegram/ui/Components/ChatActivityEnterView$40$1;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$40;->onClearEmojiRecent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$40;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$40;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatActivityEnterView$40;

    .prologue
    .line 3107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3110
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$40;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    .line 3111
    return-void
.end method
