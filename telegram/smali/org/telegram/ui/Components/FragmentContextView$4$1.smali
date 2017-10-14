.class Lorg/telegram/ui/Components/FragmentContextView$4$1;
.super Ljava/lang/Object;
.source "FragmentContextView.java"

# interfaces
.implements Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/FragmentContextView$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/FragmentContextView$4;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$4$1;->this$1:Lorg/telegram/ui/Components/FragmentContextView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$4$1;->this$1:Lorg/telegram/ui/Components/FragmentContextView$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentContextView$4;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$400(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    .line 232
    return-void
.end method
