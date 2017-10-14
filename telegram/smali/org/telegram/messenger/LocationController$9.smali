.class Lorg/telegram/messenger/LocationController$9;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController;->loadLiveLocations(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$9;->this$0:Lorg/telegram/messenger/LocationController;

    iput-wide p2, p0, Lorg/telegram/messenger/LocationController$9;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 621
    if-eqz p2, :cond_0

    .line 641
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v0, Lorg/telegram/messenger/LocationController$9$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocationController$9$1;-><init>(Lorg/telegram/messenger/LocationController$9;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
