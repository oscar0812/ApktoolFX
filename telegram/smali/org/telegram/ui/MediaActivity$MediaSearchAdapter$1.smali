.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$currentReqId:I

.field final synthetic val$max_id:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;II)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1773
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$max_id:I

    iput p3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$currentReqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1776
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    .local v2, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez p2, :cond_1

    move-object v3, p1

    .line 1778
    check-cast v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1779
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1780
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1781
    .local v1, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$max_id:I

    if-eqz v4, :cond_0

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$max_id:I

    if-le v4, v5, :cond_0

    .line 1779
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1784
    :cond_0
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1787
    .end local v0    # "a":I
    .end local v1    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_1
    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1$1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1797
    return-void
.end method
