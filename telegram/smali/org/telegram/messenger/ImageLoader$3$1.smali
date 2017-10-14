.class Lorg/telegram/messenger/ImageLoader$3$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$3;

    .prologue
    .line 1270
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$3$1;->this$1:Lorg/telegram/messenger/ImageLoader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$3$1;->this$1:Lorg/telegram/messenger/ImageLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$3;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 1273
    return-void
.end method
