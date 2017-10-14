.class final Lcom/google/android/gms/common/internal/zzv;
.super Lcom/google/android/gms/common/internal/zzt;


# instance fields
.field private synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field private synthetic val$intent:Landroid/content/Intent;

.field private synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/support/v4/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzv;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzv;->val$fragment:Landroid/support/v4/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzv;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzrv()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzv;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzv;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzv;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzv;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
