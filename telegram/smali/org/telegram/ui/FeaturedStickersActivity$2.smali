.class Lorg/telegram/ui/FeaturedStickersActivity$2;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "FeaturedStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FeaturedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FeaturedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/FeaturedStickersActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$2;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method
