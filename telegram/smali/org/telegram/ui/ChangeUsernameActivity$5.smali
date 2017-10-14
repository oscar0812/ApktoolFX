.class Lorg/telegram/ui/ChangeUsernameActivity$5;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 338
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;-><init>()V

    .line 339
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$5;->val$name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;->username:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeUsernameActivity$5$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$5;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$802(Lorg/telegram/ui/ChangeUsernameActivity;I)I

    .line 364
    return-void
.end method
