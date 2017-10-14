.class Lorg/telegram/ui/ChangeBioActivity$6;
.super Ljava/lang/Object;
.source "ChangeBioActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeBioActivity;->saveName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeBioActivity;

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

.field final synthetic val$userFull:Lorg/telegram/tgnet/TLRPC$TL_userFull;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeBioActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_userFull;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeBioActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/telegram/ui/ChangeBioActivity$6;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangeBioActivity$6;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/ChangeBioActivity$6;->val$userFull:Lorg/telegram/tgnet/TLRPC$TL_userFull;

    iput-object p4, p0, Lorg/telegram/ui/ChangeBioActivity$6;->val$newName:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/ChangeBioActivity$6;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 220
    if-nez p2, :cond_0

    move-object v0, p1

    .line 221
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 222
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/ui/ChangeBioActivity$6$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChangeBioActivity$6$1;-><init>(Lorg/telegram/ui/ChangeBioActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 248
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v1, Lorg/telegram/ui/ChangeBioActivity$6$2;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ChangeBioActivity$6$2;-><init>(Lorg/telegram/ui/ChangeBioActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
