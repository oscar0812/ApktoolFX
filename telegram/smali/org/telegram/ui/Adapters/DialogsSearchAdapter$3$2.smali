.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$hashMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    .prologue
    .line 402
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;->val$hashMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;->val$arrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;->val$hashMap:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 406
    return-void
.end method
