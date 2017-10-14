.class Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .prologue
    .line 1028
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->access$2802(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->val$names:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->access$2902(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 1034
    return-void
.end method
