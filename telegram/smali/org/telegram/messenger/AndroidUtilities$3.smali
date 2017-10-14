.class final Lorg/telegram/messenger/AndroidUtilities$3;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->access$102(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 764
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/AndroidUtilities$3;->val$number:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->access$000(ZLjava/lang/String;)V

    .line 765
    return-void
.end method
