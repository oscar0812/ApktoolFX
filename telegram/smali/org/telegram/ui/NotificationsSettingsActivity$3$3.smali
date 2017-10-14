.class Lorg/telegram/ui/NotificationsSettingsActivity$3$3;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/NotificationsSettingsActivity$3;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;->val$position:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 407
    return-void
.end method
