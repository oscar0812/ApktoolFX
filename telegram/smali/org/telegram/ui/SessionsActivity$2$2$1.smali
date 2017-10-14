.class Lorg/telegram/ui/SessionsActivity$2$2$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/SessionsActivity$2$2;

.field final synthetic val$authorization:Lorg/telegram/tgnet/TLRPC$TL_authorization;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2$2;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/SessionsActivity$2$2;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$2$2$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$2$2$1;->val$authorization:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 217
    new-instance v0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/SessionsActivity$2$2$1$1;-><init>(Lorg/telegram/ui/SessionsActivity$2$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method
