.class Lorg/telegram/messenger/ImageLoader$6;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$newKey:Ljava/lang/String;

.field final synthetic val$newLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$oldKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1623
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$6;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$6;->val$oldKey:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$6;->val$newKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$6;->val$newLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$6;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$6;->val$oldKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$6;->val$newKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$6;->val$newLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$3100(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    .line 1627
    return-void
.end method
