.class Lorg/telegram/ui/Components/StickersAlert$1$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickersAlert$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/StickersAlert$1;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0, v11}, Lorg/telegram/ui/Components/StickersAlert;->access$002(Lorg/telegram/ui/Components/StickersAlert;I)I

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_3

    .line 142
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 143
    .local v9, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 165
    .end local v9    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :goto_0
    return-void

    .line 145
    .restart local v9    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :cond_0
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 147
    .local v8, "set":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->access$102(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$200(Lorg/telegram/ui/Components/StickersAlert;)V

    goto :goto_0

    .line 152
    .end local v8    # "set":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->access$302(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_1
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$500(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v11

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 162
    .end local v7    # "a":I
    .end local v9    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto/16 :goto_0
.end method
