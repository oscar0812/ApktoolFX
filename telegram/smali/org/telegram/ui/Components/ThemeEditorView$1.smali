.class Lorg/telegram/ui/Components/ThemeEditorView$1;
.super Landroid/widget/FrameLayout;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 898
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 912
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 913
    .local v9, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_6

    .line 914
    iput v8, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startX:F

    .line 915
    iput v9, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startY:F

    .line 952
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->dragging:Z

    if-eqz v10, :cond_5

    .line 953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    .line 954
    iget v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startX:F

    sub-float v2, v8, v10

    .line 955
    .local v2, "dx":F
    iget v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startY:F

    sub-float v3, v9, v10

    .line 956
    .local v3, "dy":F
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    float-to-int v11, v11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 957
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    float-to-int v11, v11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 958
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2800(Lorg/telegram/ui/Components/ThemeEditorView;)I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 959
    .local v7, "maxDiff":I
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v11, v7

    if-ge v10, v11, :cond_9

    .line 960
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    neg-int v11, v7

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 964
    :cond_1
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 965
    .local v1, "alpha":F
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v10, :cond_a

    .line 966
    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    int-to-float v12, v7

    div-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    .line 970
    :cond_2
    :goto_2
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v10

    cmpl-float v10, v10, v1

    if-eqz v10, :cond_3

    .line 971
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 973
    :cond_3
    const/4 v7, 0x0

    .line 974
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    neg-int v11, v7

    if-ge v10, v11, :cond_b

    .line 975
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    neg-int v11, v7

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 979
    :cond_4
    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$3000(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iput v8, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startX:F

    .line 981
    iput v9, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startY:F

    .line 987
    .end local v1    # "alpha":F
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "maxDiff":I
    :cond_5
    :goto_4
    const/4 v10, 0x1

    return v10

    .line 916
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    iget-boolean v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->dragging:Z

    if-nez v10, :cond_8

    .line 917
    iget v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startX:F

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3e99999a    # 0.3f

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v11

    cmpl-float v10, v10, v11

    if-gez v10, :cond_7

    iget v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startY:F

    sub-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3e99999a    # 0.3f

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_0

    .line 918
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->dragging:Z

    .line 919
    iput v8, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startX:F

    .line 920
    iput v9, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->startY:F

    goto/16 :goto_0

    .line 922
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 923
    iget-boolean v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->dragging:Z

    if-nez v10, :cond_0

    .line 924
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-result-object v10

    if-nez v10, :cond_0

    .line 925
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2200(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    .line 926
    .local v6, "launchActivity":Lorg/telegram/ui/LaunchActivity;
    invoke-virtual {v6}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    .line 927
    .local v0, "actionBarLayout":Lorg/telegram/ui/ActionBar/ActionBarLayout;
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 928
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 929
    .local v4, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-result-object v5

    .line 930
    .local v5, "items":[Lorg/telegram/ui/ActionBar/ThemeDescription;
    if-eqz v5, :cond_0

    .line 931
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    new-instance v11, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    iget-object v13, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2200(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v11, v12, v13, v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;[Lorg/telegram/ui/ActionBar/ThemeDescription;)V

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2402(Lorg/telegram/ui/Components/ThemeEditorView;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 932
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Components/ThemeEditorView$1$1;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Components/ThemeEditorView$1$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$1;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 938
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Components/ThemeEditorView$1$2;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Components/ThemeEditorView$1$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$1;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 945
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->show()V

    .line 946
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2600(Lorg/telegram/ui/Components/ThemeEditorView;)V

    goto/16 :goto_0

    .line 961
    .end local v0    # "actionBarLayout":Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .end local v4    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v5    # "items":[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .end local v6    # "launchActivity":Lorg/telegram/ui/LaunchActivity;
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "maxDiff":I
    :cond_9
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    if-le v10, v11, :cond_1

    .line 962
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_1

    .line 967
    .restart local v1    # "alpha":F
    :cond_a
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_2

    .line 968
    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    int-to-float v12, v7

    div-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    sub-float v1, v10, v11

    goto/16 :goto_2

    .line 976
    :cond_b
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    if-le v10, v11, :cond_4

    .line 977
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 982
    .end local v1    # "alpha":F
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "maxDiff":I
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 983
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->dragging:Z

    .line 984
    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView;->access$3100(Lorg/telegram/ui/Components/ThemeEditorView;)V

    goto/16 :goto_4
.end method
