.class Lorg/telegram/messenger/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1317
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$4;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1320
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$4;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Ljava/util/HashMap;

    move-result-object v0

    .line 1321
    .local v0, "paths":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    new-instance v1, Lorg/telegram/messenger/ImageLoader$4$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader$4$1;-><init>(Lorg/telegram/messenger/ImageLoader$4;Ljava/util/HashMap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1327
    return-void
.end method
