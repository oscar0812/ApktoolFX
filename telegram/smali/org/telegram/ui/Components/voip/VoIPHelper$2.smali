.class final Lorg/telegram/ui/Components/voip/VoIPHelper$2;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper;->initiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPHelper$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/VoIPHelper$2$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPHelper$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(Ljava/lang/Runnable;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->access$000(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    goto :goto_0
.end method
