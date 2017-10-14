.class Lorg/telegram/ui/AudioSelectActivity$4;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 140
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 146
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/messenger/MediaController$AudioEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/messenger/MediaController$AudioEntry;>;"
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;->didSelectAudio(Ljava/util/ArrayList;)V

    .line 150
    .end local v0    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/AudioSelectActivity;->finishFragment()V

    .line 151
    return-void
.end method
