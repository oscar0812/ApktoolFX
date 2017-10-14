.class Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

.field final synthetic val$toSetFinal:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    .prologue
    .line 980
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;->this$2:Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;->val$toSetFinal:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;->this$2:Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;->val$toSetFinal:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 984
    return-void
.end method
