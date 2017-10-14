.class final Lorg/telegram/ui/Components/voip/VoIPHelper$4;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$4;->val$onFinish:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$4;->val$onFinish:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$4;->val$onFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 163
    :cond_0
    return-void
.end method
