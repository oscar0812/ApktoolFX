.class Lorg/telegram/ui/PhotoViewer$21$6;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$21;

.field final synthetic val$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$21;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$21;

    .prologue
    .line 2320
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$21$6;->this$1:Lorg/telegram/ui/PhotoViewer$21;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$21$6;->val$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2323
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$21$6;->val$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 2324
    return-void
.end method
