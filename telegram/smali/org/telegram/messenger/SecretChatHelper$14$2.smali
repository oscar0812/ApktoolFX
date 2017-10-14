.class Lorg/telegram/messenger/SecretChatHelper$14$2;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$14;

.field final synthetic val$salt:[B


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14;[B)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SecretChatHelper$14;

    .prologue
    .line 1797
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$14$2;->val$salt:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1800
    if-nez p2, :cond_0

    .line 1801
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$14$2$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$14$2;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1861
    :goto_0
    return-void

    .line 1841
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1842
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$14$2$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$14$2$2;-><init>(Lorg/telegram/messenger/SecretChatHelper$14$2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
