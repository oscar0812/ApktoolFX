.class Lorg/telegram/messenger/ImageLoader$2$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$2;->fileDidUploaded(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$2;

.field final synthetic val$inputEncryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field final synthetic val$inputFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field final synthetic val$iv:[B

.field final synthetic val$key:[B

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$totalFileSize:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V
    .locals 1
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$2;

    .prologue
    .line 1191
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$2$2;->this$1:Lorg/telegram/messenger/ImageLoader$2;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$location:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$inputFile:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$inputEncryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$key:[B

    iput-object p6, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$iv:[B

    iput-wide p7, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$totalFileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1194
    new-instance v0, Lorg/telegram/messenger/ImageLoader$2$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$2$2$1;-><init>(Lorg/telegram/messenger/ImageLoader$2$2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1200
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$2$2;->this$1:Lorg/telegram/messenger/ImageLoader$2;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$2$2;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    return-void
.end method
