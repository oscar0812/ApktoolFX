.class Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

.field final synthetic val$documents:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    .prologue
    .line 1342
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;->val$documents:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;->val$documents:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->access$4302(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$3;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 1348
    return-void
.end method
