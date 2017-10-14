.class Lorg/telegram/ui/DataSettingsActivity$2$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DataSettingsActivity$2;

.field final synthetic val$maskValues:[Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DataSettingsActivity$2;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 208
    .local v3, "newMask":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v4, 0x7

    if-ge v0, v4, :cond_8

    .line 209
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 210
    if-nez v0, :cond_2

    .line 211
    or-int/lit8 v3, v3, 0x1

    .line 208
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "a":I
    .end local v3    # "newMask":I
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v3    # "newMask":I
    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 213
    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 214
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 215
    or-int/lit8 v3, v3, 0x40

    goto :goto_2

    .line 216
    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 217
    or-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 218
    :cond_5
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    .line 219
    or-int/lit8 v3, v3, 0x8

    goto :goto_2

    .line 220
    :cond_6
    const/4 v4, 0x5

    if-ne v0, v4, :cond_7

    .line 221
    or-int/lit8 v3, v3, 0x10

    goto :goto_2

    .line 222
    :cond_7
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 223
    or-int/lit8 v3, v3, 0x20

    goto :goto_2

    .line 227
    :cond_8
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 228
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_b

    .line 229
    const-string/jumbo v4, "mobileDataDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 238
    :cond_9
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 240
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 242
    :cond_a
    return-void

    .line 231
    :cond_b
    iget v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 232
    const-string/jumbo v4, "wifiDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto :goto_3

    .line 234
    :cond_c
    iget v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 235
    const-string/jumbo v4, "roamingDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_3
.end method
