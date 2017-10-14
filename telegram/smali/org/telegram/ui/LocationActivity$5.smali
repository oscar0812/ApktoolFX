.class Lorg/telegram/ui/LocationActivity$5;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 388
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$5;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method
