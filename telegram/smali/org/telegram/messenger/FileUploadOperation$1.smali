.class Lorg/telegram/messenger/FileUploadOperation$1;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$1;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$1;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "uploadinfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileUploadOperation;->access$002(Lorg/telegram/messenger/FileUploadOperation;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 106
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$1;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$100(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method
