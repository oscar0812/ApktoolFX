.class Lorg/telegram/ui/ChangePhoneActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangePhoneActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$1;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$1;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity;->access$000(Lorg/telegram/ui/ChangePhoneActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$1;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangePhoneActivity;->access$100(Lorg/telegram/ui/ChangePhoneActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onNextPressed()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$1;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangePhoneActivity;->finishFragment()V

    goto :goto_0
.end method
