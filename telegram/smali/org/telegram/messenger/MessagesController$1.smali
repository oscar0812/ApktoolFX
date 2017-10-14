.class Lorg/telegram/messenger/MessagesController$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 206
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$1;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 206
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 8
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 209
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v6, :cond_1

    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v6, :cond_2

    move v3, v4

    .line 212
    goto :goto_0

    .line 213
    :cond_2
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_4

    .line 214
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-lt v6, v7, :cond_0

    .line 216
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v3, v6, :cond_3

    move v3, v4

    .line 217
    goto :goto_0

    :cond_3
    move v3, v5

    .line 219
    goto :goto_0

    .line 222
    :cond_4
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 223
    .local v2, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-eqz v2, :cond_5

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v6, v7, :cond_5

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 224
    .local v0, "date1":I
    :goto_1
    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_6

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v6, v7, :cond_6

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 226
    .local v1, "date2":I
    :goto_2
    if-lt v0, v1, :cond_0

    .line 228
    if-le v0, v1, :cond_7

    move v3, v4

    .line 229
    goto :goto_0

    .line 223
    .end local v0    # "date1":I
    .end local v1    # "date2":I
    :cond_5
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_1

    .line 225
    .restart local v0    # "date1":I
    :cond_6
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_2

    .restart local v1    # "date2":I
    :cond_7
    move v3, v5

    .line 231
    goto :goto_0
.end method
