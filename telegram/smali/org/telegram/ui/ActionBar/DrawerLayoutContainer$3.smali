.class Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawerLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .prologue
    .line 203
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->access$100(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V

    .line 207
    return-void
.end method
