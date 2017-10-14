.class Lorg/telegram/ui/IdenticonActivity$5;
.super Ljava/lang/Object;
.source "IdenticonActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 294
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$500(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return v6

    .line 300
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$600(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 301
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 302
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 304
    .local v1, "rotation":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-ne v1, v6, :cond_2

    .line 305
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$700(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 310
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$1100(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$800(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v4}, Lorg/telegram/ui/IdenticonActivity;->access$900(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v5}, Lorg/telegram/ui/IdenticonActivity;->access$1000(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$700(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method
