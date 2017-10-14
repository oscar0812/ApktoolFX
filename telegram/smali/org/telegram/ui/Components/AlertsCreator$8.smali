.class final Lorg/telegram/ui/Components/AlertsCreator$8;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$onSelect:Ljava/lang/Runnable;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$prefKeyPrefix:Ljava/lang/String;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([IJLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    iput-wide p2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 625
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v6

    .line 627
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 628
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 629
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 630
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-nez v2, :cond_3

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 652
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_1

    .line 654
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    .line 656
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 657
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 659
    :cond_2
    return-void

    .line 632
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_4

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 634
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_5

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 636
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_0

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 640
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-nez v2, :cond_7

    .line 641
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 642
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_8

    .line 643
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 644
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_9

    .line 645
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 646
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_a

    .line 647
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 648
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v2, v2, v6

    if-ne v2, v10, :cond_0

    .line 649
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0
.end method
