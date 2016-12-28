.class Lcom/parse/ParseAWSRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAWSRequest;->onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseAWSRequest;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$response:Lcom/parse/a/c;


# direct methods
.method constructor <init>(Lcom/parse/ParseAWSRequest;Lcom/parse/a/c;Lcom/parse/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseAWSRequest$1;->this$0:Lcom/parse/ParseAWSRequest;

    iput-object p2, p0, Lcom/parse/ParseAWSRequest$1;->val$response:Lcom/parse/a/c;

    iput-object p3, p0, Lcom/parse/ParseAWSRequest$1;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseAWSRequest$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/parse/ParseAWSRequest$1;->val$response:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->c()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseAWSRequest$1;->val$response:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->b()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseAWSRequest$1;->this$0:Lcom/parse/ParseAWSRequest;

    # getter for: Lcom/parse/ParseAWSRequest;->tempFile:Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParseAWSRequest;->access$000(Lcom/parse/ParseAWSRequest;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    const v3, 0x8000

    new-array v3, v3, [B

    :cond_0
    :goto_0
    const/4 v8, 0x0

    array-length v9, v3

    invoke-virtual {v1, v3, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v4, v8

    iget-object v8, p0, Lcom/parse/ParseAWSRequest$1;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    long-to-float v8, v4

    long-to-float v9, v6

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/parse/ParseAWSRequest$1;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
