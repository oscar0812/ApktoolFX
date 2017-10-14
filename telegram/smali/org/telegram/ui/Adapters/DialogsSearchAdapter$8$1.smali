.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    .prologue
    .line 877
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZIZ)V

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;)V

    .line 884
    return-void
.end method
