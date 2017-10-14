.class Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    .prologue
    .line 981
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2700(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v1, v1, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->val$query:Ljava/lang/String;

    const/4 v2, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZIZ)V

    .line 985
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1037
    return-void
.end method
