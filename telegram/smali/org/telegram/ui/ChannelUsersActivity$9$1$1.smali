.class Lorg/telegram/ui/ChannelUsersActivity$9$1$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$9$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$9$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChannelUsersActivity$9$1;

    .prologue
    .line 809
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelUsersActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 809
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$9$1$1;->compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 10
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    const v9, 0xc350

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 812
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 813
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 814
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 815
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 816
    .local v1, "status2":I
    if-eqz v2, :cond_0

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_0

    .line 817
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 818
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v0, v7, v9

    .line 823
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_1

    .line 824
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 825
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v1, v7, v9

    .line 830
    :cond_1
    :goto_1
    if-lez v0, :cond_7

    if-lez v1, :cond_7

    .line 831
    if-le v0, v1, :cond_5

    .line 849
    :cond_2
    :goto_2
    return v4

    .line 820
    :cond_3
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    .line 827
    :cond_4
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 833
    :cond_5
    if-ge v0, v1, :cond_6

    move v4, v5

    .line 834
    goto :goto_2

    :cond_6
    move v4, v6

    .line 836
    goto :goto_2

    .line 837
    :cond_7
    if-gez v0, :cond_9

    if-gez v1, :cond_9

    .line 838
    if-gt v0, v1, :cond_2

    .line 840
    if-ge v0, v1, :cond_8

    move v4, v5

    .line 841
    goto :goto_2

    :cond_8
    move v4, v6

    .line 843
    goto :goto_2

    .line 844
    :cond_9
    if-gez v0, :cond_a

    if-gtz v1, :cond_b

    :cond_a
    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    :cond_b
    move v4, v5

    .line 845
    goto :goto_2

    .line 846
    :cond_c
    if-gez v1, :cond_d

    if-gtz v0, :cond_2

    :cond_d
    if-nez v1, :cond_e

    if-nez v0, :cond_2

    :cond_e
    move v4, v6

    .line 849
    goto :goto_2
.end method
