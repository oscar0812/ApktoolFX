.class Lorg/telegram/ui/AudioSelectActivity$2;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/AudioSelectActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 119
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/AudioCell;

    .line 120
    .local v0, "audioCell":Lorg/telegram/ui/Cells/AudioCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/AudioCell;->getAudioEntry()Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v1

    .line 121
    .local v1, "audioEntry":Lorg/telegram/messenger/MediaController$AudioEntry;
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/AudioCell;->setChecked(Z)V

    .line 128
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$100(Lorg/telegram/ui/AudioSelectActivity;)V

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/AudioCell;->setChecked(Z)V

    goto :goto_0
.end method
