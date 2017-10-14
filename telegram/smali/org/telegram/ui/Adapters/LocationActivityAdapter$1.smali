.class Lorg/telegram/ui/Adapters/LocationActivityAdapter$1;
.super Ljava/lang/Object;
.source "LocationActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setPulledUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/LocationActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/LocationActivityAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter$1;->this$0:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter$1;->this$0:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter$1;->this$0:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->access$000(Lorg/telegram/ui/Adapters/LocationActivityAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->notifyItemChanged(I)V

    .line 181
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
