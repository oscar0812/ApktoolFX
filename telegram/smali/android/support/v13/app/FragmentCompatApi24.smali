.class Landroid/support/v13/app/FragmentCompatApi24;
.super Ljava/lang/Object;
.source "FragmentCompatApi24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "isVisible"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 29
    return-void
.end method
