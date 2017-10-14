.class Lorg/telegram/ui/SetAdminsActivity$4;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->updateChatParticipants()V
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
        "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$4;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 292
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/SetAdminsActivity$4;->compare(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I
    .locals 11
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 295
    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$4;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v9, p1}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v2

    .line 296
    .local v2, "type1":I
    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$4;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v9, p2}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v3

    .line 297
    .local v3, "type2":I
    if-le v2, v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v6

    .line 299
    :cond_1
    if-ge v2, v3, :cond_2

    move v6, v7

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    if-ne v2, v3, :cond_d

    .line 302
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 303
    .local v4, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 304
    .local v5, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 305
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 306
    .local v1, "status2":I
    if-eqz v4, :cond_3

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_3

    .line 307
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 309
    :cond_3
    if-eqz v5, :cond_4

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_4

    .line 310
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 312
    :cond_4
    if-lez v0, :cond_6

    if-lez v1, :cond_6

    .line 313
    if-gt v0, v1, :cond_0

    .line 315
    if-ge v0, v1, :cond_5

    move v6, v7

    .line 316
    goto :goto_0

    :cond_5
    move v6, v8

    .line 318
    goto :goto_0

    .line 319
    :cond_6
    if-gez v0, :cond_8

    if-gez v1, :cond_8

    .line 320
    if-gt v0, v1, :cond_0

    .line 322
    if-ge v0, v1, :cond_7

    move v6, v7

    .line 323
    goto :goto_0

    :cond_7
    move v6, v8

    .line 325
    goto :goto_0

    .line 326
    :cond_8
    if-gez v0, :cond_9

    if-gtz v1, :cond_a

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    :cond_a
    move v6, v7

    .line 327
    goto :goto_0

    .line 328
    :cond_b
    if-gez v1, :cond_c

    if-gtz v0, :cond_0

    :cond_c
    if-nez v1, :cond_d

    if-nez v0, :cond_0

    .end local v0    # "status1":I
    .end local v1    # "status2":I
    .end local v4    # "user1":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d
    move v6, v8

    .line 332
    goto :goto_0
.end method
