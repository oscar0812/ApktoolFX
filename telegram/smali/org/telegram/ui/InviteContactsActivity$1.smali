.class Lorg/telegram/ui/InviteContactsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "InviteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/InviteContactsActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$1;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 328
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$1;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/InviteContactsActivity;->finishFragment()V

    .line 331
    :cond_0
    return-void
.end method
