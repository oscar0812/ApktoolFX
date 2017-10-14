.class Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    .prologue
    .line 1046
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$3002(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$3102(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 1052
    return-void
.end method
