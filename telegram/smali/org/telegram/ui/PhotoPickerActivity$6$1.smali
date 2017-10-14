.class Lorg/telegram/ui/PhotoPickerActivity$6$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoPickerActivity$6;

    .prologue
    .line 327
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$6$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$6$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$6$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$6$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 334
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$6$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->clearWebRecent(I)V

    .line 335
    return-void
.end method
