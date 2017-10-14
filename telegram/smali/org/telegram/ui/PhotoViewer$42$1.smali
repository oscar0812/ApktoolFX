.class Lorg/telegram/ui/PhotoViewer$42$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$42;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$42;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$42;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$42;

    .prologue
    .line 3385
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$42$1;->this$1:Lorg/telegram/ui/PhotoViewer$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3388
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42$1;->this$1:Lorg/telegram/ui/PhotoViewer$42;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;I)V

    .line 3389
    return-void
.end method
