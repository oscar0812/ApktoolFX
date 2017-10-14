.class Lorg/telegram/ui/ChannelEditActivity$7;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->getChannelParticipants(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;

.field final synthetic val$delay:I

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$7;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditActivity$7;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    iput p3, p0, Lorg/telegram/ui/ChannelEditActivity$7;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 345
    new-instance v0, Lorg/telegram/ui/ChannelEditActivity$7$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelEditActivity$7$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity$7;->val$delay:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 376
    return-void
.end method
