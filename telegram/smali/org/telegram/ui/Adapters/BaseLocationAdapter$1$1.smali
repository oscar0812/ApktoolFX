.class Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;
.super Ljava/lang/Object;
.source "BaseLocationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$102(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;)Landroid/location/Location;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->val$coordinate:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V

    .line 89
    return-void
.end method
