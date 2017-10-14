.class final Lorg/telegram/ui/Components/AlertsCreator$10;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createLocationUpdateDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/telegram/messenger/MessagesStorage$IntCallback;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([ILorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$selected:[I

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$callback:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$selected:[I

    aget v1, v1, v2

    if-nez v1, :cond_0

    .line 722
    const/16 v0, 0x384

    .line 728
    .local v0, "time":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$callback:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    .line 729
    return-void

    .line 723
    .end local v0    # "time":I
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$selected:[I

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 724
    const/16 v0, 0xe10

    .restart local v0    # "time":I
    goto :goto_0

    .line 726
    .end local v0    # "time":I
    :cond_1
    const/16 v0, 0x7080

    .restart local v0    # "time":I
    goto :goto_0
.end method
