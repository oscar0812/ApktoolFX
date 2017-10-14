.class Lorg/telegram/ui/VoIPActivity$22$3;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$22;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$22;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$22;

    .prologue
    .line 1155
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$22$3;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$22$3;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$1802(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$22$3;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$1700(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 1160
    return-void
.end method
