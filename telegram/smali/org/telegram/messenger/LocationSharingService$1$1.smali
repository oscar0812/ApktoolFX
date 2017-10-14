.class Lorg/telegram/messenger/LocationSharingService$1$1;
.super Ljava/lang/Object;
.source "LocationSharingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationSharingService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocationSharingService$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationSharingService$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocationSharingService$1;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/LocationSharingService$1$1;->this$1:Lorg/telegram/messenger/LocationSharingService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocationController;->update()V

    .line 46
    return-void
.end method
