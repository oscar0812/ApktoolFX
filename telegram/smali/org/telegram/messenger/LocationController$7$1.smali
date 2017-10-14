.class Lorg/telegram/messenger/LocationController$7$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocationController$7;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocationController$7;

    .prologue
    .line 477
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$7$1;->this$1:Lorg/telegram/messenger/LocationController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 480
    if-eqz p2, :cond_0

    .line 484
    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :goto_0
    return-void

    .line 483
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_0
.end method
