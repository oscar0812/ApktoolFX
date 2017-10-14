.class Lorg/telegram/messenger/FileLoadOperation$4;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->requestFileOffsets(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 563
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v6, 0x0

    .line 566
    if-eqz p2, :cond_1

    .line 567
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4, v6, v6}, Lorg/telegram/messenger/FileLoadOperation;->access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoadOperation;->access$1102(Lorg/telegram/messenger/FileLoadOperation;Z)Z

    move-object v3, p1

    .line 570
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 571
    .local v3, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 572
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 573
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$1202(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 575
    :cond_2
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 576
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    .line 577
    .local v2, "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->offset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    .end local v0    # "a":I
    .end local v2    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 581
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 582
    .local v1, "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$100(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 583
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 584
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$1500(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 585
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 586
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v4

    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 587
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto/16 :goto_0

    .line 588
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 589
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v4

    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    .line 590
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto/16 :goto_0

    .line 591
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 592
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v4

    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->disableFree:Z

    .line 593
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    goto/16 :goto_0

    .line 580
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
