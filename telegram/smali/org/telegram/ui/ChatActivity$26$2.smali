.class Lorg/telegram/ui/ChatActivity$26$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$26;->loadLastUnreadMention()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$26;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$26;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$26;

    .prologue
    .line 2124
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2127
    new-instance v0, Lorg/telegram/ui/ChatActivity$26$2$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$26$2$1;-><init>(Lorg/telegram/ui/ChatActivity$26$2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2161
    return-void
.end method
