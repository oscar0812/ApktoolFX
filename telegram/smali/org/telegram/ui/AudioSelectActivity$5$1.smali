.class Lorg/telegram/ui/AudioSelectActivity$5$1;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/AudioSelectActivity$5;

.field final synthetic val$newAudioEntries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity$5;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/AudioSelectActivity$5;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$5$1;->this$1:Lorg/telegram/ui/AudioSelectActivity$5;

    iput-object p2, p0, Lorg/telegram/ui/AudioSelectActivity$5$1;->val$newAudioEntries:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$5$1;->this$1:Lorg/telegram/ui/AudioSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/AudioSelectActivity$5;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$5$1;->val$newAudioEntries:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/AudioSelectActivity;->access$302(Lorg/telegram/ui/AudioSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$5$1;->this$1:Lorg/telegram/ui/AudioSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/AudioSelectActivity$5;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$400(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$5$1;->this$1:Lorg/telegram/ui/AudioSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/AudioSelectActivity$5;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$500(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 272
    return-void
.end method
