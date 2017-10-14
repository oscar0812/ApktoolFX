.class final Lorg/telegram/messenger/browser/Browser$2;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$allowCustom:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>([Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/net/Uri;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/messenger/browser/Browser$2;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/messenger/browser/Browser$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/messenger/browser/Browser$2;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lorg/telegram/messenger/browser/Browser$2;->val$allowCustom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 186
    new-instance v0, Lorg/telegram/messenger/browser/Browser$2$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/browser/Browser$2$1;-><init>(Lorg/telegram/messenger/browser/Browser$2;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method
