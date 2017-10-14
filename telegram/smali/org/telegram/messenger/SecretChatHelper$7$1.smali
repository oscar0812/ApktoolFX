.class Lorg/telegram/messenger/SecretChatHelper$7$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$7;->run()V
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
        "Lorg/telegram/tgnet/TLRPC$Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$7;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SecretChatHelper$7;

    .prologue
    .line 1332
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$7$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1332
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper$7$1;->compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 2
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1335
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v0

    return v0
.end method
