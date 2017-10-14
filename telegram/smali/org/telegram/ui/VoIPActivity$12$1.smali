.class Lorg/telegram/ui/VoIPActivity$12$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$12;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$12;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$12;

    .prologue
    .line 650
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$12$1;->this$1:Lorg/telegram/ui/VoIPActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$12$1;->this$1:Lorg/telegram/ui/VoIPActivity$12;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$1802(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$12$1;->this$1:Lorg/telegram/ui/VoIPActivity$12;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$1700(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 655
    return-void
.end method
