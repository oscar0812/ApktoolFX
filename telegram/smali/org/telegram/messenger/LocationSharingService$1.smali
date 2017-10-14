.class Lorg/telegram/messenger/LocationSharingService$1;
.super Ljava/lang/Object;
.source "LocationSharingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationSharingService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationSharingService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationSharingService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationSharingService;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/LocationSharingService$1;->this$0:Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/messenger/LocationSharingService$1;->this$0:Lorg/telegram/messenger/LocationSharingService;

    invoke-static {v0}, Lorg/telegram/messenger/LocationSharingService;->access$100(Lorg/telegram/messenger/LocationSharingService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/LocationSharingService$1;->this$0:Lorg/telegram/messenger/LocationSharingService;

    invoke-static {v1}, Lorg/telegram/messenger/LocationSharingService;->access$000(Lorg/telegram/messenger/LocationSharingService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationSharingService$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationSharingService$1$1;-><init>(Lorg/telegram/messenger/LocationSharingService$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method
