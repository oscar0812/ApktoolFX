.class Lorg/telegram/ui/ConvertGroupActivity$2$1;
.super Ljava/lang/Object;
.source "ConvertGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ConvertGroupActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ConvertGroupActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ConvertGroupActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ConvertGroupActivity$2;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$2$1;->this$1:Lorg/telegram/ui/ConvertGroupActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 106
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$2$1;->this$1:Lorg/telegram/ui/ConvertGroupActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ConvertGroupActivity$2;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ConvertGroupActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$2$1;->this$1:Lorg/telegram/ui/ConvertGroupActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/ConvertGroupActivity$2;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$100(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;I)V

    .line 107
    return-void
.end method
