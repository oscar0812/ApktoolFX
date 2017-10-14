.class Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/StickersActivity$ListAdapter$2;

.field final synthetic val$options:[I

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter$2;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    .prologue
    .line 456
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;->this$2:Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;->val$options:[I

    iput-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;->this$2:Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;->val$options:[I

    aget v1, v1, p2

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$1300(Lorg/telegram/ui/StickersActivity$ListAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 460
    return-void
.end method
