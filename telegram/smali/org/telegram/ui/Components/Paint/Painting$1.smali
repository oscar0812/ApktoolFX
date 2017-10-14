.class Lorg/telegram/ui/Components/Paint/Painting$1;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting;->paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;

.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$clearBuffer:Z

.field final synthetic val$path:Lorg/telegram/ui/Components/Paint/Path;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$path:Lorg/telegram/ui/Components/Paint/Path;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$clearBuffer:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xde1

    const v7, 0x8d40

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$path:Lorg/telegram/ui/Components/Paint/Path;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$002(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;)Lorg/telegram/ui/Components/Paint/Path;

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$100(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v3

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 161
    const v3, 0x8ce0

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$200(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v4

    invoke-static {v7, v3, v8, v4, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 163
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    .line 165
    invoke-static {v7}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2

    .line 166
    .local v2, "status":I
    const v3, 0x8cd5

    if-ne v2, v3, :cond_4

    .line 167
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Size;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Size;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v4, v4

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 169
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$clearBuffer:Z

    if-eqz v3, :cond_0

    .line 170
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 171
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 174
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$500(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->isLightSaber()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "brushLight"

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Shader;

    .line 178
    .local v1, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    if-eqz v1, :cond_1

    .line 182
    iget v3, v1, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 183
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$600(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Texture;

    move-result-object v3

    if-nez v3, :cond_3

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Texture;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Painting;->access$500(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Brush;->getStamp()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$602(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Texture;)Lorg/telegram/ui/Components/Paint/Texture;

    .line 186
    :cond_3
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 187
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$600(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v3

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    const-string/jumbo v3, "mvpMatrix"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Painting;->access$700(Lorg/telegram/ui/Components/Paint/Painting;)[F

    move-result-object v5

    invoke-static {v5}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 189
    const-string/jumbo v3, "texture"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 191
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$path:Lorg/telegram/ui/Components/Paint/Path;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$800(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderState;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Paint/Render;->RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;

    move-result-object v0

    .line 194
    .end local v1    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_4
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 196
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 197
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged(Landroid/graphics/RectF;)V

    .line 200
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$1000(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 201
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$1000(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 206
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$action:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 177
    :cond_6
    const-string/jumbo v3, "brush"

    goto/16 :goto_1

    .line 203
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$1;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$1002(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_2
.end method
