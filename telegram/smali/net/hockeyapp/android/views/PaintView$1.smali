.class Lnet/hockeyapp/android/views/PaintView$1;
.super Landroid/os/AsyncTask;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/PaintView;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/PaintView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/PaintView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/views/PaintView;

    .prologue
    .line 142
    iput-object p1, p0, Lnet/hockeyapp/android/views/PaintView$1;->this$0:Lnet/hockeyapp/android/views/PaintView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v6, 0x0

    aget-object v1, p1, v6

    check-cast v1, Landroid/content/Context;

    .line 153
    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x1

    aget-object v5, p1, v6

    check-cast v5, Landroid/net/Uri;

    .line 154
    .local v5, "imageUri":Landroid/net/Uri;
    const/4 v6, 0x2

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Integer;

    .line 155
    .local v3, "displayWidth":Ljava/lang/Integer;
    const/4 v6, 0x3

    aget-object v2, p1, v6

    check-cast v2, Ljava/lang/Integer;

    .line 157
    .local v2, "displayHeight":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v5, v7, v8}, Lnet/hockeyapp/android/views/PaintView;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v4

    .line 160
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Could not load image into ImageView."

    invoke-static {v6, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/PaintView$1;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView$1;->this$0:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/views/PaintView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/PaintView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView$1;->this$0:Lnet/hockeyapp/android/views/PaintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/PaintView;->setAdjustViewBounds(Z)V

    .line 148
    return-void
.end method
