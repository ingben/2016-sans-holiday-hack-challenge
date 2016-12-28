.class Lcom/parse/ParseFileController$3$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFileController$3;->then(La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFileController$3;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/parse/ParseFileController$3;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iput-object p2, p0, Lcom/parse/ParseFileController$3$1;->val$tempFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cancellationToken:La/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cancellationToken:La/j;

    invoke-virtual {v0}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->val$tempFile:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    invoke-virtual {p1}, La/j;->j()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->val$tempFile:Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v1, v1, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController$3$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
