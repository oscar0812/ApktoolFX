.class Lorg/telegram/ui/GroupStickersActivity$8;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->resolveStickerSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupStickersActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$8;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 436
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1600(Lorg/telegram/ui/GroupStickersActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 439
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 440
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 441
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$8;->val$query:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$8;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/GroupStickersActivity$8$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/GroupStickersActivity$8$1;-><init>(Lorg/telegram/ui/GroupStickersActivity$8;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/GroupStickersActivity;->access$1702(Lorg/telegram/ui/GroupStickersActivity;I)I

    goto :goto_0
.end method
