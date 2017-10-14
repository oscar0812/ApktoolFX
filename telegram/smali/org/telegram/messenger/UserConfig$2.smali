.class final Lorg/telegram/messenger/UserConfig$2;
.super Ljava/lang/Object;
.source "UserConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/UserConfig;->loadConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lorg/telegram/messenger/UserConfig$2;->val$configFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/UserConfig$2;->val$configFile:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    .line 245
    return-void
.end method
