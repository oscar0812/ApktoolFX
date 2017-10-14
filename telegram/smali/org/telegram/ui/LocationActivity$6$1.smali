.class Lorg/telegram/ui/LocationActivity$6$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity$6;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LocationActivity$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LocationActivity$6;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$6$1;->this$1:Lorg/telegram/ui/LocationActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$6$1;->this$1:Lorg/telegram/ui/LocationActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1200(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$6$1;->this$1:Lorg/telegram/ui/LocationActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1500(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V

    .line 415
    return-void
.end method
