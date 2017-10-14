.class Lorg/telegram/ui/CancelAccountDeletionActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CancelAccountDeletionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CancelAccountDeletionActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$1;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$1;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$000(Lorg/telegram/ui/CancelAccountDeletionActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$1;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-static {v1}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$100(Lorg/telegram/ui/CancelAccountDeletionActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onNextPressed()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$1;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity;->finishFragment()V

    goto :goto_0
.end method
