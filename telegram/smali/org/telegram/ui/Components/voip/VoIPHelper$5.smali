.class final Lorg/telegram/ui/Components/voip/VoIPHelper$5;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper;->showRateAlert(Landroid/content/Context;Ljava/lang/Runnable;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field final synthetic val$includeLogs:[Z


# direct methods
.method constructor <init>([ZLorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$5;->val$includeLogs:[Z

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$5;->val$checkbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$5;->val$includeLogs:[Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$5;->val$includeLogs:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$5;->val$checkbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$5;->val$includeLogs:[Z

    aget-boolean v2, v3, v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 245
    return-void

    :cond_0
    move v0, v2

    .line 243
    goto :goto_0
.end method
