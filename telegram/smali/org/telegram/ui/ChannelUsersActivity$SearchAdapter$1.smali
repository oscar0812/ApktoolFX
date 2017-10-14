.class Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

.field final synthetic val$this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .prologue
    .line 914
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$1;->val$this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 918
    return-void
.end method

.method public onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    return-void
.end method
