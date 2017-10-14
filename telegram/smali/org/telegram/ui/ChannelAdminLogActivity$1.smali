.class Lorg/telegram/ui/ChannelAdminLogActivity$1;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelAdminLogActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 275
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    .line 277
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$1;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 327
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;
    :cond_0
    return-void
.end method
