.class public final Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xd
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;,
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$Api25InputContentInfoCompatImpl;,
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;,
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

.field public static INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastNMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$Api25InputContentInfoCompatImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$Api25InputContentInfoCompatImpl;-><init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;)V

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    .line 230
    :goto_0
    const/4 v0, 0x1

    sput v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I

    return-void

    .line 170
    :cond_0
    new-instance v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 8
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputContentInfo"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 189
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v2, 0x0

    .line 190
    .local v2, "supported":Z
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 191
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 192
    const/4 v2, 0x1

    .line 196
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 200
    :goto_1
    return v3

    .line 190
    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;->commitContent(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v3

    goto :goto_1
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 271
    if-nez p0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputConnection must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    if-nez p1, :cond_1

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "editorInfo must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    if-nez p2, :cond_2

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onCommitContentListener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    sget-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method
