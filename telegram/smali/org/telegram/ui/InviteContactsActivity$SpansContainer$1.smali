.class Lorg/telegram/ui/InviteContactsActivity$SpansContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InviteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity$SpansContainer;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-static {v0, v1}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->access$602(Lorg/telegram/ui/InviteContactsActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-static {v0, v1}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->access$702(Lorg/telegram/ui/InviteContactsActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->access$802(Lorg/telegram/ui/InviteContactsActivity$SpansContainer;Z)Z

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 228
    return-void
.end method
