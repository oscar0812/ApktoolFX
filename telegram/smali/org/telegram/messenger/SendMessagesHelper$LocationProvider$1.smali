.class Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$400(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$400(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onLocationAcquired(Landroid/location/Location;)V

    .line 186
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$600(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onUnableLocationAcquire()V

    goto :goto_1
.end method
