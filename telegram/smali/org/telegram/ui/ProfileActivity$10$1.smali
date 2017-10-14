.class Lorg/telegram/ui/ProfileActivity$10$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$10;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$10;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$10;

    .prologue
    .line 959
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$10$1;->this$1:Lorg/telegram/ui/ProfileActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10$1;->this$1:Lorg/telegram/ui/ProfileActivity$10;

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-static {v1, v0}, Lorg/telegram/ui/ProfileActivity;->access$3702(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 963
    return-void
.end method
