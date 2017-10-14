.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$4"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;

    .prologue
    .line 1656
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3302(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 1660
    return-void
.end method
