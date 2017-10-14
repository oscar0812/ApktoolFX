.class Lorg/telegram/ui/LaunchActivity$10;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$botChat:Ljava/lang/String;

.field final synthetic val$botUser:Ljava/lang/String;

.field final synthetic val$game:Ljava/lang/String;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$hasUrl:Z

.field final synthetic val$instantView:[Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$messageId:Ljava/lang/Integer;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$sticker:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 1480
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$10;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$10;->val$group:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$10;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$10;->val$sticker:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$10;->val$botUser:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$10;->val$botChat:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$10;->val$message:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/telegram/ui/LaunchActivity$10;->val$hasUrl:Z

    iput-object p10, p0, Lorg/telegram/ui/LaunchActivity$10;->val$messageId:Ljava/lang/Integer;

    iput-object p11, p0, Lorg/telegram/ui/LaunchActivity$10;->val$game:Ljava/lang/String;

    iput-object p12, p0, Lorg/telegram/ui/LaunchActivity$10;->val$instantView:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1483
    new-instance v0, Lorg/telegram/ui/LaunchActivity$10$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LaunchActivity$10$1;-><init>(Lorg/telegram/ui/LaunchActivity$10;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1538
    return-void
.end method
