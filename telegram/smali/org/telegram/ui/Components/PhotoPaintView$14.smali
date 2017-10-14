.class Lorg/telegram/ui/Components/PhotoPaintView$14;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickerMasksView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 787
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1300(Lorg/telegram/ui/Components/PhotoPaintView;)V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 792
    return-void
.end method

.method public onTypeChanged()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method
