.class Lorg/telegram/messenger/FileLoadOperation$6$1;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/FileLoadOperation$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/FileLoadOperation$6;

    .prologue
    .line 923
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v5, 0x0

    .line 926
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$2402(Lorg/telegram/messenger/FileLoadOperation;Z)Z

    .line 927
    if-nez p2, :cond_2

    move-object v2, p1

    .line 928
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 929
    .local v2, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 930
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 931
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1202(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 933
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 934
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    .line 935
    .local v1, "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    .end local v0    # "a":I
    .end local v1    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation;->access$400(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 948
    .end local v2    # "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    :goto_1
    return-void

    .line 940
    :cond_2
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v4, "FILE_TOKEN_INVALID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v4, "REQUEST_TOKEN_INVALID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 941
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$1802(Lorg/telegram/messenger/FileLoadOperation;Z)Z

    .line 942
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v4, v4, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoadOperation;->access$1900(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 943
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation;->access$400(Lorg/telegram/messenger/FileLoadOperation;)V

    goto :goto_1

    .line 945
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation$6$1;->this$1:Lorg/telegram/messenger/FileLoadOperation$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v3, v5, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V

    goto :goto_1
.end method
