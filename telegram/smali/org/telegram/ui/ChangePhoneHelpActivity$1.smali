.class Lorg/telegram/ui/ChangePhoneHelpActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangePhoneHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneHelpActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneHelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangePhoneHelpActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$1;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 62
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$1;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangePhoneHelpActivity;->finishFragment()V

    .line 65
    :cond_0
    return-void
.end method
