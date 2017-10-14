.class Lorg/telegram/messenger/query/StickersQuery$17$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$17;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$17;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$17;

    .prologue
    .line 821
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$17$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$17;->val$hash:I

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$17;->val$hash:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1302(I)I

    .line 827
    :cond_0
    invoke-static {v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V

    .line 828
    return-void
.end method
