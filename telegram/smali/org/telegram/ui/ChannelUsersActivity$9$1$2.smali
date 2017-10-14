.class Lorg/telegram/ui/ChannelUsersActivity$9$1$2;
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
    .line 853
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 853
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$9$1$2;->compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 3
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 856
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$9$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2, p1}, Lorg/telegram/ui/ChannelUsersActivity;->access$2300(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    .line 857
    .local v0, "type1":I
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$9$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2, p2}, Lorg/telegram/ui/ChannelUsersActivity;->access$2300(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v1

    .line 858
    .local v1, "type2":I
    if-le v0, v1, :cond_0

    .line 859
    const/4 v2, 0x1

    .line 863
    :goto_0
    return v2

    .line 860
    :cond_0
    if-ge v0, v1, :cond_1

    .line 861
    const/4 v2, -0x1

    goto :goto_0

    .line 863
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
