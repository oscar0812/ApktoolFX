.class Lorg/telegram/ui/ChatActivity$37$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$37;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$37;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$37;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$37;

    .prologue
    .line 2636
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$37$1;->this$1:Lorg/telegram/ui/ChatActivity$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2639
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$37$1;->this$1:Lorg/telegram/ui/ChatActivity$37;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearRecentHashtags()V

    .line 2640
    return-void
.end method
