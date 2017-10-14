.class Lorg/telegram/ui/ChannelRightsEditActivity$2;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "ChannelRightsEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelRightsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelRightsEditActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 262
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$2;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method
