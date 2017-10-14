.class Lorg/telegram/messenger/SecretChatHelper$6$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SecretChatHelper$6;

    .prologue
    .line 1054
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$6$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1057
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$6$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$6$1$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$6$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method
