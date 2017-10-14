.class Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity$ListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/GroupStickersActivity$ListAdapter;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 685
    const-string/jumbo v0, "stickers"

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 686
    return-void
.end method
