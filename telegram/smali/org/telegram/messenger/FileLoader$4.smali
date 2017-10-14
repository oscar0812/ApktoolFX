.class Lorg/telegram/messenger/FileLoader$4;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$locationExt:Ljava/lang/String;

.field final synthetic val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$4;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$4;->val$locationExt:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$4;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$4;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$4;->val$locationExt:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 321
    :cond_1
    :goto_1
    return-void

    .line 296
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_3

    .line 297
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 305
    .local v1, "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_1

    .line 306
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 307
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 308
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$1110(Lorg/telegram/messenger/FileLoader;)I

    .line 319
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->cancel()V

    goto :goto_1

    .line 310
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_9

    .line 311
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 312
    :cond_8
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$1310(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2

    .line 315
    :cond_9
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 316
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$4;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$1510(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2
.end method
