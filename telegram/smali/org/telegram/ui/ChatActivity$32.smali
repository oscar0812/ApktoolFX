.class Lorg/telegram/ui/ChatActivity$32;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spanCount"    # I

    .prologue
    .line 2324
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2326
    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getFlowItemCount()I
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$32;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2360
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 7
    .param p1, "i"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 2330
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2331
    add-int/lit8 p1, p1, 0x1

    .line 2333
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 2334
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 2335
    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 2336
    .local v2, "inlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_6

    .line 2337
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v4, v4

    :goto_0
    iput v4, v6, Lorg/telegram/ui/Components/Size;->width:F

    .line 2338
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v6, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v5, v5

    :cond_1
    iput v5, v4, Lorg/telegram/ui/Components/Size;->height:F

    .line 2339
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2340
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2341
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v4, :cond_2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_5

    .line 2342
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v5, v5

    iput v5, v4, Lorg/telegram/ui/Components/Size;->width:F

    .line 2343
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v5, v5

    iput v5, v4, Lorg/telegram/ui/Components/Size;->height:F

    .line 2352
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v1    # "b":I
    .end local v2    # "inlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    return-object v4

    .restart local v2    # "inlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_4
    move v4, v5

    .line 2337
    goto :goto_0

    .line 2339
    .restart local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v1    # "b":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2348
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v1    # "b":I
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    int-to-float v5, v5

    iput v5, v4, Lorg/telegram/ui/Components/Size;->width:F

    .line 2349
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$32;->size:Lorg/telegram/ui/Components/Size;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    int-to-float v5, v5

    iput v5, v4, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_2
.end method
