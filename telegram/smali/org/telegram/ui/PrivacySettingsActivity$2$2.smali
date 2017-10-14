.class Lorg/telegram/ui/PrivacySettingsActivity$2$2;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PrivacySettingsActivity$2;

    .prologue
    .line 283
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$2;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 286
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 287
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 288
    .local v1, "num":I
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$2;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)[Z

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$2;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    aput-boolean v2, v4, v1

    .line 289
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$2;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 290
    return-void

    .line 288
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
