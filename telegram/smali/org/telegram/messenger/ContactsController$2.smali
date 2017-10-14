.class Lorg/telegram/messenger/ContactsController$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->checkInviteText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$2;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 195
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    .line 196
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Lorg/telegram/messenger/ContactsController$2$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ContactsController$2$1;-><init>(Lorg/telegram/messenger/ContactsController$2;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 210
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;
    :cond_0
    return-void
.end method
