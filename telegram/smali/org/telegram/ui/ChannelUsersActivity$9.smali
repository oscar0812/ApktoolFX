.class Lorg/telegram/ui/ChannelUsersActivity$9;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;

.field final synthetic val$byEndReached:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 762
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChannelUsersActivity$9;->val$byEndReached:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 765
    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$9$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelUsersActivity$9$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method
