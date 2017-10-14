.class Lorg/telegram/ui/ProfileActivity$12$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$12;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$12;

    .prologue
    .line 985
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$12$1;->this$1:Lorg/telegram/ui/ProfileActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V
    .locals 1
    .param p1, "rights"    # I
    .param p2, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    .line 988
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12$1;->this$1:Lorg/telegram/ui/ProfileActivity$12;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    .line 989
    return-void
.end method
