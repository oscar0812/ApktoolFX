.class Lorg/telegram/messenger/LocationController$8$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocationController$8;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocationController$8;

    .prologue
    .line 526
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$8$1;->this$1:Lorg/telegram/messenger/LocationController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 529
    if-eqz p2, :cond_0

    .line 533
    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :goto_0
    return-void

    .line 532
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
