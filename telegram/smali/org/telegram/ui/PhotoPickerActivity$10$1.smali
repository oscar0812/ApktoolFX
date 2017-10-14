.class Lorg/telegram/ui/PhotoPickerActivity$10$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$10;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoPickerActivity$10;

    .prologue
    .line 741
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 744
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->val$token:I

    iget-object v12, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v12}, Lorg/telegram/ui/PhotoPickerActivity;->access$2300(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 802
    :goto_0
    return-void

    .line 747
    :cond_0
    const/4 v2, 0x0

    .line 748
    .local v2, "addedCount":I
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v11, :cond_8

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, "added":Z
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;

    .line 751
    .local v7, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->next_offset:I

    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoPickerActivity;->access$1202(Lorg/telegram/ui/PhotoPickerActivity;I)I

    .line 752
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_7

    .line 753
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$FoundGif;

    .line 754
    .local v6, "gif":Lorg/telegram/tgnet/TLRPC$FoundGif;
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 752
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 757
    :cond_1
    const/4 v1, 0x1

    .line 758
    new-instance v5, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 759
    .local v5, "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 760
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_6

    .line 761
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 762
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 763
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v11, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v11, :cond_2

    instance-of v11, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v11, :cond_5

    .line 764
    :cond_2
    iget v11, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 765
    iget v11, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 773
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v4    # "b":I
    :cond_3
    :goto_4
    iput v10, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 774
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->content_url:Ljava/lang/String;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 775
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->thumb_url:Ljava/lang/String;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 776
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/PhotoPickerActivity$10;->val$query:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 777
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 778
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_4

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_4

    .line 779
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v12, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v12}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v12

    invoke-static {v11, v12, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 780
    .local v8, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v8, :cond_4

    .line 781
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v8, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 784
    .end local v8    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    iput v9, v5, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 785
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    add-int/lit8 v2, v2, 0x1

    .line 787
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 761
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v4    # "b":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 770
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v4    # "b":I
    :cond_6
    iget v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->w:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 771
    iget v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->h:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_4

    .line 789
    .end local v5    # "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v6    # "gif":Lorg/telegram/tgnet/TLRPC$FoundGif;
    :cond_7
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v1, :cond_c

    :goto_5
    invoke-static {v11, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 791
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9, v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 792
    if-eqz v2, :cond_d

    .line 793
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10, v2}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRangeInserted(II)V

    .line 797
    :cond_9
    :goto_6
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    .line 798
    :cond_b
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto/16 :goto_0

    .restart local v0    # "a":I
    .restart local v1    # "added":Z
    .restart local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_c
    move v9, v10

    .line 789
    goto :goto_5

    .line 794
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_d
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 795
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    goto :goto_6

    .line 800
    :cond_e
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_0
.end method
