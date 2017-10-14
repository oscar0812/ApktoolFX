.class Lorg/telegram/messenger/query/StickersQuery$28$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$28;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$28;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$28;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$28;

    .prologue
    .line 1390
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$28$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1393
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$28$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$28;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$28;->val$type:I

    invoke-static {v0, v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 1394
    return-void
.end method
