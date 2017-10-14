.class Lorg/telegram/ui/Components/SharingLocationsAlert$6;
.super Ljava/lang/Object;
.source "SharingLocationsAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharingLocationsAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$6;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$6;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->dismiss()V

    .line 196
    return-void
.end method
