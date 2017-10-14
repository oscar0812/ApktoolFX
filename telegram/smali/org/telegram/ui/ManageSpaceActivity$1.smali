.class Lorg/telegram/ui/ManageSpaceActivity$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageSpaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageSpaceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ManageSpaceActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 98
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 99
    .local v5, "y":F
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 100
    .local v1, "location":[I
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLocationOnScreen([I)V

    .line 101
    aget v2, v1, v8

    .line 102
    .local v2, "viewX":I
    aget v3, v1, v7

    .line 104
    .local v3, "viewY":I
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    int-to-float v6, v2

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    int-to-float v6, v3

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    :cond_0
    move v6, v8

    .line 117
    .end local v1    # "location":[I
    .end local v2    # "viewX":I
    .end local v3    # "viewY":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :goto_0
    return v6

    .line 107
    .restart local v1    # "location":[I
    .restart local v2    # "viewX":I
    .restart local v3    # "viewY":I
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 108
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_2

    .line 109
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .end local v0    # "a":I
    :cond_3
    move v6, v7

    .line 114
    goto :goto_0

    .end local v1    # "location":[I
    .end local v2    # "viewX":I
    .end local v3    # "viewY":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_4
    move v6, v8

    .line 117
    goto :goto_0
.end method
