.class Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;
.super Ljava/lang/Object;
.source "InviteContactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    .prologue
    .line 880
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iput-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2702(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->val$names:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2802(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    .line 886
    return-void
.end method
