.class public final Landroid/support/v13/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xd
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;,
        Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;,
        Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;
    }
.end annotation


# static fields
.field private static IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;


# instance fields
.field private mDragAndDropPermissions:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v1, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    invoke-interface {v1, p0, p1}, Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "dragAndDropPermissions":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Landroid/support/v13/view/DragAndDropPermissionsCompat;

    invoke-direct {v1, v0}, Landroid/support/v13/view/DragAndDropPermissionsCompat;-><init>(Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    iget-object v1, p0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;->release(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
