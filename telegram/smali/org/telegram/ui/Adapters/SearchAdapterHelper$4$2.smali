.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$hashMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;->val$hashMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;->val$arrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$2;->val$hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 236
    return-void
.end method
