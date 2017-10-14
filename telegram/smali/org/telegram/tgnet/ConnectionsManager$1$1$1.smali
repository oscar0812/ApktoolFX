.class Lorg/telegram/tgnet/ConnectionsManager$1$1$1;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager$1$1;->run(IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/tgnet/ConnectionsManager$1$1;

.field final synthetic val$finalError:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$finalResponse:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$1$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/tgnet/ConnectionsManager$1$1;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->this$2:Lorg/telegram/tgnet/ConnectionsManager$1$1;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->val$finalResponse:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->val$finalError:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->this$2:Lorg/telegram/tgnet/ConnectionsManager$1$1;

    iget-object v0, v0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v0, v0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->val$finalResponse:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->val$finalError:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-interface {v0, v1, v2}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 183
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->val$finalResponse:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;->val$finalResponse:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    .line 186
    :cond_0
    return-void
.end method
