.class Lorg/telegram/ui/VoIPPermissionActivity$1;
.super Ljava/lang/Object;
.source "VoIPPermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPPermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPPermissionActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPPermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPPermissionActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/ui/VoIPPermissionActivity$1;->this$0:Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/VoIPPermissionActivity$1;->this$0:Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPPermissionActivity;->finish()V

    .line 40
    return-void
.end method
