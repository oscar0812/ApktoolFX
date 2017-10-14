.class Lorg/telegram/messenger/FileLoader$3;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$encrypted:Z

.field final synthetic val$estimatedSize:I

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$small:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iput p4, p0, Lorg/telegram/messenger/FileLoader$3;->val$estimatedSize:I

    iput p5, p0, Lorg/telegram/messenger/FileLoader$3;->val$type:I

    iput-boolean p6, p0, Lorg/telegram/messenger/FileLoader$3;->val$small:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 148
    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/FileLoader$3;->val$estimatedSize:I

    .line 158
    .local v0, "esimated":I
    if-eqz v0, :cond_3

    .line 159
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 160
    .local v1, "finalSize":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 161
    const/4 v0, 0x0

    .line 162
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v1    # "finalSize":Ljava/lang/Long;
    :cond_3
    new-instance v2, Lorg/telegram/messenger/FileUploadOperation;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    iget v5, p0, Lorg/telegram/messenger/FileLoader$3;->val$type:I

    invoke-direct {v2, v3, v4, v0, v5}, Lorg/telegram/messenger/FileUploadOperation;-><init>(Ljava/lang/String;ZII)V

    .line 166
    .local v2, "operation":Lorg/telegram/messenger/FileUploadOperation;
    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    if-eqz v3, :cond_4

    .line 167
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_1
    new-instance v3, Lorg/telegram/messenger/FileLoader$3$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/FileLoader$3$1;-><init>(Lorg/telegram/messenger/FileLoader$3;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileUploadOperation;->setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V

    .line 251
    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$small:Z

    if-eqz v3, :cond_6

    .line 252
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$500(Lorg/telegram/messenger/FileLoader;)I

    move-result v3

    if-ge v3, v6, :cond_5

    .line 253
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$508(Lorg/telegram/messenger/FileLoader;)I

    .line 254
    invoke-virtual {v2}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_0

    .line 169
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 256
    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$600(Lorg/telegram/messenger/FileLoader;)I

    move-result v3

    if-ge v3, v6, :cond_7

    .line 260
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$608(Lorg/telegram/messenger/FileLoader;)I

    .line 261
    invoke-virtual {v2}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto/16 :goto_0

    .line 263
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
