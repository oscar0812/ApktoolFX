.class Lorg/telegram/ui/ArchivedStickersActivity$4$1;
.super Ljava/lang/Object;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArchivedStickersActivity$4;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_1

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;

    .line 218
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v4, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v5, 0xf

    if-eq v1, v5, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$402(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ArchivedStickersActivity;->access$302(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ArchivedStickersActivity;->access$802(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z

    .line 222
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$1000(Lorg/telegram/ui/ArchivedStickersActivity;)V

    .line 227
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;
    :cond_1
    return-void

    .restart local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;
    :cond_2
    move v1, v3

    .line 219
    goto :goto_0
.end method
