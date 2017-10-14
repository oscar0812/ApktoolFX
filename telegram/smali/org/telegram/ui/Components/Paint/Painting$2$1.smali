.class Lorg/telegram/ui/Components/Paint/Painting$2$1;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/Painting$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/Paint/Painting$2;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v5, 0x302

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$500(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Brush;->isLightSaber()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "compositeWithMaskLight"

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Paint/Shader;

    .line 228
    .local v11, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    if-eqz v11, :cond_0

    .line 232
    iget v2, v11, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 234
    const-string/jumbo v2, "mvpMatrix"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$700(Lorg/telegram/ui/Components/Paint/Painting;)[F

    move-result-object v3

    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v12, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 235
    const-string/jumbo v2, "mask"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 236
    const-string/jumbo v2, "color"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->val$color:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    .line 238
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 239
    const/16 v2, 0xde1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$200(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 241
    const/16 v2, 0x303

    invoke-static {v5, v2, v5, v12}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 243
    const/16 v2, 0x1406

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$1300(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/nio/ByteBuffer;

    move-result-object v5

    move v3, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 244
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 245
    const/16 v7, 0x1406

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$1400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move v5, v12

    move v6, v1

    move v8, v0

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 246
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 248
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0

    .line 227
    .end local v11    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_2
    const-string/jumbo v2, "compositeWithMask"

    goto/16 :goto_1
.end method
