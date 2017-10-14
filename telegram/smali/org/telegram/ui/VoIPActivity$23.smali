.class Lorg/telegram/ui/VoIPActivity$23;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onSignalBarsCountChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 1207
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$23;->this$0:Lorg/telegram/ui/VoIPActivity;

    iput p2, p0, Lorg/telegram/ui/VoIPActivity$23;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$23;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget v1, p0, Lorg/telegram/ui/VoIPActivity$23;->val$count:I

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$4102(Lorg/telegram/ui/VoIPActivity;I)I

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$23;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$4000(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1212
    return-void
.end method
