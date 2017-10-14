.class final Lorg/telegram/ui/Components/AlertsCreator$5;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$globalAll:Z

.field final synthetic val$globalGroup:Z

.field final synthetic val$onSelect:Ljava/lang/Runnable;

.field final synthetic val$selectedColor:[I


# direct methods
.method constructor <init>(Z[IZJLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 514
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$globalAll:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$selectedColor:[I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$globalGroup:Z

    iput-wide p4, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$dialog_id:J

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 517
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 518
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 519
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$globalAll:Z

    if-eqz v2, :cond_1

    .line 520
    const-string/jumbo v2, "MessagesLed"

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$selectedColor:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 526
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 530
    :cond_0
    return-void

    .line 521
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$globalGroup:Z

    if-eqz v2, :cond_2

    .line 522
    const-string/jumbo v2, "GroupLed"

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$selectedColor:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 524
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$selectedColor:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
