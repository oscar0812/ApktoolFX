.class Lorg/telegram/ui/Components/SharingLocationsAlert$4;
.super Ljava/lang/Object;
.source "SharingLocationsAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharingLocationsAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$4;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 162
    add-int/lit8 p2, p2, -0x1

    .line 163
    if-ltz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$4;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$600(Lorg/telegram/ui/Components/SharingLocationsAlert;)Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;->didSelectLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$4;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->dismiss()V

    goto :goto_0
.end method
