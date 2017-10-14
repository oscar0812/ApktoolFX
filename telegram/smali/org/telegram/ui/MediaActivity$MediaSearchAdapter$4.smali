.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$documents:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1915
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;->val$documents:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;->val$documents:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4802(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1920
    return-void
.end method
