.class Lorg/telegram/ui/Components/voip/VoIPHelper$2$1;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPHelper$2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/voip/VoIPHelper$2;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPHelper$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$2$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$2;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPHelper$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->access$000(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    .line 110
    return-void
.end method
