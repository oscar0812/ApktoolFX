.class Lorg/telegram/ui/StickerPreviewViewer$1$2;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickerPreviewViewer$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/StickerPreviewViewer$1;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$2;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$2;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$502(Lorg/telegram/ui/StickerPreviewViewer;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$2;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 148
    return-void
.end method
