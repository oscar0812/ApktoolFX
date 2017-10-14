.class final Lorg/telegram/ui/Components/AlertsCreator$6;
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


# direct methods
.method constructor <init>(ZZJLjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 532
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalAll:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalGroup:Z

    iput-wide p3, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$dialog_id:J

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 535
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 536
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 537
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalAll:Z

    if-eqz v2, :cond_1

    .line 538
    const-string/jumbo v2, "MessagesLed"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 544
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 546
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 548
    :cond_0
    return-void

    .line 539
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalGroup:Z

    if-eqz v2, :cond_2

    .line 540
    const-string/jumbo v2, "GroupLed"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 542
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
