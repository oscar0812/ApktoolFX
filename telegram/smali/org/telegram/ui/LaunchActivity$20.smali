.class Lorg/telegram/ui/LaunchActivity$20;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2198
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$20;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$20;->val$first:Z

    iput-boolean p4, p0, Lorg/telegram/ui/LaunchActivity$20;->val$schedule:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2201
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$20;->val$contactHashMap:Ljava/util/HashMap;

    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$20;->val$first:Z

    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity$20;->val$schedule:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ContactsController;->syncPhoneBookByAlert(Ljava/util/HashMap;ZZZ)V

    .line 2202
    return-void
.end method
