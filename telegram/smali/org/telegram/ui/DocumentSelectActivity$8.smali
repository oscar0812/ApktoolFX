.class Lorg/telegram/ui/DocumentSelectActivity$8;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 418
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$8;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$8;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$8;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2500(Lorg/telegram/ui/DocumentSelectActivity;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method
