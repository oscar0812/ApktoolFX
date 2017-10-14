.class Lorg/telegram/ui/Components/StickersArchiveAlert$2;
.super Ljava/lang/Object;
.source "StickersArchiveAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersArchiveAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersArchiveAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersArchiveAlert;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$2;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$2;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->access$100(Lorg/telegram/ui/Components/StickersArchiveAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$2;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersArchiveAlert;->access$000(Lorg/telegram/ui/Components/StickersArchiveAlert;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
