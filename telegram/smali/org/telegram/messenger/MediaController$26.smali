.class final Lorg/telegram/messenger/MediaController$26;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelled:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 3417
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$26;->val$cancelled:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3420
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$26;->val$cancelled:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 3421
    return-void
.end method
