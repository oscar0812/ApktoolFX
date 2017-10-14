.class Lorg/telegram/ui/ThemeActivity$2$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemeActivity$2;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2$1;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    return-void
.end method
