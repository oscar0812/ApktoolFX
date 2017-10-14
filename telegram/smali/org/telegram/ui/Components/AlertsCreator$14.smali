.class final Lorg/telegram/ui/Components/AlertsCreator$14;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$globalGroup:Z

.field final synthetic val$onSelect:Ljava/lang/Runnable;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([IJZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    iput-wide p2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$dialog_id:J

    iput-boolean p4, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$globalGroup:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 860
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v6

    .line 862
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 863
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 864
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$dialog_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 865
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    aget v2, v2, v6

    if-nez v2, :cond_2

    .line 866
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    const/4 v3, 0x3

    aput v3, v2, v6

    .line 870
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "priority_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 874
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 875
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_0

    .line 876
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    .line 878
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 881
    :cond_1
    return-void

    .line 868
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    aget v3, v2, v6

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v6

    goto :goto_0

    .line 872
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$globalGroup:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "priority_group"

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->val$selected:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "priority_messages"

    goto :goto_2
.end method
