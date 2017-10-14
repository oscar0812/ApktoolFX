.class Lorg/telegram/ui/VoIPActivity$22$2;
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
    .line 1134
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$22$2;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$22$2;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 1138
    return-void
.end method
